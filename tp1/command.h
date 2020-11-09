#ifndef __COMMAND_H__
#define __COMMAND_H__

#include "file.h"
#include "constants.h"

typedef struct {
    File output_file;
    const char *output_path;
    char error_condition;
    char multiple;
    char divisor;
    unsigned int m;
    unsigned int n;
} command_options_st;

void command_create(command_options_st *opt);

void set_output_file(command_options_st *opt, const char *output);

void set_divisor_only(command_options_st *opt);

void set_multiple_only(command_options_st *opt);

void set_numbers(command_options_st *opt, int argc, char **argv);

void set_error(command_options_st *opt, char error_condition);

int has_errors(command_options_st *opt);

void show_error(command_options_st *opt);

void show_help();

void show_version();

char process(command_options_st *opt);

#endif
