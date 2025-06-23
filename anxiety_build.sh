#!/bin/bash

LLVM_DIR=/lib/llvm-19/bin

OBJROOT=$HOME/obj-freebsd/$HOME/workspace/amd64.amd64
LEGACY_BIN_PATH=$OBJROOT/tmp/legacy/bin

export PATH=$HOME/freebsd-tools:$PATH

export WITH_TOOLCHAIN=yes

export MAKEOBJDIRPREFIX=$HOME/obj-freebsd
if [ ! -d ${MAKEOBJDIRPREFIX} ]; then
	mkdir -p ${MAKEOBJDIRPREFIX}
fi

python3 tools/build/make.py -j8  --cross-bindir=${LLVM_DIR} \
	TARGET=amd64 TARGET_ARCH=amd64 \
	buildworld

#python3 tools/build/make.py -j8  --cross-bindir=${LLVM_DIR} \
#        TARGET=amd64 TARGET_ARCH=amd64 \
#	DESTDIR="$STAGE" -DNO_ROOT \
#        distrib-dirs distribution

python3 tools/build/make.py -j8  --cross-bindir=${LLVM_DIR} \
        TARGET=amd64 TARGET_ARCH=amd64 \
        buildkernel
