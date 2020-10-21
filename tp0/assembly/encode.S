
encode.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <Encode>:
                                         '4', '5', '6', '7', '8', '9', '+', '/'};

static int encoding_table_size = 64;


void Encode(const unsigned char *buffer, unsigned int length, unsigned char *output) {
   0:	3c1c0000 	lui	gp,0x0
   4:	279c0000 	addiu	gp,gp,0
   8:	0399e021 	addu	gp,gp,t9
   c:	27bdffe0 	addiu	sp,sp,-32
  10:	afbe001c 	sw	s8,28(sp)
  14:	03a0f025 	move	s8,sp
  18:	afbc0000 	sw	gp,0(sp)
  1c:	afc40020 	sw	a0,32(s8)
  20:	afc50024 	sw	a1,36(s8)
  24:	afc60028 	sw	a2,40(s8)
    unsigned char b1 = buffer[0];
  28:	8fc20020 	lw	v0,32(s8)
  2c:	90420000 	lbu	v0,0(v0)
  30:	a3c20008 	sb	v0,8(s8)
    unsigned char b2 = buffer[1];
  34:	8fc20020 	lw	v0,32(s8)
  38:	90420001 	lbu	v0,1(v0)
  3c:	a3c20009 	sb	v0,9(s8)
    unsigned char b3 = buffer[2];
  40:	8fc20020 	lw	v0,32(s8)
  44:	90420002 	lbu	v0,2(v0)
  48:	a3c2000a 	sb	v0,10(s8)
    //I retrieve the first 6 bits and operate..
    unsigned char b1aux = b1 >> 2;
  4c:	93c20008 	lbu	v0,8(s8)
  50:	00021082 	srl	v0,v0,0x2
  54:	a3c2000b 	sb	v0,11(s8)
    //Recovered the first 6 bits, I look into the encoding in the table.
    output[0] = encoding_table[(int) b1aux];
  58:	93c3000b 	lbu	v1,11(s8)
  5c:	8f820000 	lw	v0,0(gp)
  60:	24420000 	addiu	v0,v0,0
  64:	00621021 	addu	v0,v1,v0
  68:	90430000 	lbu	v1,0(v0)
  6c:	8fc20028 	lw	v0,40(s8)
  70:	a0430000 	sb	v1,0(v0)
    //I retrieve the next 6 bits.
    unsigned char b2aux = b1 << 6;
  74:	93c20008 	lbu	v0,8(s8)
  78:	00021180 	sll	v0,v0,0x6
  7c:	a3c2000c 	sb	v0,12(s8)
    b2aux = b2aux >> 2;
  80:	93c2000c 	lbu	v0,12(s8)
  84:	00021082 	srl	v0,v0,0x2
  88:	a3c2000c 	sb	v0,12(s8)
    b2aux = b2aux | (b2 >> 4);
  8c:	93c20009 	lbu	v0,9(s8)
  90:	00021102 	srl	v0,v0,0x4
  94:	304300ff 	andi	v1,v0,0xff
  98:	93c2000c 	lbu	v0,12(s8)
  9c:	00621025 	or	v0,v1,v0
  a0:	a3c2000c 	sb	v0,12(s8)
    //I take look into the encoding table
    output[1] = encoding_table[(int) b2aux];
  a4:	8fc20028 	lw	v0,40(s8)
  a8:	24420001 	addiu	v0,v0,1
  ac:	93c4000c 	lbu	a0,12(s8)
  b0:	8f830000 	lw	v1,0(gp)
  b4:	24630000 	addiu	v1,v1,0
  b8:	00831821 	addu	v1,a0,v1
  bc:	90630000 	lbu	v1,0(v1)
  c0:	a0430000 	sb	v1,0(v0)
    output[2] = BASE64_END;
  c4:	8fc20028 	lw	v0,40(s8)
  c8:	24420002 	addiu	v0,v0,2
  cc:	2403003d 	li	v1,61
  d0:	a0430000 	sb	v1,0(v0)
    output[3] = BASE64_END;
  d4:	8fc20028 	lw	v0,40(s8)
  d8:	24420003 	addiu	v0,v0,3
  dc:	2403003d 	li	v1,61
  e0:	a0430000 	sb	v1,0(v0)
    if (length == 3) {
  e4:	8fc30024 	lw	v1,36(s8)
  e8:	24020003 	li	v0,3
  ec:	14620026 	bne	v1,v0,188 <Encode+0x188>
  f0:	00000000 	nop
        /*
     * If I have 3 characters in the buffer I operate
     * with the last 2 characters.
     */
        unsigned char b3aux = b3 >> 6;
  f4:	93c2000a 	lbu	v0,10(s8)
  f8:	00021182 	srl	v0,v0,0x6
  fc:	a3c2000d 	sb	v0,13(s8)
        unsigned char b3aux2 = b2 << 4;
 100:	93c20009 	lbu	v0,9(s8)
 104:	00021100 	sll	v0,v0,0x4
 108:	a3c2000e 	sb	v0,14(s8)
        b3aux2 = b3aux2 >> 2;
 10c:	93c2000e 	lbu	v0,14(s8)
 110:	00021082 	srl	v0,v0,0x2
 114:	a3c2000e 	sb	v0,14(s8)
        b3aux = b3aux | b3aux2;
 118:	93c3000d 	lbu	v1,13(s8)
 11c:	93c2000e 	lbu	v0,14(s8)
 120:	00621025 	or	v0,v1,v0
 124:	a3c2000d 	sb	v0,13(s8)
        //I take look into the encoding table.
        output[2] = encoding_table[(int) b3aux];
 128:	8fc20028 	lw	v0,40(s8)
 12c:	24420002 	addiu	v0,v0,2
 130:	93c4000d 	lbu	a0,13(s8)
 134:	8f830000 	lw	v1,0(gp)
 138:	24630000 	addiu	v1,v1,0
 13c:	00831821 	addu	v1,a0,v1
 140:	90630000 	lbu	v1,0(v1)
 144:	a0430000 	sb	v1,0(v0)
        unsigned char b4aux = b3 << 2;
 148:	93c2000a 	lbu	v0,10(s8)
 14c:	00021080 	sll	v0,v0,0x2
 150:	a3c2000f 	sb	v0,15(s8)
        b4aux = b4aux >> 2;
 154:	93c2000f 	lbu	v0,15(s8)
 158:	00021082 	srl	v0,v0,0x2
 15c:	a3c2000f 	sb	v0,15(s8)
        //I take look into the encoding table.
        output[3] = encoding_table[(int) b4aux];
 160:	8fc20028 	lw	v0,40(s8)
 164:	24420003 	addiu	v0,v0,3
 168:	93c4000f 	lbu	a0,15(s8)
 16c:	8f830000 	lw	v1,0(gp)
 170:	24630000 	addiu	v1,v1,0
 174:	00831821 	addu	v1,a0,v1
 178:	90630000 	lbu	v1,0(v1)
 17c:	a0430000 	sb	v1,0(v0)
            b3aux2 = b3aux2 >> 2;
            b3aux = b3aux | b3aux2;
            output[2] = encoding_table[(int) b3aux];
        }
    }
}
 180:	1000001a 	b	1ec <Encode+0x1ec>
 184:	00000000 	nop
        if (length == 2) {
 188:	8fc30024 	lw	v1,36(s8)
 18c:	24020002 	li	v0,2
 190:	14620016 	bne	v1,v0,1ec <Encode+0x1ec>
 194:	00000000 	nop
            unsigned char b3aux = b3 >> 6;
 198:	93c2000a 	lbu	v0,10(s8)
 19c:	00021182 	srl	v0,v0,0x6
 1a0:	a3c20010 	sb	v0,16(s8)
            unsigned char b3aux2 = b2 << 4;
 1a4:	93c20009 	lbu	v0,9(s8)
 1a8:	00021100 	sll	v0,v0,0x4
 1ac:	a3c20011 	sb	v0,17(s8)
            b3aux2 = b3aux2 >> 2;
 1b0:	93c20011 	lbu	v0,17(s8)
 1b4:	00021082 	srl	v0,v0,0x2
 1b8:	a3c20011 	sb	v0,17(s8)
            b3aux = b3aux | b3aux2;
 1bc:	93c30010 	lbu	v1,16(s8)
 1c0:	93c20011 	lbu	v0,17(s8)
 1c4:	00621025 	or	v0,v1,v0
 1c8:	a3c20010 	sb	v0,16(s8)
            output[2] = encoding_table[(int) b3aux];
 1cc:	8fc20028 	lw	v0,40(s8)
 1d0:	24420002 	addiu	v0,v0,2
 1d4:	93c40010 	lbu	a0,16(s8)
 1d8:	8f830000 	lw	v1,0(gp)
 1dc:	24630000 	addiu	v1,v1,0
 1e0:	00831821 	addu	v1,a0,v1
 1e4:	90630000 	lbu	v1,0(v1)
 1e8:	a0430000 	sb	v1,0(v0)
}
 1ec:	00000000 	nop
 1f0:	03c0e825 	move	sp,s8
 1f4:	8fbe001c 	lw	s8,28(sp)
 1f8:	27bd0020 	addiu	sp,sp,32
 1fc:	03e00008 	jr	ra
 200:	00000000 	nop

00000204 <DecodeChar>:
 * is the character '='.
 * post: returns the representation (int) of the character
 * in the encoding table.
 *
 */
unsigned char DecodeChar(char character) {
 204:	3c1c0000 	lui	gp,0x0
 208:	279c0000 	addiu	gp,gp,0
 20c:	0399e021 	addu	gp,gp,t9
 210:	27bdffe8 	addiu	sp,sp,-24
 214:	afbe0014 	sw	s8,20(sp)
 218:	03a0f025 	move	s8,sp
 21c:	afbc0000 	sw	gp,0(sp)
 220:	00801025 	move	v0,a0
 224:	a3c20018 	sb	v0,24(s8)
    unsigned char i;
    for (i = 0; i < encoding_table_size; i++) {
 228:	a3c00008 	sb	zero,8(s8)
 22c:	10000010 	b	270 <DecodeChar+0x6c>
 230:	00000000 	nop
        if (encoding_table[i] == character) {
 234:	93c30008 	lbu	v1,8(s8)
 238:	8f820000 	lw	v0,0(gp)
 23c:	24420000 	addiu	v0,v0,0
 240:	00621021 	addu	v0,v1,v0
 244:	90420000 	lbu	v0,0(v0)
 248:	00401825 	move	v1,v0
 24c:	83c20018 	lb	v0,24(s8)
 250:	14620004 	bne	v1,v0,264 <DecodeChar+0x60>
 254:	00000000 	nop
            return i;
 258:	93c20008 	lbu	v0,8(s8)
 25c:	10000012 	b	2a8 <DecodeChar+0xa4>
 260:	00000000 	nop
    for (i = 0; i < encoding_table_size; i++) {
 264:	93c20008 	lbu	v0,8(s8)
 268:	24420001 	addiu	v0,v0,1
 26c:	a3c20008 	sb	v0,8(s8)
 270:	93c30008 	lbu	v1,8(s8)
 274:	8f820000 	lw	v0,0(gp)
 278:	8c420040 	lw	v0,64(v0)
 27c:	0062102a 	slt	v0,v1,v0
 280:	1440ffec 	bnez	v0,234 <DecodeChar+0x30>
 284:	00000000 	nop
        }
    }
    if (character == '=') {
 288:	83c30018 	lb	v1,24(s8)
 28c:	2402003d 	li	v0,61
 290:	14620004 	bne	v1,v0,2a4 <DecodeChar+0xa0>
 294:	00000000 	nop
        return 0;
 298:	00001025 	move	v0,zero
 29c:	10000002 	b	2a8 <DecodeChar+0xa4>
 2a0:	00000000 	nop
    }
    return DECODE_ERROR;
 2a4:	24020064 	li	v0,100
}
 2a8:	03c0e825 	move	sp,s8
 2ac:	8fbe0014 	lw	s8,20(sp)
 2b0:	27bd0018 	addiu	sp,sp,24
 2b4:	03e00008 	jr	ra
 2b8:	00000000 	nop

000002bc <Decode>:
/**
 * Returns a buffer with size 3 with the 4 character base64 decode.
 * Pre: the input buffer contains 4 characters. The output buffer has at least 3 characters
 * Post: returns a buffer with size 3 ASCII characters. returns 0 if error 1 if ok
 */
unsigned char Decode(unsigned char *buf_input, unsigned char *buf_output) {
 2bc:	3c1c0000 	lui	gp,0x0
 2c0:	279c0000 	addiu	gp,gp,0
 2c4:	0399e021 	addu	gp,gp,t9
 2c8:	27bdffd0 	addiu	sp,sp,-48
 2cc:	afbf002c 	sw	ra,44(sp)
 2d0:	afbe0028 	sw	s8,40(sp)
 2d4:	03a0f025 	move	s8,sp
 2d8:	afbc0010 	sw	gp,16(sp)
 2dc:	afc40030 	sw	a0,48(s8)
 2e0:	afc50034 	sw	a1,52(s8)
    unsigned char chars[4];
    unsigned int i;
    for (i = 0; i < 4; ++i) {
 2e4:	afc00018 	sw	zero,24(s8)
 2e8:	1000001e 	b	364 <Decode+0xa8>
 2ec:	00000000 	nop
        chars[i] = DecodeChar(buf_input[i]);
 2f0:	8fc30030 	lw	v1,48(s8)
 2f4:	8fc20018 	lw	v0,24(s8)
 2f8:	00621021 	addu	v0,v1,v0
 2fc:	90420000 	lbu	v0,0(v0)
 300:	7c021420 	seb	v0,v0
 304:	00402025 	move	a0,v0
 308:	8f820000 	lw	v0,0(gp)
 30c:	0040c825 	move	t9,v0
 310:	0320f809 	jalr	t9
 314:	00000000 	nop
 318:	8fdc0010 	lw	gp,16(s8)
 31c:	00402025 	move	a0,v0
 320:	8fc20018 	lw	v0,24(s8)
 324:	27c30018 	addiu	v1,s8,24
 328:	00621021 	addu	v0,v1,v0
 32c:	a0440008 	sb	a0,8(v0)
        if (chars[i] == DECODE_ERROR)
 330:	8fc20018 	lw	v0,24(s8)
 334:	27c30018 	addiu	v1,s8,24
 338:	00621021 	addu	v0,v1,v0
 33c:	90430008 	lbu	v1,8(v0)
 340:	24020064 	li	v0,100
 344:	14620004 	bne	v1,v0,358 <Decode+0x9c>
 348:	00000000 	nop
            return 0;
 34c:	00001025 	move	v0,zero
 350:	1000002e 	b	40c <Decode+0x150>
 354:	00000000 	nop
    for (i = 0; i < 4; ++i) {
 358:	8fc20018 	lw	v0,24(s8)
 35c:	24420001 	addiu	v0,v0,1
 360:	afc20018 	sw	v0,24(s8)
 364:	8fc20018 	lw	v0,24(s8)
 368:	2c420004 	sltiu	v0,v0,4
 36c:	1440ffe0 	bnez	v0,2f0 <Decode+0x34>
 370:	00000000 	nop
    }

    unsigned char char1_aux = chars[0] << 2;
 374:	93c20020 	lbu	v0,32(s8)
 378:	00021080 	sll	v0,v0,0x2
 37c:	a3c2001c 	sb	v0,28(s8)
    //Take the last 2 bits of char2
    unsigned char char2_aux = chars[1] >> 4;
 380:	93c20021 	lbu	v0,33(s8)
 384:	00021102 	srl	v0,v0,0x4
 388:	a3c2001d 	sb	v0,29(s8)
    char1_aux = char1_aux | char2_aux;
 38c:	93c3001c 	lbu	v1,28(s8)
 390:	93c2001d 	lbu	v0,29(s8)
 394:	00621025 	or	v0,v1,v0
 398:	a3c2001c 	sb	v0,28(s8)
    buf_output[0] = char1_aux;
 39c:	8fc20034 	lw	v0,52(s8)
 3a0:	93c3001c 	lbu	v1,28(s8)
 3a4:	a0430000 	sb	v1,0(v0)

    //Take the last 4b of char2 and the first 4b of char3
    char1_aux = chars[1] << 4;
 3a8:	93c20021 	lbu	v0,33(s8)
 3ac:	00021100 	sll	v0,v0,0x4
 3b0:	a3c2001c 	sb	v0,28(s8)
    char2_aux = chars[2] >> 2;
 3b4:	93c20022 	lbu	v0,34(s8)
 3b8:	00021082 	srl	v0,v0,0x2
 3bc:	a3c2001d 	sb	v0,29(s8)
    char2_aux = char1_aux | char2_aux;
 3c0:	93c3001c 	lbu	v1,28(s8)
 3c4:	93c2001d 	lbu	v0,29(s8)
 3c8:	00621025 	or	v0,v1,v0
 3cc:	a3c2001d 	sb	v0,29(s8)
    buf_output[1] = char2_aux;
 3d0:	8fc20034 	lw	v0,52(s8)
 3d4:	24420001 	addiu	v0,v0,1
 3d8:	93c3001d 	lbu	v1,29(s8)
 3dc:	a0430000 	sb	v1,0(v0)

    //Take the last 2b of char3 + the bits of char4
    char1_aux = chars[2] << 6;
 3e0:	93c20022 	lbu	v0,34(s8)
 3e4:	00021180 	sll	v0,v0,0x6
 3e8:	a3c2001c 	sb	v0,28(s8)
    buf_output[2] = char1_aux | chars[3];
 3ec:	8fc20034 	lw	v0,52(s8)
 3f0:	24420002 	addiu	v0,v0,2
 3f4:	93c40023 	lbu	a0,35(s8)
 3f8:	93c3001c 	lbu	v1,28(s8)
 3fc:	00831825 	or	v1,a0,v1
 400:	306300ff 	andi	v1,v1,0xff
 404:	a0430000 	sb	v1,0(v0)
    return 1;
 408:	24020001 	li	v0,1
}
 40c:	03c0e825 	move	sp,s8
 410:	8fbf002c 	lw	ra,44(sp)
 414:	8fbe0028 	lw	s8,40(sp)
 418:	27bd0030 	addiu	sp,sp,48
 41c:	03e00008 	jr	ra
 420:	00000000 	nop
	...
