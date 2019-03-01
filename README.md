# P8P-Compiler

NOTE: This is not meant to be used for commercial use. It is meant for educational purpose. 

P8P compiler supports subset of operations available in c++. It is written in c++. It generates assembly and symbol data the compiled files. The appropriate extensions are .p8p. The /test includes a simple .p8p program that is compiled using this compiler (along with assembly (.asm) and symbol data (.sym). The /test was buildling in c++11 standard and may be compiler in any newer standards.

Usage:</b>
From command line execute "p8p [-y] src.p8p" where "-y" is an optional command to generate symbols file and "src.p8p" is the p8p source file. It will generate .asm file that is executable on Windows.
