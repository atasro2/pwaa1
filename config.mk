# Default variables

GAME_VERSION  ?= FIRERED
GAME_REVISION ?= 0
GAME_LANGUAGE ?= ENGLISH
MODERN        ?= 0
COMPARE       ?= 0

# For gbafix
MAKER_CODE  := 08

BUILD_NAME  := pwaa1

# Revision
ifeq ($(GAME_REVISION),0)
BUILD_NAME  := $(BUILD_NAME)
else
ifeq ($(GAME_REVISION),1)
BUILD_NAME  := $(BUILD_NAME)_rev1
else
$(error unknown revision $(GAME_REVISION))
endif
endif
