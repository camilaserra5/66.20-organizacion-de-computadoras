#include <stddef.h>
#include <getopt.h>
#include "constants.h"
#include "command.h"

int main(int argc, char **argv) {
    struct option arg_long[] = {
            {"output",   required_argument, NULL, 'o'},
            {"divisor",  no_argument, NULL, 'd'},
            {"multiple", no_argument, NULL, 'm'},
            {"help",     no_argument, NULL, 'h'},
            {"version",  no_argument, NULL, 'V'},
    };

    char arg_opt_str[] = "dmo:hV";
    int arg_opt;
    int arg_opt_idx = 0;

    command_options_st cmd_options;
    command_create(&cmd_options);
	    
    char should_process = TRUE;
    while ((arg_opt = getopt_long(argc, argv, arg_opt_str, arg_long, &arg_opt_idx)) != -1
           &&
           should_process) {
        switch (arg_opt) {
            case 'h': {
                show_help();
                should_process = FALSE;
            	}
                break;
            case 'V': {
                show_version();
                should_process = FALSE;
            	}
                break;
            case 'o': {
                set_output_file(&cmd_options, optarg);
            	}
                break;
            case 'd': {
            	// Setea solo calculo de MCD
                set_divisor_only(&cmd_options);
            	}
                break;
            case 'm': {
            	// Setea solo calculo de MCM
                set_multiple_only(&cmd_options);
            	}
                break;
            default: 
            {
            	set_error(&cmd_options, INVALID_ARGUMENT);               
            }
            break;
        }
    }
        
    set_numbers(&cmd_options, argc, argv);

    if (!should_process) {
        return 0;
    }

    if (has_errors(&cmd_options)) {
        show_error(&cmd_options);
        return 1;
    }

    return process(&cmd_options);
}
