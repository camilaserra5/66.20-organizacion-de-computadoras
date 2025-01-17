#include "file.h"
#include <stdlib.h>
#include <string.h>
#include <errno.h>

void create_file(File *file) {
    file->file = 0;
    file->eof = 0;
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

void file_write_number(File *file, unsigned int number) {
    fprintf(file->file, "%d\n", number);
}

void file_write_text(File *file, const char* text) {
    fprintf(file->file, "%s\n", text);
}

int file_eof(File *file) {
    return file->eof;
}
