#/usr/bin/bash

rm -r build;
mkdir build;
cd build;


## build iostream pcm
clang++ -std=c++20 -x c++-system-header iostream --precompile -o iostream.pcm

## build Point ixx
clang++ -std=c++20 -x c++-module ../Point/Point.ixx --precompile -o Point.pcm

## build Point cpp
clang++ -std=c++20 -c ../Point/Point.cpp -fmodule-file=Point=Point.pcm -fmodule-file=iostream.pcm -o Point.cpp.o

## build Line ixx
clang++ -std=c++20 -x c++-module ../Line/Line.ixx --precompile -fmodule-file=Point=Point.pcm -o Line.pcm

## build Line cpp
clang++ -std=c++20 -c ../Line/Line.cpp -fmodule-file=Line=Line.pcm -fmodule-file=iostream.pcm -o Line.cpp.o

## build main file object file
clang++ -std=c++20 -c ../ModulesSeparateTest.cpp -fmodule-file=Line=Line.pcm -fmodule-file=Point=Point.pcm -o ModulesSeparateTest.o

## build Point ixx object file
clang++ -std=c++20 -c Point.pcm -o Point.pcm.o

## build Line ixx object file
clang++ -std=c++20 -c Line.pcm -fmodule-file=Point=Point.pcm -o Line.pcm.o

## build executable (works)
clang++ -std=c++20 ModulesSeparateTest.o Line.pcm.o Line.cpp.o Point.pcm.o Point.cpp.o -o ModulesSeparateTest.exe


cd -- ;
