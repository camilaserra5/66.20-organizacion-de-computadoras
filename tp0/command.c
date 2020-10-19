#include <stdio.h>
#include <string.h>
#include "command.h"
#include "encode.h"

void command_create(CommandOptions *opt)
{
	create_file(&opt->input_file);
	create_file(&opt->output_file);
	opt->error_condition = 0;
	opt->encode_option = ENCODE;
	opt->input_path = 0;
	opt->output_path = 0;
}


void set_input_file(CommandOptions *opt, const char *input)
{
	opt->input_path = input;
}

void set_output_file(CommandOptions *opt, const char *output)
{
	opt->output_path = output;
}

void set_encode(CommandOptions *opt)
{
	opt->encode_option = ENCODE;
}

void set_decode(CommandOptions *opt)
{
	opt->encode_option = DECODE;
}

void set_error(CommandOptions *opt, char error_condition)
{
	opt->error_condition = error_condition;
}

int has_errors(CommandOptions *opt)
{
	if( opt->error_condition != 0 ) 
		return 1;
	else
		return 0;
}

void show_error(CommandOptions *opt)
{
	if( opt->error_condition == INVALID_ARGUMENT )
	{
		fprintf(stderr, "Invalid Arguments!\n\n");
		fprintf(stderr, "Options:\n");
		fprintf(stderr, "\t-V,\t--version\tPrint version and quit.\n");
		fprintf(stderr, "\t-h,\t--help\t\tPrint this information.\n");
		fprintf(stderr, "\t-i,\t--input\t\tLocation of the input file.\n");
		fprintf(stderr, "\t-o,\t--output\tLocation of the output file.\n");
		fprintf(stderr, "\t-d,\t--decode\tDecode a base64-encoded file (default is encode).\n");
		fprintf(stderr, "Examples:\n");
		fprintf(stderr, "\ttp0 -i ~/input -o ~/output\n");
		fprintf(stderr, "\ttp0 --decode\n");
	}
	else if( opt->error_condition == NO_ARGUMENTS )
	{
		fprintf(stderr, "No Arguments!\n\n");
		fprintf(stderr, "Options:\n");
		fprintf(stderr, "\t-V,\t--version\tPrint version and quit.\n");
		fprintf(stderr, "\t-h,\t--help\t\tPrint this information.\n");
		fprintf(stderr, "\t-i,\t--input\t\tLocation of the input file.\n");
		fprintf(stderr, "\t-o,\t--output\tLocation of the output file.\n");
		fprintf(stderr, "\t-d,\t--decode\tDecode a base64-encoded file (default is encode).\n");
		fprintf(stderr, "Examples:\n");
		fprintf(stderr, "\ttp0 -i ~/input -o ~/output\n");
		fprintf(stderr, "\ttp0 --decode\n");		
	}
	else
	{
		
	}	
}

void show_help()
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
}

void show_version()
{
  	printf("Version: 1.0\n");
}

char process(CommandOptions *opt)
{
	char result = open_file_read(&opt->input_file, opt->input_path);
	
	if( !result ) {
		result = open_file_write(&opt->output_file, opt->output_path);
	}	
	
	if( !result )
	{
		result = _do_encode_decode(opt);
		close_file(&opt->input_file);
		close_file(&opt->output_file);
	}
	else
	{
		close_file(&opt->input_file);
	}
			
	return result;
}

char _do_encode_decode(CommandOptions *opt)
{
	unsigned char buf_decoded[3];
	unsigned char buf_encoded[4];
	unsigned char count = 0;
	
	if (opt->encode_option == ENCODE)
	{
		while(!file_eof(&opt->input_file))
		{
			memset(buf_decoded, 0, 3);
			unsigned int read = file_read(&opt->input_file, buf_decoded, 3);
			if (read > 0)
			{
				Encode(buf_decoded, read, buf_encoded);
				file_write(&opt->output_file, buf_encoded, 4);
				++count;
				if( count == 18 ) // 19 * 4 =  76 bytes
				{
					file_write(&opt->output_file, (unsigned char*)"\n", 1);
					count = 0;
				}
			}
		}
	}

	if (opt->encode_option == DECODE )
	{
		// TODO: DECODE
	}
	
	return 0;
}
