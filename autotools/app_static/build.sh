#!/bin/bash

curr_path=`pwd`
include_dir=$curr_path/../../
lib_dir=$curr_path/../lib_static/

autoreconf -i
./configure --prefix=$curr_path LIBTOOL=libtool CFLAGS="-I$include_dir" LDFLAGS="-L$lib_dir -llolo"
make clean
make
make install
