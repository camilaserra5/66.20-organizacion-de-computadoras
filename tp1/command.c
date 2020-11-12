#include <stdio.h>
#include <string.h>
#include <stdbool.h>
#include <stdlib.h>
#include "command.h"
#include "limits.h"

extern unsigned int mcm(unsigned int m, unsigned int n);
extern unsigned int mcd(unsigned int m, unsigned int n);

void command_create(command_options_st *opt) {
    create_file(&opt->output_file);
    opt->error_condition = OK;
    opt->output_path = 0;
    opt->multiple = TRUE;
    opt->divisor = TRUE;
    opt->m = MIN_NUMBER;
    opt->n = MIN_NUMBER;
}

void set_output_file(command_options_st *opt, const char *output) {
    if ( strcmp(output,"-") != 0 ) {    	
    	opt->output_path = output;
    }
}

void set_divisor_only(command_options_st *opt) {
    opt->multiple = FALSE;
}

void set_multiple_only(command_options_st *opt) {
    opt->divisor = FALSE;
}

void set_numbers(command_options_st *opt, int argc, char** argv) {

    if( argc >= 3 ) {    
    	char* arg_number_m = argv[argc-2];
    	char* arg_number_n = argv[argc-1];
    	
    	if (strcmp(arg_number_m,"") == 0) arg_number_m = "0";
    	if (strcmp(arg_number_n,"") == 0) arg_number_n = "0";
    	unsigned int m = strtoul(arg_number_m, NULL, 10);
    	unsigned int n = strtoul(arg_number_n, NULL, 10);
    	    	
    	if( m < MIN_NUMBER || m > INT_MAX )
	{
	    	set_error(opt, INVALID_NUMBERS);
	}
	else
	{
		opt->m = m;
	}
	   
	if( n < MIN_NUMBER || n > INT_MAX )
	{
	    	set_error(opt, INVALID_NUMBERS);
	}
	else    
	{
		opt->n = n;    
	}
    }
    else
    {
    	set_error(opt, INVALID_ARGUMENT);
    }
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
    } else if (opt->error_condition == INVALID_NUMBERS) {
    	error_message = "Los numeros deben ser mayores a 2 y menores a INT_MAX!\n\n";
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
    if (open_file_write(&opt->output_file, opt->output_path) == ERROR) {
        return ERROR;
    }

    unsigned int result;
    if (opt->multiple) {
        result = mcm(opt->m, opt->n);      
        if( result > INT_MAX ) {
        	char* overflow_msg = "overflow";
        	file_write_text(&opt->output_file,overflow_msg);
	} else {
	        file_write_number(&opt->output_file, result);
	}
    }

    if (opt->divisor) {
        result = mcd(opt->m, opt->n);
        if( result > INT_MAX ) {
        	char* overflow_msg = "overflow";
        	file_write_text(&opt->output_file,overflow_msg);
        } else {        
	        file_write_number(&opt->output_file, result);
        }
    }

    close_file(&opt->output_file);
    return OK;
}


