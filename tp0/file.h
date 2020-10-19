#ifndef __FILE_H__
#define __FILE_H__

#include <stdio.h>
#include "constants.h"


typedef struct {
	FILE* file;
	char eof;
} File;


void create_file(File* file);


char open_file_read(File* file, const char* route);


char open_file_write(File* file, const char* route);


int close_file(File* file);


unsigned int file_read(File* file, unsigned char* buffer, unsigned int length);


void file_write(File* file, unsigned char* buffer, unsigned int length);


int file_eof(File* file);

#endif
