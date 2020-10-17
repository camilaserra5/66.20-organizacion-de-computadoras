#include <stdio.h>
#include "command.h"

void command_create(CommandOptions *opt)
{
}


void command_delete(CommandOptions *opt)
{
}

void set_input_file(CommandOptions *opt, const char *input)
{
}

void set_output_file(CommandOptions *opt, const char *output)
{
}

void set_encode(CommandOptions *opt)
{
}

void set_decode(CommandOptions *opt)
{
}

void set_error(CommandOptions *opt, char error_condition)
{
}

int has_errors(CommandOptions *opt)
{
	return 0;
}

void show_error(CommandOptions *opt)
{
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
	return 0;
}
