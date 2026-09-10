cmake_minimum_required(VERSION 3.20)
project(LoopFinderPass)

# 1. Locate LLVM's own CMake package.
#    - "LLVM" is the package name LLVM installs register themselves under.
#    - CONFIG tells CMake: "don't go hunting with a generic FindLLVM.cmake
#      script -- go look for the LLVMConfig.cmake file LLVM itself ships,
#      which knows its own paths/version/build settings authoritatively."
#      That's the file at /usr/lib/llvm-22/lib/cmake/llvm/LLVMConfig.cmake
#      on your machine -- the path you already passed via -DLLVM_DIR=...
#    - REQUIRED makes CMake stop with a clear error if it can't find it,
#      instead of silently continuing and failing confusingly later.
find_package(LLVM REQUIRED CONFIG)

# Purely informational -- confirms at configure time which LLVM you're
# actually building against, so a wrong LLVM_DIR doesn't go unnoticed.
message(STATUS "Found LLVM ${LLVM_PACKAGE_VERSION}")
message(STATUS "Using LLVMConfig.cmake in: ${LLVM_DIR}")

# 2. Once find_package succeeds, LLVM populates a set of CMake variables
#    describing itself. LLVM_INCLUDE_DIRS is the one holding the paths to
#    its headers (llvm/IR/Function.h, etc.) -- add them to our include path
#    so #include "llvm/..." lines in our .cpp actually resolve.
include_directories(${LLVM_INCLUDE_DIRS})

# Also worth having: LLVM_DEFINITIONS carries preprocessor defines LLVM
# was built with, so our translation unit sees the same macro environment.
add_definitions(${LLVM_DEFINITIONS})

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# 3. LLVM_ENABLE_RTTI is a variable LLVM's config exposes telling us
#    whether *that* LLVM build has C++ RTTI (dynamic_cast, typeid) turned
#    on. Distro LLVM builds normally have it OFF for performance/size
#    reasons. If we compiled our plugin WITH RTTI while LLVM itself was
#    built WITHOUT it, we'd have a mismatch that can cause obscure
#    linking/runtime issues when our plugin's LLVM-derived classes meet
#    LLVM's own compiled-in classes at dlopen() time. So: match it.
if(NOT LLVM_ENABLE_RTTI)
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fno-rtti")
endif()

# 4. MODULE (not SHARED) tells CMake this library is meant to be loaded
#    dynamically at runtime via dlopen() -- which is exactly what opt's
#    -load-pass-plugin flag does. A SHARED library is meant to be linked
#    against at build time instead, which isn't our use case here.
add_library(LoopFinderPass MODULE LoopFinderPass.cpp)

# 5. Deliberately no target_link_libraries(LoopFinderPass LLVM...) here.
#    opt is already a process with every LLVM symbol loaded into it. When
#    it dlopen()s our .so, our plugin's undefined references to things
#    like llvm::Function, llvm::PassBuilder, etc. get resolved against
#    opt's own already-loaded symbols. If we ALSO statically linked LLVM
#    into our .so, we'd end up with two copies of LLVM's classes in the
#    same process -- duplicate-symbol and ODR (one-definition-rule)
#    violations, and very confusing crashes. So: link against nothing.
