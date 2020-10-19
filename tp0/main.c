#include <stddef.h>
#include <getopt.h>
#include "constants.h"
#include "command.h"

int main(int argc, char** argv) {
	struct option arg_long[] = {
		{ "input", required_argument, NULL, 'i' },
		{ "output", required_argument, NULL, 'o' },
		{ "decode", no_argument, NULL, 'd' },
		{ "help", required_argument, NULL, 'h' },
		{ "version", required_argument, NULL, 'V' },
	};

	char arg_opt_str[] = "i:o:d:hV";
	int arg_opt;
	int arg_opt_idx = 0;

	
	CommandOptions cmd_options;
	// Default Values: encode, stdin as input, stdout as output, stderr as error output
	command_create(&cmd_options); 
	
		
	char should_process = TRUE;
	while ( (arg_opt = getopt_long(argc, argv, arg_opt_str, arg_long, &arg_opt_idx) ) != -1
		&&
		should_process ) {
		      
	      switch( arg_opt ) {
	      	case 'i':
	      		{
	      			// Set Input File
	      			set_input_file(&cmd_options, optarg);
	      		}
	      		break;
	      	case 'o':
	      		{
	      			// Set Output File
	      			set_output_file(&cmd_options, optarg);
	      		}
	      		break;
	      	case 'h':
	      		{
	      			// Show Options
				show_help();
   			      	should_process = FALSE;
	      		}
	      		break;
	      	case 'V':
	      		{
	      			// Show Version
				show_version();
	      			should_process = FALSE;
	      		}
	      		break;
	      	case 'd':
	      		{
	      			// Set Decode option
	      			set_decode(&cmd_options);
	      		}
	      		break;
	      	default:
	      		{
	      			// Set Error Condition = INVALID_ARGUMENT
	      			// [Gonzalo: We analize only valid arguments values here: i, o, h, V, d]
	      			set_error(&cmd_options, INVALID_ARGUMENT);
	      		}
	      		break;
	      }
	}
	
	// Help or Version arguments, no processing
	if (!should_process) return 0;
	

	// Processs Encode/Decode if no errors found, otherwise show error message
	if( !has_errors(&cmd_options) )
	{
		process(&cmd_options);
	}
	else
	{
		show_error(&cmd_options);
		return 1;
	}
	
	
	return 0;
		
}
