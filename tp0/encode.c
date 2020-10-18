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


void Encode(const unsigned char* buffer, unsigned int length, unsigned char* output){
	unsigned char b1 = buffer[0];
	unsigned char b2 = buffer[1];
	unsigned char b3 = buffer[2];
	//I retrieve the first 6 bits and operate..
	unsigned char b1aux = b1 >> 2;
	//Recovered the first 6 bits, I look into the encoding in the table.
	output[0] = encoding_table[(int)b1aux];
	//I retrieve the next 6 bits.
	unsigned char b2aux = b1 << 6;
	b2aux = b2aux >> 2;
	b2aux = b2aux | (b2 >> 4);
	//I take look into the encoding table
	output[1] = encoding_table[(int)b2aux];
    	output[2] = BASE64_END;
    	output[3] = BASE64_END;
    	if(length == 3){
        		/*
         	* If I have 3 characters in the buffer I operate
         	* with the last 2 characters.
         	*/
        		unsigned char b3aux = b3 >> 6;
        		unsigned char b3aux2 = b2 << 4;
        		b3aux2 = b3aux2 >> 2;
        		b3aux = b3aux | b3aux2;
        		//I take look into the encoding table.
        		output[2] = encoding_table[(int)b3aux];
        		unsigned char b4aux = b3 << 2;
        		b4aux = b4aux >> 2;
        		//I take look into the encoding table.
        		output[3] =encoding_table[(int)b4aux];
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
