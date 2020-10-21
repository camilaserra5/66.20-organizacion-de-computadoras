#include <stdio.h>
#include <string.h>
#include <stdbool.h>
#include "command.h"
#include "encode.h"

void command_create(command_options_st *opt) {
    create_file(&opt->input_file);
    create_file(&opt->output_file);
    opt->error_condition = OK;
    opt->encode_option = ENCODE;
    opt->input_path = 0;
    opt->output_path = 0;
}

void set_input_file(command_options_st *opt, const char *input) {
    opt->input_path = input;
}

void set_output_file(command_options_st *opt, const char *output) {
    opt->output_path = output;
}

void set_encode(command_options_st *opt) {
    opt->encode_option = ENCODE;
}

void set_decode(command_options_st *opt) {
    opt->encode_option = DECODE;
}

void set_error(command_options_st *opt, char error_condition) {
    opt->error_condition = error_condition;
}

int has_errors(command_options_st *opt) {
    if (opt->error_condition != OK) {
        return ERROR;
    }
    return OK;
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
    } else if (opt->error_condition == INVALID_FILE_LENGTH) {
        error_message = "Longitud de Archivo de Entrada Invalido!\n\n";
    } else if (opt->error_condition == INVALID_CHARS) {
        error_message = "Caracteres invalidos en Archivo Codificado!\n\n";
    }

    fprintf(stderr, "%s", error_message);
    if (should_show_help) {
        show_help();
    }
}

void show_help() {
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

void show_version() {
    printf("Version: 1.0\n");
}

char process(command_options_st *opt) {
    if (open_file_read(&opt->input_file, opt->input_path) == ERROR) {
        return ERROR;
    }
    if (open_file_write(&opt->output_file, opt->output_path) == ERROR) {
        close_file(&opt->input_file);
        return ERROR;
    }

    char result = _do_encode_decode(opt);
    close_file(&opt->input_file);
    close_file(&opt->output_file);
    return result;
}

char _do_encode_decode(command_options_st *opt) {
    unsigned char buf_decoded[3];
    unsigned char buf_encoded[4];
    unsigned char count = 0;

    if (opt->encode_option == ENCODE) {
        while (!file_eof(&opt->input_file)) {
            memset(buf_decoded, 0, 3);
            unsigned int read = file_read(&opt->input_file, buf_decoded, 3);
            if (read > 0) {
                Encode(buf_decoded, read, buf_encoded);
                file_write(&opt->output_file, buf_encoded, 4);
                ++count;
                if (count == 18) // 19 * 4 =  76 bytes
                {
                    file_write(&opt->output_file, (unsigned char *) "\n", 1);
                    count = 0;
                }
            }
        }
    }

    if (opt->encode_option == DECODE) {
        while (!file_eof(&opt->input_file) && !has_errors(opt)) {
            unsigned int read = file_read(&opt->input_file, buf_encoded, 4);
            if (read > 0) {
                if (read != 4) {
                    set_error(opt, INVALID_FILE_LENGTH);
                    show_error(opt);
                } else {
                    ++count;
                    if (count == 18) { // 19 * 4 =  76 bytes
                        unsigned char aux;
                        file_read(&opt->input_file, &aux, 1);
                        count = 0;
                    }

                    if (Decode(buf_encoded, buf_decoded)) {
                        char aux = 0;
                        if (buf_encoded[2] == '=') {
                            ++aux;
                        }
                        if (buf_encoded[3] == '=') {
                            ++aux;
                        }

                        file_write(&opt->output_file, buf_decoded, 3 - aux);
                    } else {
                        set_error(opt, INVALID_CHARS);
                        show_error(opt);
                        unsigned int i;
                        for (i = 0; i < 4; ++i) {
                            fprintf(stderr, "%c", buf_encoded[i]);
                        }
                    }
                }

            }
        }
    }

    return opt->error_condition;
}
