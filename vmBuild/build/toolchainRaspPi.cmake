SET(CMAKE_SYSTEM_NAME Linux)
SET(CMAKE_SYSTEM_VERSION 1)
set(CMAKE_SYSTEM_PROCESSOR arm)

SET(CMAKE_C_COMPILER /Users/jbarnaud/Documents/Repository/RaspberryPiLocal/toolchain/arm-bcm2708/gcc-linaro-arm-linux-gnueabihf-raspbian/bin/arm-linux-gnueabihf-gcc)
SET(CMAKE_CXX_COMPILER /Users/jbarnaud/Documents/Repository/RaspberryPiLocal/toolchain/arm-bcm2708/gcc-linaro-arm-linux-gnueabihf-raspbian/bin/arm-linux-gnueabihf-g++)

# where is the target environment - we mounted it using sshfs
SET(CMAKE_FIND_ROOT_PATH /Users/jbarnaud/Documents/Repository/RaspberryPiLocal/toolchain/mnt_rpi)

# search for programs in the build host directories
SET(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
# for libraries and headers in the target directories
SET(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
SET(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)

