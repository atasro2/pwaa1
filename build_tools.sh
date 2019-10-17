#!/bin/sh
make -C tools/gbafix CXX=${1:-g++}
make -C tools/gbagfx CXX=${1:-g++}
