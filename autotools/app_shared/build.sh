#!/bin/bash

autoreconf -i
./configure --prefix=`pwd` LIBTOOL=libtool
make clean
make
make install
