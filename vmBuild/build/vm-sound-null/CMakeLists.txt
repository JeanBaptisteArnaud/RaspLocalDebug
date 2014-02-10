# This is automatically generated file using StackCrossRaspbianFastBltConfig on 7 February 2014 2:52:31.75 pm
cmake_minimum_required(VERSION 2.6.2)
project("vm-sound-null")
include(../directories.cmake)
message("Adding module: vm-sound-null")
add_definitions( -DLSB_FIRST=1 -DUSE_GLOBAL_STRUCT=0 -DCOGMTVM=0   -DENABLE_FAST_BLT -static
 -g0 -DNDEBUG -DITIMER_HEARTBEAT=1 -DNO_VM_PROFILE=1 -DDEBUGVM=0)
add_definitions(-fPIC -DPIC)
set(sources  "${targetPlatform}/vm-sound-null/sqUnixSoundNull")
add_library(vm-sound-null SHARED ${sources})
include_directories(${CMAKE_FIND_ROOT_PATH}/usr/include)
include_directories(${crossDir}/plugins/FilePlugin)
include_directories(${targetPlatform}/plugins/B3DAcceleratorPlugin)
include_directories(${crossDir}/plugins/B3DAcceleratorPlugin)
set(LIBRARY_OUTPUT_PATH "/Users/jbarnaud/Documents/Repository/RaspberryPiLocal/vmBuild/results")
link_directories(${CMAKE_FIND_ROOT_PATH}/usr/lib/arm-linux-gnueabihf/)
target_link_libraries(vm-sound-null ${LINKLIBS})
set_target_properties(vm-sound-null PROPERTIES PREFIX "" SUFFIX "" )

