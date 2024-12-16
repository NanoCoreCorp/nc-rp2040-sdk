cmake_minimum_required(VERSION 3.12)

project(ncrp2040firmwaresdk C CXX ASM)

set(CMAKE_C_COMPILER arm-none-eabi-gcc)
set(CMAKE_CXX_COMPILER arm-none-eabi-g++)
set(CMAKE_C_COMPILER_TARGET arm-none-eabi)
set(CMAKE_C_FLAGS "-mthumb -mcpu=cortex-m0plus -nostartfiles")
set(CMAKE_CXX_FLAGS "-mthumb -mcpu=cortex-m0plus")

file(GLOB_RECURSE SOURCES "src/*.cpp")

add_executable(${PROJECT_NAME} ${SOURCES})

include_directories(include)

