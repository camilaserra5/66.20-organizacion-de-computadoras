#ifndef __ENCODE_H__
#define __ENCODE_H__

/**
 * Recibe 3 caracteres en buffer y los convierte en 4 caracteres codificados en output.
 * Pre: el buffer contiene length caracteres (1 a 3) y todos los caracteres son validos
 * Post: retorna un buffer de 4 byte con los caracteres en base64.
 */
void Encode(const unsigned char *buffer, unsigned int length, unsigned char *output);

/**
 * Devuelve un buffer de 3 caracteres recibiendo los 4 caracteres codificados en input.
 * Pre:
 * Post:
 */
unsigned char Decode(unsigned char *buf_input, unsigned char *buf_output);

#endif // __ENCODE_H__
