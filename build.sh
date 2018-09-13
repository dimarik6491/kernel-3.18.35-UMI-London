#!/bin/bash
export KBUILD_BUILD_USER=dimarik6491
export KBUILD_BUILD_HOST=linux@build-server
export CROSS_COMPILE=/home/dimarik6491/Android/utility/arm-eabi-4.8/bin/arm-eabi-
export USE_CCACHE=1
export ARCH=arm ARCH_MTK_PLATFORM=mt6580
export TARGET=out
make O=$TARGET ARCH=$ARCH CROSS_COMPILE=$CROSS_COMPILE w370_defconfig
make O=$TARGET ARCH=$ARCH CROSS_COMPILE=$CROSS_COMPILE -j4 | tee build.log 

