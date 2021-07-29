# telling autotools this is not a standard GNU project
AUTOMAKE_OPTIONS = foreign
# making library
lib_LIBRARIES = liblolo.a
liblolo_a_SOURCES = ../lolo.c
# making test program
bin_PROGRAMS = static_app
static_app_SOURCES = ../test_lolo.c
AM_LDFLAGS = "-L./ -llolo"