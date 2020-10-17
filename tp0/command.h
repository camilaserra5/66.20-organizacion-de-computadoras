#ifndef __COMMAND_H__
#define __COMMAND_H__

#include "file.h"

#define ENCODE 1
#define DECODE 0
#define INVALID_ARGUMENT -1
#define NO_ARGUMENTS -2

typedef struct {
    File input_file;
    File output_file;
    const char *input_path;
    const char *output_path;
    char encode_option;
    char error_condition;
} CommandOptions;

void command_create(CommandOptions *opt);

void command_delete(CommandOptions *opt);

void set_input_file(CommandOptions *opt, const char *input);

void set_output_file(CommandOptions *opt, const char *output);

void set_encode(CommandOptions *opt);

void set_decode(CommandOptions *opt);

void set_error(CommandOptions *opt, char error_condition);

int has_errors(CommandOptions *opt);

void show_error(CommandOptions *opt);

void show_help();

void show_version();

char process(CommandOptions *opt);

#endif
