#!/bin/bash

LLVM_DIR=/lib/llvm-19/bin

OBJROOT=$HOME/obj-freebsd/$HOME/workspace/amd64.amd64
BSD_BIN_PATH=$OBJROOT/tmp/legacy/usr/bin

export PATH=$BSD_BIN_PATH:$HOME/freebsd-tools:$PATH

export MAKEOBJDIRPREFIX=$HOME/obj-freebsd
if [ ! -d ${MAKEOBJDIRPREFIX} ]; then
	mkdir -p ${MAKEOBJDIRPREFIX}
fi

python3 tools/build/make.py -j8  --cross-bindir=${LLVM_DIR} \
	-C release \
	TARGET=amd64 TARGET_ARCH=amd64 \
	INSTALL_DISTS="base kernel" \
	memstick

echo $PATH

