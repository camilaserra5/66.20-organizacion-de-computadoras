#include <stdio.h>
#include <string.h>
#include <stdbool.h>
#include <stdlib.h>
#include "command.h"

void command_create(command_options_st *opt) {
    create_file(&opt->output_file);
    opt->error_condition = OK;
    opt->output_path = 0;
    opt->multiple = TRUE;
    opt->divisor = TRUE;
}

void set_output_file(command_options_st *opt, const char *output) {
    opt->output_path = output;
}

void set_divisor(command_options_st *opt, const char *m, const char *n) {
    opt->multiple = FALSE;
    // TODO: validar que M y N sean numeros entre 2 y MAXINT
    opt->m = m;
    opt->n = n;
}

void set_multiple(command_options_st *opt, const char *m, const char *n) {
    opt->divisor = FALSE;
    // TODO: validar que M y N sean numeros entre 2 y MAXINT
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

int _mcm_rec(int m, int n) {
    if (m == 0)
        return n;
    return _mcm_rec(n % m, m);
}

// mínimo común múltiplo
int _mcm(int m, int n) {
    return (m / _mcm_rec(m, n)) * n;
}

// máximo común divisor
int _mcd(int m, int n) {
    if (m == 0)
        return m;
    if (n == 0)
        return n;

    if (m == n)
        return m;

    if (m > n)
        return _mcd(m - n, n);
    return _mcd(m, n - m);
}

char process(command_options_st *opt) {
    if (open_file_write(&opt->output_file, opt->output_path) == ERROR) {
        return ERROR;
    }

    int result;
    if (opt->multiple) {
        result = _mcm(atoi(opt->m), atoi(opt->n));
        printf("mcm %d", result);
        // TODO: el write creo que no esta funcionando bien :(
        file_write(&opt->output_file, result);
    }

    if (opt->divisor) {
        result = _mcd(atoi(opt->m), atoi(opt->n));
        printf("mcd %d", result);
        // TODO: el write creo que no esta funcionando bien :(
        file_write(&opt->output_file, result);
    }

    close_file(&opt->output_file);
    return OK;
}


