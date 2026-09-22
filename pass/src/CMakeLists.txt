cmake_minimum_required(VERSION 3.20)
project(LoopFinderPass)

# Locate LLVM's own CMake package (LLVMConfig.cmake, via -DLLVM_DIR=...).
# CONFIG = use LLVM's own config file, not a generic Find script. REQUIRED
# = hard error instead of a confusing failure later if not found.
find_package(LLVM REQUIRED CONFIG)

message(STATUS "Found LLVM ${LLVM_PACKAGE_VERSION}")
message(STATUS "Using LLVMConfig.cmake in: ${LLVM_DIR}")

# LLVM_INCLUDE_DIRS: header search path. LLVM_DEFINITIONS: preprocessor
# defines LLVM itself was built with -- keep our TU's macro env matching.
include_directories(${LLVM_INCLUDE_DIRS})
add_definitions(${LLVM_DEFINITIONS})

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Match LLVM's own RTTI setting (usually OFF on distro builds) -- a
# mismatch causes obscure link/runtime issues when our classes meet
# LLVM's at dlopen() time.
if(NOT LLVM_ENABLE_RTTI)
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fno-rtti")
endif()

# MODULE (not SHARED): meant for dlopen() via opt's -load-pass-plugin,
# not build-time linking.
add_library(LoopFinderPass MODULE LoopFinder/LoopFinderPass.cpp)
add_library(BufferAccessPass MODULE BufferAccess/BufferAccessPass.cpp)

# No target_link_libraries against LLVM for either target: opt already
# has every LLVM symbol loaded when it dlopen()s us, so our undefined
# refs resolve against opt's copy. Linking LLVM into our .so too would
# create a second copy of its classes in-process -- ODR violations,
# duplicate-symbol/runtime crashes. So: link against nothing.