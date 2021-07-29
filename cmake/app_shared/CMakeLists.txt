# minimum required cmake
cmake_minimum_required(VERSION 3.9)

# project name
project(lolo_project)

add_executable(test_lolo
		"../../test_lolo.c"
	)

set(CMAKE_C_FLAGS "-rdynamic -fPIC -g -I${CMAKE_PREFIX_PATH}/include/")

# adding libraries and options
set_target_properties(test_lolo PROPERTIES 
		LINKER_LANGUAGE C
	)


set(CMAKE_C_FLAGS "-rdynamic -fPIC -g -I../../")
target_link_libraries(test_lolo "-L${CMAKE_SOURCE_DIR}/../lib_shared/build/" -llolo -ldl)
