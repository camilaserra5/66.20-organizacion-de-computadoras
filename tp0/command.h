#ifndef COMMAND_H
#define COMMAND_H

#include "file.h"

#define ENCODE 1
#define DECODE 0

typedef struct {
    File input_file;
    File output_file;
    const char *input_path;
    const char *output_path;
    char encode_option;
} CommandOptions;

void command_create(CommandOptions *opt);

void command_delete(CommandOptions *opt);

void set_input_file(CommandOptions *opt, const char *input);

void set_output_file(CommandOptions *opt, const char *output);

void set_encode(CommandOptions *opt);

void set_decode(CommandOptions *opt);

void help();

void version();

char process(CommandOptions *opt);

#endif