export PATH=$PATH:$(pwd)/../toolchain/usr/local/angstrom/arm/bin
make ARCH=arm CROSS_COMPILE=arm-angstrom-linux-gnueabi- iu8_defconfig
time make ARCH=arm CROSS_COMPILE=arm-angstrom-linux-gnueabi- -j4 uImage

