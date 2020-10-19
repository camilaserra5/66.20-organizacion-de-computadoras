#ifndef __COMMAND_H__
#define __COMMAND_H__

#include "file.h"
#include "constants.h"

typedef struct {
    File input_file;
    File output_file;
    const char *input_path;
    const char *output_path;
    char encode_option;
    char error_condition;
} command_options_st;

void command_create(command_options_st *opt);

void set_input_file(command_options_st *opt, const char *input);

void set_output_file(command_options_st *opt, const char *output);

void set_encode(command_options_st *opt);

void set_decode(command_options_st *opt);

void set_error(command_options_st *opt, char error_condition);

int has_errors(command_options_st *opt);

void show_error(command_options_st *opt);

void show_help();

void show_version();

char process(command_options_st *opt);

char _do_encode_decode(command_options_st *opt);

#endif
