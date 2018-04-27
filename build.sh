#!/usr/bin/env bash
set -e
_work_dir="$(pwd)"
[ -d "build" ] && rm -rf build
mkdir build 
cd build 
cmake "$_work_dir" $_cmake_args -DCMAKE_CXX_COMPILER="$(which clang++)" -DCMAKE_CXX_FLAGS="-lSDL2"
make $_make_args


