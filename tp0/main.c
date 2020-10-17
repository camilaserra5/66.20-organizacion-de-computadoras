#include <stddef.h>
#include <getopt.h>
#include <stdio.h>
#include "constants.h"

int main(int argc, char** argv) {
	struct option arg_long[] = {
		{ "input", required_argument, NULL, 'i' },
		{ "output", required_argument, NULL, 'o' },
		{ "action", required_argument, NULL, 'a' },
		{ "help", required_argument, NULL, 'h' },
		{ "version", required_argument, NULL, 'V' },
	};

	char arg_opt_str[] = "i:o:a:hV";
	int arg_opt;
	int arg_opt_idx = 0;
	char should_process = TRUE;
	
	if(argc == 1) 
	{
		// TODO: Show Error Message
	}
	
	while ( (arg_opt = getopt_long(argc, argv, arg_opt_str, arg_long, &arg_opt_idx) ) != -1
		&&
		should_process ) {
	      
	      switch( arg_opt ) {
	      	case 'i':
	      		{
	      			// TODO: Set Input
	      		}
	      		break;
	      	case 'o':
	      		{
	      			// TODO: Set Output
	      		}
	      		break;
	      	case 'h':
	      		{
				printf("Options:\n");
				printf("\t-V,\t--version\tPrint version and quit.\n");
				printf("\t-h,\t--help\t\tPrint this information.\n");
				printf("\t-i,\t--input\t\tLocation of the input file.\n");
				printf("\t-o,\t--output\tLocation of the output file.\n");
				printf("\t-d,\t--decode\tDecode a base64-encoded file (default is encode).\n");
				printf("Examples:\n");
				printf("\ttp0 -i ~/input -o ~/output\n");
				printf("\ttp0 --decode\n");
   			      	should_process = FALSE;
	      		}
	      		break;
	      	case 'V':
	      		{
	      			printf("Version: 1.0\n");
	      			should_process = FALSE;
	      		}
	      		break;
	      	case 'd':
	      		{
	      			// TODO: Set decode option
	      		}
	      		break;
	      	default:
	      		{
	      			// TODO: Show Error Message - no deberia ser encode aca?
	      			should_process = FALSE;
	      		}
	      		break;
	      }
	}
	
	if (!should_process) return 0;
	
	// TODO: Processs Encode/Decode of input
	
	
	return 1;
		
}
