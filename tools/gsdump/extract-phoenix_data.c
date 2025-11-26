#include <errno.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>

#define BREAK(...) do { printf(__VA_ARGS__); return 1; } while (0)
#define VOIDBREAK(...) do { printf(__VA_ARGS__); return; } while (0)

#ifdef _WIN32
#include <direct.h>
#define createDirectory(dirname) _mkdir((dirname))
#else
#include <sys/stat.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>
#define createDirectory(dirname) mkdir((dirname), 0777)
#endif

typedef struct {
	uint32_t offset;
	uint32_t size;
}__attribute__((packed)) pacEntry;

typedef struct {
	unsigned char magic[4];
	uint32_t headerSize;
	uint32_t imageSize;
	uint32_t paletteOffset;
	uint32_t paletteSize;
}__attribute__((packed)) controlHeader;

typedef struct {
	unsigned int fileoffset;
	unsigned int filesize;
	char *palpath;
	char *gfxpath;
	char *extraargs;
	char *gbagfx;
} outputinfo;

static const char *typestring[] = {
	"rawdump", "compressedgraphics", "stripedgraphics", "patchgraphics", "uncompressedheadergraphics", "gbagfx1", "gbagfx2"
};

// Ensures that a file can be created at the path `path` by creating all the intermediate
// directories. Forward slashes only, will silently fail if an error occurs.
// I have no idea if it works on absolute paths or not, it seems more targeted towards relative.
static void makepath(const char *path) {
	FILE *tmp = NULL;
	
	// If we can create the file, we're good already
	if ((tmp = fopen(path, "wb"))) {
		// If closing and deleting the file has any issues, it's the caller's job to notice
		fclose(tmp);
		remove(path);
		return;
	}

	// bakpath is zero-initialized by strncpy.
	char bakpath[2048];
	char curpath[2048] = {0};
	char *token = NULL;
	
	strncpy(bakpath, path, sizeof(bakpath));
	if (bakpath[sizeof(bakpath) - 1] != 0) {
		// This will never happen... but if I ever get around to making long paths okay, I want
		// this reminder.
		printf("%s: '%s' is too long for this program\n", __func__, path);
		return;
	}
	
	token = strtok(bakpath, "/");
	strcpy(curpath, token);
	
	do {
		// Failure conditions for createDirectory are that the parent directory doesn't exist
		// (impossible because we stopped at the first /) or that the directory already exists
		// (which we're fine with).
		// If there's a file with that name, that could also cause issues, but the caller will take
		// care of that when the file fails to open.
		createDirectory(curpath);
		//~ printf("creating directory %s\n", curpath);
		strcat(curpath, "/");
		token = strtok(NULL, "/");
		if (token != NULL)
			strcat(curpath, token);
	} while ((tmp = fopen(path, "wb")) == NULL && token != NULL);
	
	if (tmp != NULL) {
		fclose(tmp);
		remove(path);
	} else {
		printf("%s: Couldn't make path '%s'\n", __func__, path);
	}
	// fflush(stdout);
	return;
}


static void dumpRaw(FILE *restrict f, FILE *restrict batch, outputinfo *info) {
	FILE *o;
	unsigned char *tempbuf;
	
	makepath(info->gfxpath);
	
	if (!(o = fopen(info->gfxpath, "wb"))) {
		printf("%s: Couldn't open %s for writing\n", __func__, info->gfxpath);
		return;
	}
	
	if (fseek(f, info->fileoffset, SEEK_SET)) {
		printf("%s: Couldn't seek to offset %X in file %s\n", __func__, info->fileoffset, info->gfxpath);
		goto cleanup1;
	}
	if ((tempbuf = malloc(info->filesize)) == NULL) {
		printf("%s: Failed to allocate heap space for file %s\n", __func__, info->gfxpath);
		goto cleanup1;
	}
	if (fread(tempbuf, info->filesize, 1, f) != 1) {
		printf("%s: Failed to read 0x%X bytes from ROM\n", __func__, info->filesize);
		goto cleanup2;
	}
	if (fwrite(tempbuf, info->filesize, 1, o) != 1) {
		printf("%s: Failed to write data to %s\n", __func__, info->gfxpath);
		goto cleanup2;
	}

cleanup2:
	free(tempbuf);
cleanup1:
	fclose(o);
	
	// if(info->extraargs[0] != '\0') fprintf(batch, "gbagfx %s %s.png %s\n", info->gfxpath, info->gfxpath, info->extraargs);
}

#if 0
void dumpCompressed(FILE *f, FILE *batch, outputinfo *info) {
	FILE *o;
	uint32_t tempsize = 0;
	unsigned char *workbuf = NULL, *resultbuf = NULL;
	unsigned int ressize, comsize;
	
	makepath(info->palpath);
	makepath(info->gfxpath);
	
	// there is probably a better way to calculate the compressed size, even if we assume >100% compression ratio
	fseek(f, info->fileoffset+1, SEEK_SET);
	fread(&tempsize, 3, 1, f);
	if((info->fileoffset + 2*tempsize) > info->datasize) tempsize = info->datasize - info->fileoffset;
	else tempsize *= 2;
	comsize = tempsize;
	workbuf = malloc(tempsize);
	
	fseek(f, info->fileoffset, SEEK_SET);
	fread(workbuf, tempsize, 1, f);
	resultbuf = unpackBuffer(workbuf, &ressize, &comsize);
	if(info->bpp == image8bpp) {
		if((info->width*8*info->height*8+512) != ressize) VOIDBREAK("size/bpp dont match with uncompressed size\n");
	}
	else if(info->bpp == image4bpp) {
		if(((info->width*8*info->height*8)/2+32) != ressize) VOIDBREAK("size/bpp dont match with uncompressed size\n");
	}
	if(!resultbuf) VOIDBREAK("couldnt decompress\n");
	
	if(!(o = fopen(info->palpath, "wb"))) {
		printf("dumpRaw: Couldnt open %s for writing\n", info->palpath);
		return;
	}
	fwrite(resultbuf, (info->bpp == image8bpp) ? 512 : 32, 1, o);
	fclose(o);
	
	if(!(o = fopen(info->gfxpath, "wb"))) {
		printf("dumpRaw: Couldnt open %s for writing\n", info->gfxpath);
		return;
	}
	if(info->bpp == image8bpp) fwrite(resultbuf+512, (info->width*8*info->height*8), 1, o);
	else  fwrite(resultbuf+32, (info->width*8*info->height*8)/2, 1, o);
	fclose(o);
	
	fprintf(batch, "gbagfx %s %s.png -palette %s -width %d\n", info->gfxpath, info->gfxpath, info->palpath, info->width);
	fprintf(batch, "gbagfx %s %s.pal\n", info->palpath, info->palpath); 
	
	free(workbuf);
	free(resultbuf);
	return;
}

void dumpStriped(FILE *f, FILE *batch, outputinfo *info) {
	FILE *o;
	pacEntry *entrylist;
	uint32_t numfiles;
	unsigned char *workbuf = NULL, *resultbuf = NULL, *palettedata = NULL, *fullbuffer = NULL, *fulltarget = NULL;
	unsigned int ressize, comsize, bpp, i, fullsize;
	
	makepath(info->palpath);
	makepath(info->gfxpath);
	
	fseek(f, info->fileoffset, SEEK_SET);
	fread(&numfiles, 4, 1, f);
	entrylist = malloc(sizeof(pacEntry)*numfiles);
	fread(entrylist, sizeof(pacEntry), numfiles, f);
	
	palettedata = malloc(entrylist[0].size);
	bpp = (entrylist[0].size == 32)?image4bpp:image8bpp;
	fseek(f, info->fileoffset+entrylist[0].offset, SEEK_SET);
	fread(palettedata, entrylist[0].size, 1, f);
	
	fullsize = info->width*8*((numfiles-1)*info->height)*8;
	if(bpp == image4bpp) fullsize /= 2;
	fullbuffer = malloc(fullsize);
	fulltarget = fullbuffer;
	
	for(i=1;i < numfiles;i++) {
		fseek(f, info->fileoffset+entrylist[i].offset, SEEK_SET);
		workbuf = malloc(entrylist[i].size);
		fread(workbuf, entrylist[i].size, 1, f);
		comsize = entrylist[i].size;
		resultbuf = unpackBuffer(workbuf, &ressize, &comsize);
		if(bpp == image8bpp) {
			if((info->width*8*info->height*8) != ressize) VOIDBREAK("size/bpp dont match with uncompressed size\n");
		}
		else if(bpp == image4bpp) {
			if(((info->width*8*info->height*8)/2) != ressize) VOIDBREAK("size/bpp dont match with uncompressed size\n");
		}
		if(!resultbuf) VOIDBREAK("couldnt decompress\n");
		memcpy(fulltarget, resultbuf, ressize);
		fulltarget += ressize;
		free(workbuf);
		free(resultbuf);
	}
	
	if(!(o = fopen(info->palpath, "wb"))) {
		printf("dumpRaw: Couldnt open %s for writing\n", info->palpath);
		return;
	}
	fwrite(palettedata, entrylist[0].size, 1, o);
	fclose(o);
	
	strcat(info->gfxpath, (bpp == image8bpp) ? ".8bpp" : ".4bpp");
	if(!(o = fopen(info->gfxpath, "wb"))) {
		printf("dumpRaw: Couldnt open %s for writing\n", info->gfxpath);
		return;
	}
	fwrite(fullbuffer, fullsize, 1, o);
	fclose(o);
	
	fprintf(batch, "gbagfx %s %s.png -palette %s -width %d\n", info->gfxpath, info->gfxpath, info->palpath, info->width);
	fprintf(batch, "gbagfx %s %s.pal\n", info->palpath, info->palpath); 
	
	free(fullbuffer);
	free(palettedata);
	free(entrylist);
	return;
}

void dumpPatch(FILE *f, FILE *batch, outputinfo *info) {
	pacEntry entry;
	uint32_t tempsize = 0;
	unsigned char *workbuf = NULL, *resultbuf = NULL;
	unsigned int ressize, comsize, bpp;
	FILE *o;
	
	makepath(info->gfxpath);
	
	if(!info->sourcetype) {
		fseek(f, info->sourceoffset+4, SEEK_SET);
		fread(&entry, sizeof(entry), 1, f);
		bpp = (entry.size == 32)?image4bpp:image8bpp;
	}
	else {
		bpp = (info->sourcetype==8)?image8bpp:image4bpp;
	}
	fseek(f, info->fileoffset+1, SEEK_SET);
	fread(&tempsize, 3, 1, f);
	if((info->fileoffset + 2*tempsize) > info->datasize) tempsize = info->datasize - info->fileoffset;
	else tempsize *= 2;
	comsize = tempsize;
	
	fseek(f, info->fileoffset, SEEK_SET);
	workbuf = malloc(tempsize);
	fread(workbuf, tempsize, 1, f);
	resultbuf = unpackBuffer(workbuf, &ressize, &comsize);
	if(bpp == image8bpp) {
		if((info->width*8*info->height*8) != ressize) VOIDBREAK("size/bpp8 dont match with uncompressed size\n");
	}
	else if(bpp == image4bpp) {
		if(((info->width*8*info->height*8)/2) != ressize) VOIDBREAK("size/bpp4 dont match with uncompressed size\n");
	}
	if(!resultbuf) VOIDBREAK("couldnt decompress\n");
	
	strcat(info->gfxpath, (bpp == image8bpp) ? ".8bpp" : ".4bpp");
	if(!(o = fopen(info->gfxpath, "wb"))) {
		printf("dumpRaw: Couldnt open %s for writing\n", info->gfxpath);
		return;
	}
	fwrite(resultbuf, ressize, 1, o);
	fclose(o);
	
	if(strlen(info->extraargs)) fprintf(batch, "gbagfx %s %s.png -width %d %s\n", info->gfxpath, info->gfxpath, info->width, info->extraargs);
	else fprintf(batch, "gbagfx %s %s.png -width %d # palette from 0x%08x\n", info->gfxpath, info->gfxpath, info->width, info->sourceoffset);
	
	free(workbuf);
	free(resultbuf);
	return;
}

void dumpUncompressed(FILE *f, FILE *batch, outputinfo *info) {
	controlHeader header;
	unsigned char *workbuf = NULL, *palettedata = NULL, *rgbapixeldata = NULL;
	unsigned int pixelsX, pixelsY, bpp;
	
	makepath(info->gfxpath);
	
	fseek(f, info->fileoffset, SEEK_SET);
	fread(&header, sizeof(header), 1, f);
	
	/* lots of copypasta, see convert-uncompressed-image-header.c */
	if( header.magic[1] > 5 ) {
		printf("evil width %x in file\n", header.magic[1]);
		return;
	}
	else { 
		pixelsX = 8 << header.magic[1];
	}
	if( header.magic[2] > 5 ) {
		printf("evil height %x in file\n", header.magic[2]);
		return;
	}
	else {
		pixelsY = 8 << header.magic[2];
	}
	
	switch( header.magic[0] ) {
		/* 4bpp */
		case 3: {
			//~ printf("image is 4bpp\n");
			bpp = image4bpp;
			if((header.imageSize) != ((pixelsX*pixelsY)/2)) VOIDBREAK("size doesnt match!\n");
			break;
		}
		/* 8bpp */
		case 4: {
			//~ printf("image is 8bpp\n");
			bpp = image8bpp;
			if((header.imageSize) != ((pixelsX*pixelsY))) VOIDBREAK("size doesnt match!\n");
			break;
		}
		/* a5i3 */
		case 6: {
			//~ printf("image is a5i3\n");
			bpp = imagea5i3;
			if((header.imageSize) != ((pixelsX*pixelsY))) VOIDBREAK("size doesnt match!\n");
			break;
		}
		/* fallback */
		default: {
			printf("fallback. textype is %08x\n", header.magic[0]);
			if( header.paletteSize < 0x200 ) {
				printf("image is 4bpp\n");
				bpp = image4bpp;
				if((header.imageSize) != ((pixelsX*pixelsY)/2)) VOIDBREAK("size doesnt match!\n");
			}
			else {
				printf("image is 8bpp\n");
				bpp = image8bpp;
				if((header.imageSize) != ((pixelsX*pixelsY))) VOIDBREAK("size doesnt match!\n");
			}
			break;
		}
	}
	if( bpp == imagea5i3 ) {
		if( header.paletteSize == 0x200 ) palettedata = malloc(header.paletteSize);
		else {
			palettedata = malloc(8*2);
			memset(palettedata, 0, 8*2);
		}
	}
	else if ( bpp == imagea3i5 ) {
		palettedata = malloc(32*2);
		memset(palettedata, 0, 32*2);
	}
	else palettedata = malloc(header.paletteSize);
	fseek(f, info->fileoffset+header.paletteOffset, SEEK_SET);
	fread(palettedata, header.paletteSize, 1, f);
	fseek(f, info->fileoffset+header.headerSize, SEEK_SET);
	workbuf = malloc(header.imageSize);
	fread(workbuf, header.imageSize, 1, f);
	
	if(strlen(info->extraargs)) rgbapixeldata = linearImageWithPaletteToRGBA(workbuf, palettedata, pixelsX, pixelsY, bpp, 1);
	else rgbapixeldata = linearImageWithPaletteToRGBA(workbuf, palettedata, pixelsX, pixelsY, bpp, 0);
	lodepng_encode32_file(info->gfxpath, rgbapixeldata, pixelsX, pixelsY);
	free(workbuf);
	free(rgbapixeldata);
	free(palettedata);
	return;
}
#endif

// 
static void runGbagfx(outputinfo *info) {
#ifdef _WIN32
#error "There is no Windows version of this function right now."
#else
	pid_t id = fork();
	
	if (id == -1) {
		printf("%s: fork() failed when trying to convert '%s'\n", __func__, info->gfxpath);
	} else if (id == 0) {
		// Prepare argv for gbagfx.
		char *argv[20];
		char resultPath[2048];
		
		argv[0] = info->gbagfx;
		argv[1] = info->gfxpath;
		
		strncpy(resultPath, info->gfxpath, sizeof(resultPath));
		if (resultPath[sizeof(resultPath) - 1] != '\0') {
			printf("%s: Path '%s' is too long!\n", __func__, info->gfxpath);
			exit(1);
		} else if (info->gfxpath[0] == '\0') {
			printf("%s: gfxpath has length 0!\n", __func__);
			exit(1);
		}
		
		char *fileExtStart = strrchr(resultPath, '.');
		if (fileExtStart == NULL) {
			printf("%s: '%s' has no file extension\n", __func__, info->gfxpath);
			exit(1);
		}
		
		// Replace the old file extension with the new one gbagfx would want
		if (strcmp(fileExtStart, ".striped") == 0) {
			// striped is weird... it has two file extensions we want to replace at the same time,
			// unlike lz
			*fileExtStart = '\0';
			
			fileExtStart = strrchr(resultPath, '.');
			if (fileExtStart == NULL) {
				printf("%s: Incomplete striped file extension for '%s'\n", __func__, info->gfxpath);
				exit(1);
			}
			
			if (strcmp(fileExtStart, ".4bpp") != 0 && strcmp(fileExtStart, ".8bpp") != 0) {
				printf("%s: Unknown striped image extension '%s'\n", __func__, fileExtStart);
				exit(1);
			}
			
			fileExtStart[1] = 'p';
			fileExtStart[2] = 'n';
			fileExtStart[3] = 'g';
			fileExtStart[4] = '\0';
		} else if (strcmp(fileExtStart, ".lz") == 0) {
			fileExtStart[0] = '\0';
		} else if (strcmp(fileExtStart, ".gbapal") == 0) {
			fileExtStart[1] = 'p';
			fileExtStart[2] = 'a';
			fileExtStart[3] = 'l';
			fileExtStart[4] = '\0';
		} else if (strcmp(fileExtStart, ".4bpp") == 0 || strcmp(fileExtStart, ".8bpp") == 0) {
			fileExtStart[1] = 'p';
			fileExtStart[2] = 'n';
			fileExtStart[3] = 'g';
			fileExtStart[4] = '\0';
		} else {
			printf("%s: Unknown infile extension '%s'\n", __func__, fileExtStart);
			exit(1);
		}
		argv[2] = resultPath;
		
		// Add the extraargs
		int argNum = 3;
		if (info->extraargs[0]) {
			char *str = strtok(info->extraargs, " ");
			if (str == NULL) {
				printf("%s: extraargs has no tokens\n", __func__);
				exit(1);
			}
			do {
				argv[argNum++] = str;
			} while ((str = strtok(NULL, " ")) != NULL && argNum < (sizeof(argv)/sizeof(*argv)));
		}
		
		if (argNum == (sizeof(argv)/sizeof(*argv))) {
			printf("%s: There were more extraargs than this program could handle!\n", __func__);
			exit(1);
		}
		
		argv[argNum] = NULL;
		
		
		// execv it
		execv(info->gbagfx, argv);
		
		printf("%s: Failed to run gbagfx: %s", __func__, strerror(errno));
		exit(1);
	} else {
		int wstatus;
		waitpid(id, &wstatus, 0);
		if ((WIFEXITED(wstatus) && WEXITSTATUS(wstatus)) || !WIFEXITED(wstatus)) {
			printf("%s: gbagfx failed to convert '%s'\n", __func__, info->gfxpath);
		}
	}
#endif
}

static void dumpGbagfx(FILE *restrict rom, FILE *restrict batch, outputinfo *info) {
	dumpRaw(rom, batch, info);
	runGbagfx(info);
}

static void dumpCompressedGbagfx(FILE *restrict rom, FILE *restrict batch, outputinfo *info) {
	char *argv[4];
	char outpath1[2048];
	dumpRaw(rom, batch, info);
	argv[0] = info->gbagfx;
	argv[1] = info->gfxpath;
	
	strncpy(outpath1, info->gfxpath, sizeof(outpath1));
	if (outpath1[sizeof(outpath1) - 1]) {
		printf("%s: Path '%s' is too long\n", __func__, outpath1);
		return;
	}
	
	char* dot = strrchr(outpath1, '.');
	if (dot == NULL) {
		printf("%s: '%s' has no file extension\n", __func__, info->gfxpath);
		return;
	}
	
	// .lz, .rl, .huff are all gbagfx currently supports
	if (strlen(dot) > 5) {
		printf("%s: this program doesn't support compressed files with a '%s' extension\n", __func__, dot);
		return;
	}
	dot[0] = '\0';
	argv[2] = outpath1;
	argv[3] = NULL;
	
	pid_t id = fork();
	if (id == -1) {
		printf("%s: fork() failed when trying to decompress %s\n", __func__, info->gfxpath);
		return;
	} else if (id == 0) {
		execv(info->gbagfx, argv);
		
		printf("%s: Failed to run gbagfx: %s", __func__, strerror(errno));
		exit(1);
	} else {
		int wstatus;
		waitpid(id, &wstatus, 0);
		if ((WIFEXITED(wstatus) && WEXITSTATUS(wstatus)) || !WIFEXITED(wstatus)) {
			printf("%s: gbagfx failed to convert '%s'\n", __func__, info->gfxpath);
			return;
		}
	}
	
	char *oldPath = info->gfxpath;
	info->gfxpath = outpath1;
	
	runGbagfx(info);
	
	info->gfxpath = oldPath;
}

static void (*dumpfuncs[])(FILE *restrict, FILE *restrict, outputinfo *) = {
	dumpRaw,
	NULL,
	NULL,
	NULL,
	NULL,
	dumpGbagfx,
	dumpCompressedGbagfx
};

int main(int argc, char** argv) {
	// The data blob being dumped from
	FILE *data = NULL;
	// The filemap (instructions for what to dump)
	FILE *map = NULL;
	// File to write calls to gbagfx into
	FILE *batch = NULL;
	// Buffer for one line in the filemap
	char mapline[2048] = {0};
	
	/* arguments used by all types */
	// Path to `batch`
	char outputpath[2048] = {0};
	// Path to palette in image-dumping modes
	char palettepath[2048] = {0};
	// Path of dumped file
	char graphicspath[2048] = {0};
	// Everything that gets passed to gbagfx
	char extraargs[2048] = {0};
	unsigned int i = 0;
	int params = 0;
	// unsigned int datasize = 0;
	// unsigned int fileoffset = 0;
	unsigned int filetype = 0;
	
	/* arguments used by specific types */
	// unsigned int filesize;
	
	outputinfo outinfo;
	
	if (argc < 4) {
		printf("Not enough arguments given!\nUsage: %s file textmap gbagfx-path\n", argv[0]);
		return 1;
	}
	
	if (!(data = fopen(argv[1], "rb"))) {
		printf("Couldn't open %s for reading\n", argv[1]);
		return 1;
	}
	
	if (!(map = fopen(argv[2], "r"))) {
		printf("Couldnt open %s for reading\n", argv[2]);
		return 1;
	}
	
	/*
	sprintf(outputpath, "%s.log", argv[1]);
	if(!(batch = fopen(outputpath, "w"))) {
		printf("couldnt open %s for writing\n", outputpath);
		return 1;
	}
	*/
	outinfo.gbagfx = argv[3];
	
	outinfo.palpath = palettepath;
	outinfo.gfxpath = graphicspath;
	outinfo.extraargs = extraargs;
	
	for(;;) {
		i++;
		if (!fgets(mapline, 2048, map)) {
			if(!feof(map)) {
				printf("There was a non-EOF error reading the filemap\n");
			}
			break;
		}
		if(!(strncmp(mapline, "//", 2))) {
			// printf("line %03d - commented out\n", i);
			continue;
		}
		if(mapline[0] == 0 || mapline[1] == 0 || mapline[2] == 0) {
			// printf("line %03d - empty\n", i);
			continue;
		}
		params = sscanf(mapline, "%x %u \"%[^\"]\"", &outinfo.fileoffset, &filetype, outputpath);
		if(!params) continue;
		if(params < 3) {
			printf("Malformed params at line %d, wanted 3, got %d\n", i, params);
			continue;
		}
		// printf("line %03d - Offset %08x - Type %s(%d) - %s\n", i, outinfo.fileoffset, typestring[filetype], filetype, outputpath);
		switch (filetype) {
			case 0: { /* rawdump */
				params = sscanf(mapline, "%x %u \"%[^\"]\" %x \"%[^\"]\"", &outinfo.fileoffset, &filetype, graphicspath, &outinfo.filesize, extraargs);
				if (params < 4) {
					printf("Not enough params for rawdump at line %d, wanted 4, got %d\n", i, params);
					continue;
				}
				if (graphicspath[0] == 0 || graphicspath[1] == 0 || graphicspath[2] == 0) {
					printf("invalid output path at line %d (%zu)\n", i, strlen(graphicspath));
					continue;
				}
				if (params > 4) {
					printf("Ignroing extra params on line %d (wanted 4, got %d)\n", i, params);
				}
				break;
			}
#if 0
			case 1: { /* compressed graphics */
				params = sscanf(mapline, "%x %d \"%[^\"]\" \"%[^\"]\" %d %d %d", &fileoffset, &filetype, palettepath, graphicspath, &tilesx, &tilesy, &sourcetype);
				if(params < 7) {
					printf("Not enough params for comgfx at line %d, wanted 7, got %d\n", i, params);
					continue;
				}
				if(strlen(palettepath)<3) {
					printf("invalid palette path at line %d (%u)\n", i, (unsigned int)strlen(palettepath));
					continue;
				}
				if(strlen(graphicspath)<3) {
					printf("invalid graphics path at line %d (%u)\n", i, (unsigned int)strlen(graphicspath));
					continue;
				}
				bpp = (sourcetype == 8)?image8bpp:image4bpp;
				break;
			}
			case 2: { /* striped graphics */
				params = sscanf(mapline, "%x %d \"%[^\"]\" \"%[^\"]\" %d %d", &fileoffset, &filetype, palettepath, graphicspath, &tilesx, &tilesy);
				if(params < 6) {
					printf("Not enough params for sgfx at line %d, wanted 5, got %d\n", i, params);
					continue;
				}
				if(strlen(palettepath)<3) {
					printf("invalid palette path at line %d (%u)\n", i, (unsigned int)strlen(palettepath));
					continue;
				}
				if(strlen(graphicspath)<3) {
					printf("invalid graphics path at line %d (%u)\n", i, (unsigned int)strlen(graphicspath));
					continue;
				}
				break;
			}
			case 3: { /* patch graphics */
				params = sscanf(mapline, "%x %d \"%[^\"]\" %d %d %x %d \"%[^\"]\"", &fileoffset, &filetype, graphicspath, &tilesx, &tilesy, &sourceoffset, &sourcetype, extraargs);
				if(params < 7) {
					printf("Not enough params for pgfx at line %d, wanted 7, got %d\n", i, params);
					continue;
				}
				if(strlen(graphicspath)<3) {
					printf("invalid output path at line %d (%u)\n", i, (unsigned int)strlen(graphicspath));
					continue;
				}
				break;
			}
			case 4: { /*uncompressed header graphics */
				params = sscanf(mapline, "%x %d \"%[^\"]\" \"%[^\"]\"", &fileoffset, &filetype, graphicspath, extraargs);
				// no need to check for anything as that has been done previously, and extraargs are entirely optional
				break;
			}
#endif
			case 5: /* call gbagfx once */
			case 6: /* call gbagfx twice */ { 
				params = sscanf(mapline, "%x %u \"%[^\"]\" %x \"%[^\"]\"", &outinfo.fileoffset, &filetype, graphicspath, &outinfo.filesize, extraargs);
				if (params < 4) {
					printf("Not enough params for gbagfx call at line %d, wanted 4 or 5, got %d\n", i, params);
					continue;
				}
				
				if (graphicspath[0] == 0 || graphicspath[1] == 0 || graphicspath[2] == 0) {
					printf("Invalid output path at line %d (%zu)\n", i, strlen(graphicspath));
				}
				
				if (params > 5)  {
					printf("Ignoring extra params on line %d (wanted 4 or 5, got %d)\n", i, params);
				}
				break;
			}
			default: {
				printf("unknown type %d in line %d, skipping...\n", filetype, i);
				continue;
			}
		}
		// outinfo.datasize = datasize;
		// outinfo.fileoffset = fileoffset;
		// outinfo.width = tilesx;
		// outinfo.height = tilesy;
		// outinfo.bpp = bpp;
		// outinfo.sourcetype = sourcetype;
		// outinfo.sourceoffset = sourceoffset;
		
		dumpfuncs[filetype](data, batch, &outinfo);
		
		extraargs[0] = 0;
	}
	fclose(data);
	fclose(map);
	// fclose(batch);
	printf("Done.\n");
	fclose(stdout);
	return 0;
}
