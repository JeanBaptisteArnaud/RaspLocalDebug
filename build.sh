#!/bin/sh

sshfs pi@raspberryslave.lille.inria.fr:/ ./mnt_rpi/

cd vmBuild/image/
./pharo generator.image eval "StackCrossRaspbianFastBltConfig new generateSources; generate."
cd ../build

cmake -DCMAKE_TOOLCHAIN_FILE=toolchainRaspPi.cmake .
make

cd ..
cp result/* ../mnt_rpi/home/pi/
umount mnt_rpi