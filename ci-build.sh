#!/bin/bash

set -e

. ./SetEnv

export ARCH=arm

rm -rf mod

make distclean
make imx6_defconfig
make -j 80 uImage
make -j 80 modules
make modules_install INSTALL_MOD_PATH=mod

ls -l arch/arm/boot/uImage
ls -l mod/lib/modules


