# telling autotools this is not a standard GNU project
AUTOMAKE_OPTIONS = foreign
# making test program
bin_PROGRAMS = static_app
static_app_SOURCES = ../../test_lolo.c
static_app_LDADD =  -L../lib_static/lib/ -llolo
static_app_CFLAGS = -I../../
static_app_LDFLAGS = -static