# minimum required cmake
cmake_minimum_required(VERSION 3.9)

# project name
project(liblolo)

# versioning
set(VERSION_MAJOR 1)
set(VERSION_MINOR 0)
set(VERSION_PATCH 0)
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
set(CMAKE_C_FLAGS "-rdynamic -fPIC -g -Wall")
# adding source files
add_library(lolo	SHARED
		"../../lolo.c"
	)
# adding properties
set_target_properties(lolo PROPERTIES 
	PUBLIC_HEADER "../../lolo.h"
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
target_link_libraries(lolo)

# unit testing
if(TEST)
	# test ipc engine
	add_executable(test_lolo
			"../../test_lolo.c"
		)
	target_link_libraries(test_lolo lolo)
endif()
