#define BASE64_END '='
#define DECODE_ERROR 100

static unsigned char encoding_table[] = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H',
                                         'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P',
                                         'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X',
                                         'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f',
                                         'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n',
                                         'o', 'p', 'q', 'r', 's', 't', 'u', 'v',
                                         'w', 'x', 'y', 'z', '0', '1', '2', '3',
                                         '4', '5', '6', '7', '8', '9', '+', '/'};

static int encoding_table_size = 64;


void Encode(const unsigned char *buffer, unsigned int length, unsigned char *output) {
    unsigned char b1 = buffer[0];
    unsigned char b2 = buffer[1];
    unsigned char b3 = buffer[2];
    //I retrieve the first 6 bits and operate..
    unsigned char b1aux = b1 >> 2;
    //Recovered the first 6 bits, I look into the encoding in the table.
    output[0] = encoding_table[(int) b1aux];
    //I retrieve the next 6 bits.
    unsigned char b2aux = b1 << 6;
    b2aux = b2aux >> 2;
    b2aux = b2aux | (b2 >> 4);
    //I take look into the encoding table
    output[1] = encoding_table[(int) b2aux];
    output[2] = BASE64_END;
    output[3] = BASE64_END;
    if (length == 3) {
        /*
     * If I have 3 characters in the buffer I operate
     * with the last 2 characters.
     */
        unsigned char b3aux = b3 >> 6;
        unsigned char b3aux2 = b2 << 4;
        b3aux2 = b3aux2 >> 2;
        b3aux = b3aux | b3aux2;
        //I take look into the encoding table.
        output[2] = encoding_table[(int) b3aux];
        unsigned char b4aux = b3 << 2;
        b4aux = b4aux >> 2;
        //I take look into the encoding table.
        output[3] = encoding_table[(int) b4aux];
    } else {
        if (length == 2) {
            /*
             * In case of having only 2 characters in the buffer
             * I recover the remaining character and place the end of the line(=)
             */
            unsigned char b3aux = b3 >> 6;
            unsigned char b3aux2 = b2 << 4;
            b3aux2 = b3aux2 >> 2;
            b3aux = b3aux | b3aux2;
            output[2] = encoding_table[(int) b3aux];
        }
    }
}

/**
 * Returns the representation of the char in the table.
 * pre: character is valid (belongs to table)
 * is the character '='.
 * post: returns the representation (int) of the character
 * in the encoding table.
 *
 */
unsigned char DecodeChar(char character) {
    unsigned char i;
    for (i = 0; i < encoding_table_size; i++) {
        if (encoding_table[i] == character) {
            return i;
        }
    }
    if (character == '=') {
        return 0;
    }
    return DECODE_ERROR;
}

/**
 * Returns a buffer with size 3 with the 4 character base64 decode.
 * Pre: the input buffer contains 4 characters. The output buffer has at least 3 characters
 * Post: returns a buffer with size 3 ASCII characters. returns 0 if error 1 if ok
 */
unsigned char Decode(unsigned char *buf_input, unsigned char *buf_output) {
    unsigned char chars[4];
    unsigned int i;
    for (i = 0; i < 4; ++i) {
        chars[i] = DecodeChar(buf_input[i]);
        if (chars[i] == DECODE_ERROR)
            return 0;
    }

    unsigned char char1_aux = chars[0] << 2;
    //Take the last 2 bits of char2
    unsigned char char2_aux = chars[1] >> 4;
    char1_aux = char1_aux | char2_aux;
    buf_output[0] = char1_aux;

    //Take the last 4b of char2 and the first 4b of char3
    char1_aux = chars[1] << 4;
    char2_aux = chars[2] >> 2;
    char2_aux = char1_aux | char2_aux;
    buf_output[1] = char2_aux;

    //Take the last 2b of char3 + the bits of char4
    char1_aux = chars[2] << 6;
    buf_output[2] = char1_aux | chars[3];
    return 1;
}
