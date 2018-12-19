#!/bin/bash
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- -j12
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- -j12 modules
cp arch/arm/boot/zImage /media/ben/boot/kernel7.img
cp arch/arm/boot/dts/*.dtb /media/ben/boot/
cp arch/arm/boot/dts/overlays/*.dtb* /media/ben/boot/overlays/
cp arch/arm/boot/dts/overlays/README /media/ben/boot/overlays/
sudo umount /dev/mmcblk0p1
sudo umount /dev/mmcblk0p2
