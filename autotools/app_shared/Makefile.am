# telling autotools this is not a standard GNU project
# AUTOMAKE_OPTIONS = foreign
# making test program
bin_PROGRAMS = shared_app
shared_app_SOURCES = ../../test_lolo.c
shared_app_LDADD =  -L../lib_shared/lib/ -llolo
shared_app_CFLAGS = -I../../