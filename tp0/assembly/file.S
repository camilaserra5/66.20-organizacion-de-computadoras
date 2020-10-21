
file.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <create_file>:
#include "file.h"
#include <stdlib.h>
#include <string.h>
#include <errno.h>

void create_file(File *file) {
   0:	27bdfff8 	addiu	sp,sp,-8
   4:	afbe0004 	sw	s8,4(sp)
   8:	03a0f025 	move	s8,sp
   c:	afc40008 	sw	a0,8(s8)
    file->file = 0;
  10:	8fc20008 	lw	v0,8(s8)
  14:	ac400000 	sw	zero,0(v0)
    file->eof = 0;
  18:	8fc20008 	lw	v0,8(s8)
  1c:	a0400004 	sb	zero,4(v0)
}
  20:	00000000 	nop
  24:	03c0e825 	move	sp,s8
  28:	8fbe0004 	lw	s8,4(sp)
  2c:	27bd0008 	addiu	sp,sp,8
  30:	03e00008 	jr	ra
  34:	00000000 	nop

00000038 <open_file_read>:

char open_file_read(File *file, const char *route) {
  38:	3c1c0000 	lui	gp,0x0
  3c:	279c0000 	addiu	gp,gp,0
  40:	0399e021 	addu	gp,gp,t9
  44:	27bdffd0 	addiu	sp,sp,-48
  48:	afbf002c 	sw	ra,44(sp)
  4c:	afbe0028 	sw	s8,40(sp)
  50:	afb00024 	sw	s0,36(sp)
  54:	03a0f025 	move	s8,sp
  58:	afbc0010 	sw	gp,16(sp)
  5c:	afc40030 	sw	a0,48(s8)
  60:	afc50034 	sw	a1,52(s8)
    if (route == NULL) {
  64:	8fc20034 	lw	v0,52(s8)
  68:	14400007 	bnez	v0,88 <open_file_read+0x50>
  6c:	00000000 	nop
        file->file = stdin;
  70:	8f820000 	lw	v0,0(gp)
  74:	8c430000 	lw	v1,0(v0)
  78:	8fc20030 	lw	v0,48(s8)
  7c:	ac430000 	sw	v1,0(v0)
  80:	1000002b 	b	130 <open_file_read+0xf8>
  84:	00000000 	nop
    } else {
        file->file = fopen(route, "rb");
  88:	8f820000 	lw	v0,0(gp)
  8c:	24450000 	addiu	a1,v0,0
  90:	8fc40034 	lw	a0,52(s8)
  94:	8f820000 	lw	v0,0(gp)
  98:	0040c825 	move	t9,v0
  9c:	0320f809 	jalr	t9
  a0:	00000000 	nop
  a4:	8fdc0010 	lw	gp,16(s8)
  a8:	00401825 	move	v1,v0
  ac:	8fc20030 	lw	v0,48(s8)
  b0:	ac430000 	sw	v1,0(v0)
        if (file->file == NULL) {
  b4:	8fc20030 	lw	v0,48(s8)
  b8:	8c420000 	lw	v0,0(v0)
  bc:	1440001c 	bnez	v0,130 <open_file_read+0xf8>
  c0:	00000000 	nop
            int err = errno;
  c4:	8f820000 	lw	v0,0(gp)
  c8:	0040c825 	move	t9,v0
  cc:	0320f809 	jalr	t9
  d0:	00000000 	nop
  d4:	8fdc0010 	lw	gp,16(s8)
  d8:	8c420000 	lw	v0,0(v0)
  dc:	afc20018 	sw	v0,24(s8)
            fprintf(stderr, "Error al abrir archivo: %s\n", strerror(err));
  e0:	8f820000 	lw	v0,0(gp)
  e4:	8c500000 	lw	s0,0(v0)
  e8:	8fc40018 	lw	a0,24(s8)
  ec:	8f820000 	lw	v0,0(gp)
  f0:	0040c825 	move	t9,v0
  f4:	0320f809 	jalr	t9
  f8:	00000000 	nop
  fc:	8fdc0010 	lw	gp,16(s8)
 100:	00403025 	move	a2,v0
 104:	8f820000 	lw	v0,0(gp)
 108:	24450004 	addiu	a1,v0,4
 10c:	02002025 	move	a0,s0
 110:	8f820000 	lw	v0,0(gp)
 114:	0040c825 	move	t9,v0
 118:	0320f809 	jalr	t9
 11c:	00000000 	nop
 120:	8fdc0010 	lw	gp,16(s8)
            return ERROR;
 124:	24020001 	li	v0,1
 128:	10000002 	b	134 <open_file_read+0xfc>
 12c:	00000000 	nop
        }
    }
    return OK;
 130:	00001025 	move	v0,zero
}
 134:	03c0e825 	move	sp,s8
 138:	8fbf002c 	lw	ra,44(sp)
 13c:	8fbe0028 	lw	s8,40(sp)
 140:	8fb00024 	lw	s0,36(sp)
 144:	27bd0030 	addiu	sp,sp,48
 148:	03e00008 	jr	ra
 14c:	00000000 	nop

00000150 <open_file_write>:


char open_file_write(File *file, const char *route) {
 150:	3c1c0000 	lui	gp,0x0
 154:	279c0000 	addiu	gp,gp,0
 158:	0399e021 	addu	gp,gp,t9
 15c:	27bdffd0 	addiu	sp,sp,-48
 160:	afbf002c 	sw	ra,44(sp)
 164:	afbe0028 	sw	s8,40(sp)
 168:	afb00024 	sw	s0,36(sp)
 16c:	03a0f025 	move	s8,sp
 170:	afbc0010 	sw	gp,16(sp)
 174:	afc40030 	sw	a0,48(s8)
 178:	afc50034 	sw	a1,52(s8)
    if (route == NULL) {
 17c:	8fc20034 	lw	v0,52(s8)
 180:	14400007 	bnez	v0,1a0 <open_file_write+0x50>
 184:	00000000 	nop
        file->file = stdout;
 188:	8f820000 	lw	v0,0(gp)
 18c:	8c430000 	lw	v1,0(v0)
 190:	8fc20030 	lw	v0,48(s8)
 194:	ac430000 	sw	v1,0(v0)
 198:	1000002b 	b	248 <open_file_write+0xf8>
 19c:	00000000 	nop
    } else {
        file->file = fopen(route, "wb");
 1a0:	8f820000 	lw	v0,0(gp)
 1a4:	24450020 	addiu	a1,v0,32
 1a8:	8fc40034 	lw	a0,52(s8)
 1ac:	8f820000 	lw	v0,0(gp)
 1b0:	0040c825 	move	t9,v0
 1b4:	0320f809 	jalr	t9
 1b8:	00000000 	nop
 1bc:	8fdc0010 	lw	gp,16(s8)
 1c0:	00401825 	move	v1,v0
 1c4:	8fc20030 	lw	v0,48(s8)
 1c8:	ac430000 	sw	v1,0(v0)
        if (file->file == NULL) {
 1cc:	8fc20030 	lw	v0,48(s8)
 1d0:	8c420000 	lw	v0,0(v0)
 1d4:	1440001c 	bnez	v0,248 <open_file_write+0xf8>
 1d8:	00000000 	nop
            int err = errno;
 1dc:	8f820000 	lw	v0,0(gp)
 1e0:	0040c825 	move	t9,v0
 1e4:	0320f809 	jalr	t9
 1e8:	00000000 	nop
 1ec:	8fdc0010 	lw	gp,16(s8)
 1f0:	8c420000 	lw	v0,0(v0)
 1f4:	afc20018 	sw	v0,24(s8)
            fprintf(stderr, "Error al abrir archivo: %s\n", strerror(err));
 1f8:	8f820000 	lw	v0,0(gp)
 1fc:	8c500000 	lw	s0,0(v0)
 200:	8fc40018 	lw	a0,24(s8)
 204:	8f820000 	lw	v0,0(gp)
 208:	0040c825 	move	t9,v0
 20c:	0320f809 	jalr	t9
 210:	00000000 	nop
 214:	8fdc0010 	lw	gp,16(s8)
 218:	00403025 	move	a2,v0
 21c:	8f820000 	lw	v0,0(gp)
 220:	24450004 	addiu	a1,v0,4
 224:	02002025 	move	a0,s0
 228:	8f820000 	lw	v0,0(gp)
 22c:	0040c825 	move	t9,v0
 230:	0320f809 	jalr	t9
 234:	00000000 	nop
 238:	8fdc0010 	lw	gp,16(s8)
            return ERROR;
 23c:	24020001 	li	v0,1
 240:	10000002 	b	24c <open_file_write+0xfc>
 244:	00000000 	nop
        }
    }
    return OK;
 248:	00001025 	move	v0,zero
}
 24c:	03c0e825 	move	sp,s8
 250:	8fbf002c 	lw	ra,44(sp)
 254:	8fbe0028 	lw	s8,40(sp)
 258:	8fb00024 	lw	s0,36(sp)
 25c:	27bd0030 	addiu	sp,sp,48
 260:	03e00008 	jr	ra
 264:	00000000 	nop

00000268 <close_file>:


int close_file(File *file) {
 268:	3c1c0000 	lui	gp,0x0
 26c:	279c0000 	addiu	gp,gp,0
 270:	0399e021 	addu	gp,gp,t9
 274:	27bdffd0 	addiu	sp,sp,-48
 278:	afbf002c 	sw	ra,44(sp)
 27c:	afbe0028 	sw	s8,40(sp)
 280:	afb00024 	sw	s0,36(sp)
 284:	03a0f025 	move	s8,sp
 288:	afbc0010 	sw	gp,16(sp)
 28c:	afc40030 	sw	a0,48(s8)
    if (file->file == stdin || file->file == stdout) return OK;
 290:	8fc20030 	lw	v0,48(s8)
 294:	8c430000 	lw	v1,0(v0)
 298:	8f820000 	lw	v0,0(gp)
 29c:	8c420000 	lw	v0,0(v0)
 2a0:	10620007 	beq	v1,v0,2c0 <close_file+0x58>
 2a4:	00000000 	nop
 2a8:	8fc20030 	lw	v0,48(s8)
 2ac:	8c430000 	lw	v1,0(v0)
 2b0:	8f820000 	lw	v0,0(gp)
 2b4:	8c420000 	lw	v0,0(v0)
 2b8:	14620004 	bne	v1,v0,2cc <close_file+0x64>
 2bc:	00000000 	nop
 2c0:	00001025 	move	v0,zero
 2c4:	1000002a 	b	370 <close_file+0x108>
 2c8:	00000000 	nop

    int result = fclose(file->file);
 2cc:	8fc20030 	lw	v0,48(s8)
 2d0:	8c420000 	lw	v0,0(v0)
 2d4:	00402025 	move	a0,v0
 2d8:	8f820000 	lw	v0,0(gp)
 2dc:	0040c825 	move	t9,v0
 2e0:	0320f809 	jalr	t9
 2e4:	00000000 	nop
 2e8:	8fdc0010 	lw	gp,16(s8)
 2ec:	afc20018 	sw	v0,24(s8)
    if (result == EOF) {
 2f0:	8fc30018 	lw	v1,24(s8)
 2f4:	2402ffff 	li	v0,-1
 2f8:	1462001c 	bne	v1,v0,36c <close_file+0x104>
 2fc:	00000000 	nop
        int err = errno;
 300:	8f820000 	lw	v0,0(gp)
 304:	0040c825 	move	t9,v0
 308:	0320f809 	jalr	t9
 30c:	00000000 	nop
 310:	8fdc0010 	lw	gp,16(s8)
 314:	8c420000 	lw	v0,0(v0)
 318:	afc2001c 	sw	v0,28(s8)
        fprintf(stderr, "Error al cerrar archivo: %s\n", strerror(err));
 31c:	8f820000 	lw	v0,0(gp)
 320:	8c500000 	lw	s0,0(v0)
 324:	8fc4001c 	lw	a0,28(s8)
 328:	8f820000 	lw	v0,0(gp)
 32c:	0040c825 	move	t9,v0
 330:	0320f809 	jalr	t9
 334:	00000000 	nop
 338:	8fdc0010 	lw	gp,16(s8)
 33c:	00403025 	move	a2,v0
 340:	8f820000 	lw	v0,0(gp)
 344:	24450024 	addiu	a1,v0,36
 348:	02002025 	move	a0,s0
 34c:	8f820000 	lw	v0,0(gp)
 350:	0040c825 	move	t9,v0
 354:	0320f809 	jalr	t9
 358:	00000000 	nop
 35c:	8fdc0010 	lw	gp,16(s8)
        return ERROR;
 360:	24020001 	li	v0,1
 364:	10000002 	b	370 <close_file+0x108>
 368:	00000000 	nop
    }
    return OK;
 36c:	00001025 	move	v0,zero
}
 370:	03c0e825 	move	sp,s8
 374:	8fbf002c 	lw	ra,44(sp)
 378:	8fbe0028 	lw	s8,40(sp)
 37c:	8fb00024 	lw	s0,36(sp)
 380:	27bd0030 	addiu	sp,sp,48
 384:	03e00008 	jr	ra
 388:	00000000 	nop

0000038c <file_read>:


unsigned int file_read(File *file, unsigned char *buffer, unsigned int length) {
 38c:	3c1c0000 	lui	gp,0x0
 390:	279c0000 	addiu	gp,gp,0
 394:	0399e021 	addu	gp,gp,t9
 398:	27bdffd8 	addiu	sp,sp,-40
 39c:	afbf0024 	sw	ra,36(sp)
 3a0:	afbe0020 	sw	s8,32(sp)
 3a4:	03a0f025 	move	s8,sp
 3a8:	afbc0010 	sw	gp,16(sp)
 3ac:	afc40028 	sw	a0,40(s8)
 3b0:	afc5002c 	sw	a1,44(s8)
 3b4:	afc60030 	sw	a2,48(s8)
    unsigned int result = 0;
 3b8:	afc00018 	sw	zero,24(s8)
    if (!file_eof(file)) {
 3bc:	8fc40028 	lw	a0,40(s8)
 3c0:	8f820000 	lw	v0,0(gp)
 3c4:	0040c825 	move	t9,v0
 3c8:	0320f809 	jalr	t9
 3cc:	00000000 	nop
 3d0:	8fdc0010 	lw	gp,16(s8)
 3d4:	1440001a 	bnez	v0,440 <file_read+0xb4>
 3d8:	00000000 	nop
        result = (unsigned int) fread(buffer, sizeof(char), length, file->file);
 3dc:	8fc20028 	lw	v0,40(s8)
 3e0:	8c420000 	lw	v0,0(v0)
 3e4:	00403825 	move	a3,v0
 3e8:	8fc60030 	lw	a2,48(s8)
 3ec:	24050001 	li	a1,1
 3f0:	8fc4002c 	lw	a0,44(s8)
 3f4:	8f820000 	lw	v0,0(gp)
 3f8:	0040c825 	move	t9,v0
 3fc:	0320f809 	jalr	t9
 400:	00000000 	nop
 404:	8fdc0010 	lw	gp,16(s8)
 408:	afc20018 	sw	v0,24(s8)
        if (feof(file->file)) {
 40c:	8fc20028 	lw	v0,40(s8)
 410:	8c420000 	lw	v0,0(v0)
 414:	00402025 	move	a0,v0
 418:	8f820000 	lw	v0,0(gp)
 41c:	0040c825 	move	t9,v0
 420:	0320f809 	jalr	t9
 424:	00000000 	nop
 428:	8fdc0010 	lw	gp,16(s8)
 42c:	10400004 	beqz	v0,440 <file_read+0xb4>
 430:	00000000 	nop
            file->eof = 1;
 434:	8fc20028 	lw	v0,40(s8)
 438:	24030001 	li	v1,1
 43c:	a0430004 	sb	v1,4(v0)
        }
    }

    return result;
 440:	8fc20018 	lw	v0,24(s8)
}
 444:	03c0e825 	move	sp,s8
 448:	8fbf0024 	lw	ra,36(sp)
 44c:	8fbe0020 	lw	s8,32(sp)
 450:	27bd0028 	addiu	sp,sp,40
 454:	03e00008 	jr	ra
 458:	00000000 	nop

0000045c <file_write>:


void file_write(File *file, unsigned char *buffer, unsigned int length) {
 45c:	3c1c0000 	lui	gp,0x0
 460:	279c0000 	addiu	gp,gp,0
 464:	0399e021 	addu	gp,gp,t9
 468:	27bdffe0 	addiu	sp,sp,-32
 46c:	afbf001c 	sw	ra,28(sp)
 470:	afbe0018 	sw	s8,24(sp)
 474:	03a0f025 	move	s8,sp
 478:	afbc0010 	sw	gp,16(sp)
 47c:	afc40020 	sw	a0,32(s8)
 480:	afc50024 	sw	a1,36(s8)
 484:	afc60028 	sw	a2,40(s8)
    fwrite(buffer, sizeof(char), length, file->file);
 488:	8fc20020 	lw	v0,32(s8)
 48c:	8c420000 	lw	v0,0(v0)
 490:	00403825 	move	a3,v0
 494:	8fc60028 	lw	a2,40(s8)
 498:	24050001 	li	a1,1
 49c:	8fc40024 	lw	a0,36(s8)
 4a0:	8f820000 	lw	v0,0(gp)
 4a4:	0040c825 	move	t9,v0
 4a8:	0320f809 	jalr	t9
 4ac:	00000000 	nop
 4b0:	8fdc0010 	lw	gp,16(s8)
}
 4b4:	00000000 	nop
 4b8:	03c0e825 	move	sp,s8
 4bc:	8fbf001c 	lw	ra,28(sp)
 4c0:	8fbe0018 	lw	s8,24(sp)
 4c4:	27bd0020 	addiu	sp,sp,32
 4c8:	03e00008 	jr	ra
 4cc:	00000000 	nop

000004d0 <file_eof>:


int file_eof(File *file) {
 4d0:	27bdfff8 	addiu	sp,sp,-8
 4d4:	afbe0004 	sw	s8,4(sp)
 4d8:	03a0f025 	move	s8,sp
 4dc:	afc40008 	sw	a0,8(s8)
    return file->eof;
 4e0:	8fc20008 	lw	v0,8(s8)
 4e4:	80420004 	lb	v0,4(v0)
}
 4e8:	03c0e825 	move	sp,s8
 4ec:	8fbe0004 	lw	s8,4(sp)
 4f0:	27bd0008 	addiu	sp,sp,8
 4f4:	03e00008 	jr	ra
 4f8:	00000000 	nop
 4fc:	00000000 	nop
