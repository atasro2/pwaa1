// Copyright (c) 2015 YamaArashi

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <stdbool.h>
#include <string.h>
#include "global.h"
#include "convert_png.h"
#include "gfx.h"
#include "util.h"
#include "jasc_pal.h"
#include "lz.h"

#define GET_GBA_PAL_RED(x) (((x) >> 0) & 0x1F)
#define GET_GBA_PAL_GREEN(x) (((((x) >> 5) & 0x1F) << 1) | (((x) >> 15) & 1))
#define GET_GBA_PAL_BLUE(x) (((x) >> 10) & 0x1F)

#define SET_GBA_PAL(r, g, b) ((((g) & 1) << 15) | ((b) << 10) | (((g) >> 1) << 5) | (r))

#define UPCONVERT_BIT_DEPTH(x) ((x) * 255 / 31)
#define UPCONVERT_BIT_DEPTH_GREEN(x) ((x) * 255 / 63)

#define DOWNCONVERT_BIT_DEPTH(x) ((x) / 8)
#define DOWNCONVERT_BIT_DEPTH_GREEN(x) ((x) / 4)

void ReadGbaPaletteBuffer(unsigned char *buffer, int fileSize, struct Palette *palette)
{
	unsigned char *data = buffer;

	if (fileSize % 2 != 0)
		FATAL_ERROR("The file size (%d) is not a multiple of 2.\n", fileSize);

	palette->numColors = fileSize / 2;

	for (int i = 0; i < palette->numColors; i++)
	{
		uint16_t paletteEntry = (data[i * 2 + 1] << 8) | data[i * 2];
		palette->colors[i].red = UPCONVERT_BIT_DEPTH(GET_GBA_PAL_RED(paletteEntry));
		palette->colors[i].green = UPCONVERT_BIT_DEPTH_GREEN(GET_GBA_PAL_GREEN(paletteEntry));
		palette->colors[i].blue = UPCONVERT_BIT_DEPTH(GET_GBA_PAL_BLUE(paletteEntry));
	}
}

unsigned char *GetGbaPalette(struct Palette *palette)
{
	int palSize;
	palSize = palette->numColors * 2;
	unsigned char *palbuf = malloc(palSize);
	if (palbuf == NULL)
		FATAL_ERROR("Failed to allocate buffer for gba palette\n");
	unsigned char *tmpbuf = palbuf;

	for (int i = 0; i < palette->numColors; i++)
	{
		unsigned char red = DOWNCONVERT_BIT_DEPTH(palette->colors[i].red);
		unsigned char green = DOWNCONVERT_BIT_DEPTH_GREEN(palette->colors[i].green);
		unsigned char blue = DOWNCONVERT_BIT_DEPTH(palette->colors[i].blue);

		uint16_t paletteEntry = SET_GBA_PAL(red, green, blue);

		*tmpbuf++ = paletteEntry & 0xFF;
		*tmpbuf++ = (paletteEntry >> 8);
	}

	return palbuf;
}

static void AdvanceMetatilePosition(int *subTileX, int *subTileY, int *metatileX, int *metatileY, int metatilesWide, int metatileWidth, int metatileHeight)
{
	(*subTileX)++;
	if (*subTileX == metatileWidth)
	{
		*subTileX = 0;
		(*subTileY)++;
		if (*subTileY == metatileHeight)
		{
			*subTileY = 0;
			(*metatileX)++;
			if (*metatileX == metatilesWide)
			{
				*metatileX = 0;
				(*metatileY)++;
			}
		}
	}
}

static void ConvertFromTiles1Bpp(unsigned char *src, unsigned char *dest, int numTiles, int metatilesWide, int metatileWidth, int metatileHeight, bool invertColors)
{
	int subTileX = 0;
	int subTileY = 0;
	int metatileX = 0;
	int metatileY = 0;
	int pitch = metatilesWide * metatileWidth;

	for (int i = 0; i < numTiles; i++)
	{
		for (int j = 0; j < 8; j++)
		{
			int destY = (metatileY * metatileHeight + subTileY) * 8 + j;
			int destX = metatileX * metatileWidth + subTileX;
			unsigned char srcPixelOctet = *src++;
			unsigned char *destPixelOctet = &dest[destY * pitch + destX];

			for (int k = 0; k < 8; k++)
			{
				*destPixelOctet <<= 1;
				*destPixelOctet |= (srcPixelOctet & 1) ^ invertColors;
				srcPixelOctet >>= 1;
			}
		}

		AdvanceMetatilePosition(&subTileX, &subTileY, &metatileX, &metatileY, metatilesWide, metatileWidth, metatileHeight);
	}
}

static void ConvertFromTiles4Bpp(unsigned char *src, unsigned char *dest, int numTiles, int metatilesWide, int metatileWidth, int metatileHeight, bool invertColors)
{
	int subTileX = 0;
	int subTileY = 0;
	int metatileX = 0;
	int metatileY = 0;
	int pitch = (metatilesWide * metatileWidth) * 4;

	for (int i = 0; i < numTiles; i++)
	{
		for (int j = 0; j < 8; j++)
		{
			int destY = (metatileY * metatileHeight + subTileY) * 8 + j;

			for (int k = 0; k < 4; k++)
			{
				int destX = (metatileX * metatileWidth + subTileX) * 4 + k;
				unsigned char srcPixelPair = *src++;
				unsigned char leftPixel = srcPixelPair & 0xF;
				unsigned char rightPixel = srcPixelPair >> 4;

				if (invertColors)
				{
					leftPixel = 15 - leftPixel;
					rightPixel = 15 - rightPixel;
				}

				dest[destY * pitch + destX] = (leftPixel << 4) | rightPixel;
			}
		}

		AdvanceMetatilePosition(&subTileX, &subTileY, &metatileX, &metatileY, metatilesWide, metatileWidth, metatileHeight);
	}
}

static void ConvertFromTiles8Bpp(unsigned char *src, unsigned char *dest, int numTiles, int metatilesWide, int metatileWidth, int metatileHeight, bool invertColors)
{
	int subTileX = 0;
	int subTileY = 0;
	int metatileX = 0;
	int metatileY = 0;
	int pitch = (metatilesWide * metatileWidth) * 8;

	for (int i = 0; i < numTiles; i++)
	{
		for (int j = 0; j < 8; j++)
		{
			int destY = (metatileY * metatileHeight + subTileY) * 8 + j;

			for (int k = 0; k < 8; k++)
			{
				int destX = (metatileX * metatileWidth + subTileX) * 8 + k;
				unsigned char srcPixel = *src++;

				if (invertColors)
					srcPixel = 255 - srcPixel;

				dest[destY * pitch + destX] = srcPixel;
			}
		}

		AdvanceMetatilePosition(&subTileX, &subTileY, &metatileX, &metatileY, metatilesWide, metatileWidth, metatileHeight);
	}
}

static void ConvertToTiles1Bpp(unsigned char *src, unsigned char *dest, int numTiles, int metatilesWide, int metatileWidth, int metatileHeight, bool invertColors)
{
	int subTileX = 0;
	int subTileY = 0;
	int metatileX = 0;
	int metatileY = 0;
	int pitch = metatilesWide * metatileWidth;

	for (int i = 0; i < numTiles; i++)
	{
		for (int j = 0; j < 8; j++)
		{
			int srcY = (metatileY * metatileHeight + subTileY) * 8 + j;
			int srcX = metatileX * metatileWidth + subTileX;
			unsigned char srcPixelOctet = src[srcY * pitch + srcX];
			unsigned char *destPixelOctet = dest++;

			for (int k = 0; k < 8; k++)
			{
				*destPixelOctet <<= 1;
				*destPixelOctet |= (srcPixelOctet & 1) ^ invertColors;
				srcPixelOctet >>= 1;
			}
		}

		AdvanceMetatilePosition(&subTileX, &subTileY, &metatileX, &metatileY, metatilesWide, metatileWidth, metatileHeight);
	}
}

static void ConvertToTiles4Bpp(unsigned char *src, unsigned char *dest, int numTiles, int metatilesWide, int metatileWidth, int metatileHeight, bool invertColors)
{
	int subTileX = 0;
	int subTileY = 0;
	int metatileX = 0;
	int metatileY = 0;
	int pitch = (metatilesWide * metatileWidth) * 4;

	for (int i = 0; i < numTiles; i++)
	{
		for (int j = 0; j < 8; j++)
		{
			int srcY = (metatileY * metatileHeight + subTileY) * 8 + j;

			for (int k = 0; k < 4; k++)
			{
				int srcX = (metatileX * metatileWidth + subTileX) * 4 + k;
				unsigned char srcPixelPair = src[srcY * pitch + srcX];
				unsigned char leftPixel = srcPixelPair >> 4;
				unsigned char rightPixel = srcPixelPair & 0xF;

				if (invertColors)
				{
					leftPixel = 15 - leftPixel;
					rightPixel = 15 - rightPixel;
				}

				*dest++ = (rightPixel << 4) | leftPixel;
			}
		}

		AdvanceMetatilePosition(&subTileX, &subTileY, &metatileX, &metatileY, metatilesWide, metatileWidth, metatileHeight);
	}
}

static void ConvertToTiles8Bpp(unsigned char *src, unsigned char *dest, int numTiles, int metatilesWide, int metatileWidth, int metatileHeight, bool invertColors)
{
	int subTileX = 0;
	int subTileY = 0;
	int metatileX = 0;
	int metatileY = 0;
	int pitch = (metatilesWide * metatileWidth) * 8;

	for (int i = 0; i < numTiles; i++)
	{
		for (int j = 0; j < 8; j++)
		{
			int srcY = (metatileY * metatileHeight + subTileY) * 8 + j;

			for (int k = 0; k < 8; k++)
			{
				int srcX = (metatileX * metatileWidth + subTileX) * 8 + k;
				unsigned char srcPixel = src[srcY * pitch + srcX];

				if (invertColors)
					srcPixel = 255 - srcPixel;

				*dest++ = srcPixel;
			}
		}

		AdvanceMetatilePosition(&subTileX, &subTileY, &metatileX, &metatileY, metatilesWide, metatileWidth, metatileHeight);
	}
}

void ReadImage(char *path, int tilesWidth, int bitDepth, int metatileWidth, int metatileHeight, struct Image *image, bool invertColors)
{
	int tileSize = bitDepth * 8;

	int fileSize;
	unsigned char *buffer = ReadWholeFile(path, &fileSize);

	int numTiles = fileSize / tileSize;

	int tilesHeight = (numTiles + tilesWidth - 1) / tilesWidth;

	if (tilesWidth % metatileWidth != 0)
		FATAL_ERROR("The width in tiles (%d) isn't a multiple of the specified metatile width (%d)", tilesWidth, metatileWidth);

	if (tilesHeight % metatileHeight != 0)
		FATAL_ERROR("The height in tiles (%d) isn't a multiple of the specified metatile height (%d)", tilesHeight, metatileHeight);

	image->width = tilesWidth * 8;
	image->height = tilesHeight * 8;
	image->bitDepth = bitDepth;
	image->pixels = calloc(tilesWidth * tilesHeight, tileSize);

	if (image->pixels == NULL)
		FATAL_ERROR("Failed to allocate memory for pixels.\n");

	int metatilesWide = tilesWidth / metatileWidth;

	switch (bitDepth)
	{
	case 1:
		ConvertFromTiles1Bpp(buffer, image->pixels, numTiles, metatilesWide, metatileWidth, metatileHeight, invertColors);
		break;
	case 4:
		ConvertFromTiles4Bpp(buffer, image->pixels, numTiles, metatilesWide, metatileWidth, metatileHeight, invertColors);
		break;
	case 8:
		ConvertFromTiles8Bpp(buffer, image->pixels, numTiles, metatilesWide, metatileWidth, metatileHeight, invertColors);
		break;
	}

	free(buffer);
}

void ReadGyaStripeImage(char *path, int tilesWidth, int bitDepth, int metatileWidth, int metatileHeight, struct Image *image, bool invertColors) // don't you DARE touch this function without knowing what the heck it's actually doing because it is a jumbled mess that even i (MCboy) can't read properly
{
	int tileSize = bitDepth * 8;
	int palSize;

	switch (bitDepth)
	{
	case 4:
		palSize = 0x20;
		break;
	case 8:
		palSize = 0x200;
		break;
	default:
		FATAL_ERROR("NO\n");
		break;
	}

	int fileSize;
	unsigned char *buffer = ReadWholeFile(path, &fileSize);
	unsigned char *palBuffer = malloc(palSize);
	unsigned int *buffercopy = (unsigned int *)buffer;
	unsigned char *buffercopy2 = buffer;
	unsigned char paloffset;
	unsigned int stripeoffsets[10];
	unsigned char * stripes[10];
	int stripeSizes[10];
	int fullUncompressedSize = 0;

	paloffset = *buffercopy++;
	stripeoffsets[0] = paloffset + palSize;
	for (int i = 0; i < 9; i++)
	{
		stripeoffsets[i + 1] = *buffercopy++;
	}
	buffercopy2 += paloffset;
	memcpy(palBuffer, buffercopy2, palSize);
	buffercopy2 += palSize;
	ReadGbaPaletteBuffer(palBuffer, palSize, &image->palette);
	for (int i = 0; i < 10; i++)
	{
		unsigned int compstripesize = 0;
		unsigned int stripesize = 0;

		if(i == 9)
			compstripesize = fileSize - stripeoffsets[i];
		else
			compstripesize = stripeoffsets[i+1] - stripeoffsets[i]; // we don't want UB BS here so we add this if statement!
		stripes[i] = unpackBuffer(buffercopy2, &stripesize, compstripesize);
		stripeSizes[i] = stripesize;
		fullUncompressedSize += stripesize;
		buffercopy2 += compstripesize; // increment pointer to next stripe
	}
	unsigned char * fullBuffer = malloc(fullUncompressedSize);
	if (fullBuffer == NULL)
	{
		FATAL_ERROR("FUCK\n");
	}
	
	unsigned char * temp = fullBuffer;
	for (int i = 0; i < 10; i++)
	{
		memcpy(temp, stripes[i], stripeSizes[i]);
		temp += stripeSizes[i];
	}
	
	int numTiles = fullUncompressedSize / tileSize;

	int tilesHeight = (numTiles + tilesWidth - 1) / tilesWidth;

	if (tilesWidth % metatileWidth != 0)
		FATAL_ERROR("The width in tiles (%d) isn't a multiple of the specified metatile width (%d)", tilesWidth, metatileWidth);

	if (tilesHeight % metatileHeight != 0)
		FATAL_ERROR("The height in tiles (%d) isn't a multiple of the specified metatile height (%d)", tilesHeight, metatileHeight);

	image->width = tilesWidth * 8;
	image->height = tilesHeight * 8;
	image->bitDepth = bitDepth;
	image->pixels = calloc(tilesWidth * tilesHeight, tileSize);

	if (image->pixels == NULL)
		FATAL_ERROR("Failed to allocate memory for pixels.\n");

	int metatilesWide = tilesWidth / metatileWidth;

	switch (bitDepth)
	{
	case 1:
		ConvertFromTiles1Bpp(fullBuffer, image->pixels, numTiles, metatilesWide, metatileWidth, metatileHeight, invertColors);
		break;
	case 4:
		ConvertFromTiles4Bpp(fullBuffer, image->pixels, numTiles, metatilesWide, metatileWidth, metatileHeight, invertColors);
		break;
	case 8:
		ConvertFromTiles8Bpp(fullBuffer, image->pixels, numTiles, metatilesWide, metatileWidth, metatileHeight, invertColors);
		break;
	}

	free(buffer);
}

void WriteImage(char *path, int numTiles, int bitDepth, int metatileWidth, int metatileHeight, struct Image *image, bool invertColors)
{
	int tileSize = bitDepth * 8;

	if (image->width % 8 != 0)
		FATAL_ERROR("The width in pixels (%d) isn't a multiple of 8.\n", image->width);

	if (image->height % 8 != 0)
		FATAL_ERROR("The height in pixels (%d) isn't a multiple of 8.\n", image->height);

	int tilesWidth = image->width / 8;
	int tilesHeight = image->height / 8;

	if (tilesWidth % metatileWidth != 0)
		FATAL_ERROR("The width in tiles (%d) isn't a multiple of the specified metatile width (%d)", tilesWidth, metatileWidth);

	if (tilesHeight % metatileHeight != 0)
		FATAL_ERROR("The height in tiles (%d) isn't a multiple of the specified metatile height (%d)", tilesHeight, metatileHeight);

	int maxNumTiles = tilesWidth * tilesHeight;

	if (numTiles == 0)
		numTiles = maxNumTiles;
	else if (numTiles > maxNumTiles)
		FATAL_ERROR("The specified number of tiles (%d) is greater than the maximum possible value (%d).\n", numTiles, maxNumTiles);

	int bufferSize = numTiles * tileSize;
	unsigned char *buffer = malloc(bufferSize);

	if (buffer == NULL)
		FATAL_ERROR("Failed to allocate memory for pixels.\n");

	int metatilesWide = tilesWidth / metatileWidth;

	switch (bitDepth)
	{
	case 1:
		ConvertToTiles1Bpp(image->pixels, buffer, numTiles, metatilesWide, metatileWidth, metatileHeight, invertColors);
		break;
	case 4:
		ConvertToTiles4Bpp(image->pixels, buffer, numTiles, metatilesWide, metatileWidth, metatileHeight, invertColors);
		break;
	case 8:
		ConvertToTiles8Bpp(image->pixels, buffer, numTiles, metatilesWide, metatileWidth, metatileHeight, invertColors);
		break;
	}

	WriteWholeFile(path, buffer, bufferSize);

	free(buffer);
}

static void ConvertToStripes4Bpp(unsigned char *src, unsigned char *dest, int metatilesWide, int metatileWidth, int metatileHeight, bool invertColors, int stripeNum)
{
	int subTileX = 0;
	int subTileY = 0;
	int metatileX = 0;
	int metatileY = 0;
	int pitch = (metatilesWide * metatileWidth) * 4;

	for (int i = 0; i < (metatileWidth * metatileHeight) * stripeNum; i++)
		AdvanceMetatilePosition(&subTileX, &subTileY, &metatileX, &metatileY, metatilesWide, metatileWidth, metatileHeight);

	for (int i = 0; i < metatileWidth * metatileHeight; i++)
	{
		for (int j = 0; j < 8; j++)
		{
			int srcY = (metatileY * metatileHeight + subTileY) * 8 + j;

			for (int k = 0; k < 4; k++)
			{
				int srcX = (metatileX * metatileWidth + subTileX) * 4 + k;
				unsigned char srcPixelPair = src[srcY * pitch + srcX];
				unsigned char leftPixel = srcPixelPair >> 4;
				unsigned char rightPixel = srcPixelPair & 0xF;

				if (invertColors)
				{
					leftPixel = 15 - leftPixel;
					rightPixel = 15 - rightPixel;
				}

				*dest++ = (rightPixel << 4) | leftPixel;
			}
		}

		AdvanceMetatilePosition(&subTileX, &subTileY, &metatileX, &metatileY, metatilesWide, metatileWidth, metatileHeight);
	}
}

static void ConvertToStripes8Bpp(unsigned char *src, unsigned char *dest, int metatilesWide, int metatileWidth, int metatileHeight, bool invertColors, int stripeNum)
{
	int subTileX = 0;
	int subTileY = 0;
	int metatileX = 0;
	int metatileY = 0;
	int pitch = (metatilesWide * metatileWidth) * 8;

	for (int i = 0; i < (metatileWidth * metatileHeight) * stripeNum; i++)
		AdvanceMetatilePosition(&subTileX, &subTileY, &metatileX, &metatileY, metatilesWide, metatileWidth, metatileHeight);

	for (int i = 0; i < metatileWidth * metatileHeight; i++)
	{
		for (int j = 0; j < 8; j++)
		{
			int srcY = (metatileY * metatileHeight + subTileY) * 8 + j;

			for (int k = 0; k < 8; k++)
			{
				int srcX = (metatileX * metatileWidth + subTileX) * 8 + k;
				unsigned char srcPixel = src[srcY * pitch + srcX];

				if (invertColors)
					srcPixel = 255 - srcPixel;

				*dest++ = srcPixel;
			}
		}

		AdvanceMetatilePosition(&subTileX, &subTileY, &metatileX, &metatileY, metatilesWide, metatileWidth, metatileHeight);
	}
}

// i might have gotten a bunch of names wrong here but it works ¯\_(ツ)_/¯
void WriteStripedImage(char *path, int numTiles, int bitDepth, int metatileWidth, int metatileHeight, struct Image *image, bool invertColors, char *palettePath, struct Palette *palette)
{
	int tileSize = bitDepth * 8;

	if (image->width % 8 != 0)
		FATAL_ERROR("The width in pixels (%d) isn't a multiple of 8.\n", image->width);

	if (image->height % 8 != 0)
		FATAL_ERROR("The height in pixels (%d) isn't a multiple of 8.\n", image->height);

	int tilesWidth = image->width / 8;
	int tilesHeight = image->height / 8;

	if (metatileWidth == 1 && metatileHeight == 1)
	{
		if (tilesHeight % 10 != 0)
			FATAL_ERROR("the provided image's height in tiles must divisible by 10\n");

		metatileWidth = tilesWidth;
		metatileHeight = tilesHeight / 10;
	}
	else
	{
		if (metatileHeight % 10 != 0)
			FATAL_ERROR("the provided image's metatile height must divisible by 10\n");

		metatileHeight /= 10;
	}

	if (tilesWidth % metatileWidth != 0)
		FATAL_ERROR("The width in tiles (%d) isn't a multiple of the specified metatile width (%d)", tilesWidth, metatileWidth);

	if (tilesHeight % metatileHeight != 0)
		FATAL_ERROR("The height in tiles (%d) isn't a multiple of the specified metatile height (%d)", tilesHeight, metatileHeight);

	int maxNumTiles = tilesWidth * tilesHeight;

	if (numTiles == 0)
		numTiles = maxNumTiles;
	else if (numTiles > maxNumTiles)
		FATAL_ERROR("The specified number of tiles (%d) is greater than the maximum possible value (%d).\n", numTiles, maxNumTiles);

	int bufferSize = metatileWidth * metatileHeight * tileSize;
	unsigned char *buffer[10];
	unsigned char *compressedData[10];
	int compressedSize[10];

	for (int i = 0; i < 10; i++)
	{

		buffer[i] = malloc(bufferSize);
		if (buffer[i] == NULL)
		{
			FATAL_ERROR("Failed to allocate memory for stripe pixel buffer #%d size (%d).\n", i, bufferSize);
		}
	}

	int metatilesWide = tilesWidth / metatileWidth;

	int palSize;

	switch (bitDepth)
	{
	case 1:
		FATAL_ERROR("There is no support for 1bpp striped images at the moment\n");
		//ConvertToTiles1Bpp(image->pixels, buffer, numTiles, metatilesWide, metatileWidth, metatileHeight, invertColors);
		break;
	case 4:
		palSize = 0x20;
		for (int i = 0; i < 10; i++)
		{
			ConvertToStripes4Bpp(image->pixels, buffer[i], metatilesWide, metatileWidth, metatileHeight, invertColors, i);
			compressedData[i] = LZCompress(buffer[i], bufferSize, &compressedSize[i], 1);
			compressedData[i][1] = (unsigned char)bufferSize;
			compressedData[i][2] = (unsigned char)(bufferSize >> 8);
			compressedData[i][3] = (unsigned char)(bufferSize >> 16);
		}
		break;
	case 8:
		palSize = 0x200;
		for (int i = 0; i < 10; i++)
		{
			ConvertToStripes8Bpp(image->pixels, buffer[i], metatilesWide, metatileWidth, metatileHeight, invertColors, i);
			compressedData[i] = LZCompress(buffer[i], bufferSize, &compressedSize[i], 1);
			compressedData[i][1] = (unsigned char)bufferSize;
			compressedData[i][2] = (unsigned char)(bufferSize >> 8);
			compressedData[i][3] = (unsigned char)(bufferSize >> 16);
		}
		break;
	}
	for (int i = 0; i < 10; i++)
	{
		free(buffer[i]);
	}

	unsigned char *paletteBuf;

	if (palettePath != NULL)
	{
		paletteBuf = ReadWholeFile(palettePath, &palSize);
	}
	else
	{
		paletteBuf = GetGbaPalette(palette);
	}

	int fileSize = palSize + 0x28;

	for (int i = 0; i < 10; i++)
	{
		int tmpsize = compressedSize[i];
		fileSize += tmpsize;
	}

	unsigned char *fileBuffer = malloc(fileSize);

	if (fileBuffer == NULL)
	{
		FATAL_ERROR("Failed to allocate memory for striped image file buffer of size (%d)\n", fileSize);
	}

	unsigned char *copFileBuf = fileBuffer;
	unsigned char *copyPalBuf = paletteBuf;
	unsigned int prevOffset;

	unsigned int *buf = (unsigned int *)copFileBuf;

	for (unsigned int i = 0; i < 10; i++)
	{
		int size;
		if (i != 0)
			size = compressedSize[i - 1];
		else
			*buf++ = 0x28;

		if (i == 1)
			*buf++ = 0x28 + palSize + size;
		else if (i != 0)
			*buf++ = prevOffset + size;
		if (i != 0)
			prevOffset = *(buf - 1);
	}

	copFileBuf = (unsigned char *)buf;

	for (int i = 0; i < palSize; i++)
	{
		*copFileBuf++ = *copyPalBuf++;
	}

	for (int i = 0; i < 10; i++)
	{
		unsigned char *compCopBuf = compressedData[i];
		int size = compressedSize[i];

		for (int i = 0; i < size; i++)
		{
			*copFileBuf++ = *compCopBuf++;
		}
	}

	WriteWholeFile(path, fileBuffer, fileSize);

	free(fileBuffer);
	free(paletteBuf);

	for (int i = 0; i < 10; i++)
	{
		free(compressedData[i]);
	}
}

void FreeImage(struct Image *image)
{
	free(image->pixels);
	image->pixels = NULL;
}

void ReadGbaPalette(char *path, struct Palette *palette)
{
	int fileSize;
	unsigned char *data = ReadWholeFile(path, &fileSize);

	if (fileSize % 2 != 0)
		FATAL_ERROR("The file size (%d) is not a multiple of 2.\n", fileSize);

	palette->numColors = fileSize / 2;

	for (int i = 0; i < palette->numColors; i++)
	{
		uint16_t paletteEntry = (data[i * 2 + 1] << 8) | data[i * 2];
		palette->colors[i].red = UPCONVERT_BIT_DEPTH(GET_GBA_PAL_RED(paletteEntry));
		palette->colors[i].green = UPCONVERT_BIT_DEPTH_GREEN(GET_GBA_PAL_GREEN(paletteEntry));
		palette->colors[i].blue = UPCONVERT_BIT_DEPTH(GET_GBA_PAL_BLUE(paletteEntry));
	}

	free(data);
}

void WriteGbaPalette(char *path, struct Palette *palette)
{
	FILE *fp = fopen(path, "wb");

	if (fp == NULL)
		FATAL_ERROR("Failed to open \"%s\" for writing.\n", path);

	for (int i = 0; i < palette->numColors; i++)
	{
		unsigned char red = DOWNCONVERT_BIT_DEPTH(palette->colors[i].red);
		unsigned char green = DOWNCONVERT_BIT_DEPTH_GREEN(palette->colors[i].green);
		unsigned char blue = DOWNCONVERT_BIT_DEPTH(palette->colors[i].blue);

		uint16_t paletteEntry = SET_GBA_PAL(red, green, blue);

		fputc(paletteEntry & 0xFF, fp);
		fputc(paletteEntry >> 8, fp);
	}

	fclose(fp);
}