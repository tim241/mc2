#!/usr/bin/env bash
set -e
_work_dir="$(pwd)"
[ -d "build64" ] && rm -rf build
mkdir build64
cd build64
cmake .. $_cmake_args -DCMAKE_CXX_FLAGS="-lSDL2" -DCMAKE_LIBRARY_ARCHITECTURE=x64
make $_make_args
cd "$_work_dir/text_tool"
cmake . $_cmake_args -DCMAKE_CXX_FLAGS="-lSDL2"
make $_make_args
cd "$_work_dir/data_tools"
cmake . $_cmake_args -DCMAKE_CXX_FLAGS="-lSDL2"
make $_make_args
