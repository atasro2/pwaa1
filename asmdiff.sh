#!/bin/bash

OBJDUMP="tools/binutils/bin/arm-none-eabi-objdump -D -bbinary -marmv4t -Mforce-thumb"
OPTIONS="--start-address=$(($1)) --stop-address=$(($1 + $2))"
$OBJDUMP $OPTIONS baserom.gba > baserom.dump
$OBJDUMP $OPTIONS pwaa1.gba > pwaa1.dump
diff baserom.dump pwaa1.dump
