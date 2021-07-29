# medium\_lib
codes of medium post: [What is a library and how to develop a library clean?](https://medium.com/@m.zanoosi/what-is-a-library-and-how-to-develop-a-library-clean-b79c5719e769)

# using gcc directly
## static
```
$ gcc <object_file> -L/path/to/static/lib/dir/ -l<name_of_lib> -o<output_name>
```
## shared
```
$ gcc -fPIC -c -o<object_file> <c_file>
$ gcc <object_file> -L/path/to/shared/lib/dir/ -l<name_of_lib> -o<output_name> -shared
```

# using autotools
write Makefile.am and configure.ac; then:
```
 $ autoreconf -i
 $ ./configure --prefix=/path/to/install/dir/ LIBTOOL=libtool
 $ make clean
 $ make
 $ make install
```
if you are making a library, see `lib/` directory in install path\
if you are making a binary, see `bin/` directory instead\
you can use my `$ ./build.sh` script which just runs above commands line-by-line

# using CMake
write CMakeLists.txt; then:
```
$ mkdir build/
$ cd build/
$ cmake </path/to/CMakeLists.txt/dir/> (usually cmake ..)
$ make
$ make install
```
all paths for libraries/binaries/customized options are easily settable;
see this example CMakeLists.txt:
```
# minimum required cmake
cmake_minimum_required(VERSION 3.9)

# project name
project(liblolo)

# versioning
set(VERSION_MAJOR 0)
set(VERSION_MINOR 0)
set(VERSION_PATCH 1)
set(VERSION_STRING ${VERSION_MAJOR}.${VERSION_MINOR}.${VERSION_PATCH})

# uncomment next line to enable testing
option(TEST "option to test ipc engine" OFF)

# directories for outputs
if(TEST)
	set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/tests)
else()
	set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)
endif()

set(CMAKE_LIBRARY_OUTPUT_DIRACTORY ${CMAKE_BINARY_DIR}/lib)
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)

# making liblolo
set(CMAKE_C_FLAGS "-rdynamic -fPIC -g -Wformat")
# adding source files
add_library(lolo	SHARED
		"lolo.c"
	)
# adding properties
set_target_properties(lolo PROPERTIES 
	PUBLIC_HEADER "lolo.h"
	VERSION ${VERSION_STRING}
	SOVERSION ${VERSION_MAJOR}
	)
# adding install method
INSTALL(TARGETS lolo 
        LIBRARY DESTINATION lib/
        PUBLIC_HEADER DESTINATION include/
        LIBRARY PERMISSIONS WORLD_READ WORLD_WRITE WORLD_EXECUTE
	)
# actually making the library
target_link_libraries(lolo -lrt -ldl -lm)

# unit testing
if(TEST)
	# test ipc engine
	add_executable(test_lolo
			"test_lolo.c"
		)
	target_link_libraries(test_lolo lolo)
endif()

```
You can set cmake internal variables, like CMAKE_RUNTIME_OUTPUT_DIRECTORY and CMAKE_LIBRARY_OUTPUT_DIRACTORY; also you can use default variables, like CMAKE_BINARY_DIR and CMAKE_SOURCE_DIR; reading cmake documentations helps a lot!
