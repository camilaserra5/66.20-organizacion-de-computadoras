#ifndef TP0_ENCODE_H
#define TP0_ENCODE_H

/**
 * Recibe 3 caracteres en buffer y los convierte en 4 caracteres codificados en output.
 * Pre: el buffer contiene length caracteres (1 a 3) y todos los caracteres son validos
 * Post: retorna un buffer de 4 byte con los caracteres en base64.
 */
void Encode(const unsigned char* buffer, unsigned int length, unsigned char* output);


#endif //TP0_ENCODE_H
