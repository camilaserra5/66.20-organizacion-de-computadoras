#ifndef __FILE_H__
#define __FILE_H__

#include <stdio.h>
#include "constants.h"

typedef struct {
    FILE *file;
    char eof;
} File;

void create_file(File *file);

char open_file_write(File *file, const char *route);

int close_file(File *file);

void file_write(File *file, int number);

int file_eof(File *file);

#endif
