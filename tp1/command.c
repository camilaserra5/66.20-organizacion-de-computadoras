#include <stdio.h>
#include <string.h>
#include <stdbool.h>
#include "command.h"

void command_create(command_options_st *opt) {
    create_file(&opt->output_file);
    opt->error_condition = OK;
    opt->output_path = 0;
}

void set_output_file(command_options_st *opt, const char *output) {
    opt->output_path = output;
}

void set_divisor(command_options_st *opt, const char *m, const char *n) {
    opt->operation = DIVISOR;
    opt->m = m;
    opt->n = n;
}

void set_multiple(command_options_st *opt, const char *m, const char *n) {
    opt->operation = MULTIPLE;
    opt->m = m;
    opt->n = n;
}

void set_error(command_options_st *opt, char error_condition) {
    opt->error_condition = error_condition;
}

int has_errors(command_options_st *opt) {
    return (opt->error_condition != OK) ? ERROR : OK;
}

void show_error(command_options_st *opt) {
    char *error_message = NULL;
    bool should_show_help = false;
    if (opt->error_condition == INVALID_ARGUMENT) {
        error_message = "Argumentos Invalidos!\n\n";
        should_show_help = true;
    } else if (opt->error_condition == NO_ARGUMENTS) {
        error_message = "No se recibieron Argumentos!\n\n";
        should_show_help = true;
    }

    fprintf(stderr, "%s", error_message);
    if (should_show_help) {
        show_help();
    }
}

void show_help() {
    printf("Options:\n");
    printf("\t-h,\t--help\t\tPrint usage information.\n");
    printf("\t-V,\t--version\tPrint version information.\n");
    printf("\t-o,\t--output\tPath to output file.\n");
    printf("\t-d,\t--divisor\tJust the divisor.\n");
    printf("\t-m,\t--multiple\tJust the multiple.\n");
    printf("Examples:\n");
    printf("\tcommon -o - 256 192\n");
}

void show_version() {
    printf("Version: 1.0\n");
}

char process(command_options_st *opt) {
    return OK;
}

