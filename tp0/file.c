#include "file.h"
#include <stdlib.h>
#include <string.h>
#include <errno.h>

void create_file(File *file) {
    file->file = 0;
    file->eof = 0;
}

char open_file_read(File *file, const char *route) {
    if (route == NULL) {
        file->file = stdin;
    } else {
        file->file = fopen(route, "rb");
        if (file->file == NULL) {
            int err = errno;
            fprintf(stderr, "Error al abrir archivo: %s\n", strerror(err));
            return ERROR;
        }
    }
    return OK;
}


char open_file_write(File *file, const char *route) {
    if (route == NULL) {
        file->file = stdout;
    } else {
        file->file = fopen(route, "wb");
        if (file->file == NULL) {
            int err = errno;
            fprintf(stderr, "Error al abrir archivo: %s\n", strerror(err));
            return ERROR;
        }
    }
    return OK;
}


int close_file(File *file) {
    if (file->file == stdin || file->file == stdout) return OK;

    int result = fclose(file->file);
    if (result == EOF) {
        int err = errno;
        fprintf(stderr, "Error al cerrar archivo: %s\n", strerror(err));
        return ERROR;
    }
    return OK;
}


unsigned int file_read(File *file, unsigned char *buffer, unsigned int length) {
    unsigned int result = 0;
    if (!file_eof(file)) {
        result = (unsigned int) fread(buffer, sizeof(char), length, file->file);
        if (feof(file->file)) {
            file->eof = 1;
        }
    }

    return result;
}


void file_write(File *file, unsigned char *buffer, unsigned int length) {
    fwrite(buffer, sizeof(char), length, file->file);
}


int file_eof(File *file) {
    return file->eof;
}
