
command.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <command_create>:
#include <string.h>
#include <stdbool.h>
#include "command.h"
#include "encode.h"

void command_create(command_options_st *opt) {
   0:	3c1c0000 	lui	gp,0x0
   4:	279c0000 	addiu	gp,gp,0
   8:	0399e021 	addu	gp,gp,t9
   c:	27bdffe0 	addiu	sp,sp,-32
  10:	afbf001c 	sw	ra,28(sp)
  14:	afbe0018 	sw	s8,24(sp)
  18:	03a0f025 	move	s8,sp
  1c:	afbc0010 	sw	gp,16(sp)
  20:	afc40020 	sw	a0,32(s8)
    create_file(&opt->input_file);
  24:	8fc20020 	lw	v0,32(s8)
  28:	00402025 	move	a0,v0
  2c:	8f820000 	lw	v0,0(gp)
  30:	0040c825 	move	t9,v0
  34:	0320f809 	jalr	t9
  38:	00000000 	nop
  3c:	8fdc0010 	lw	gp,16(s8)
    create_file(&opt->output_file);
  40:	8fc20020 	lw	v0,32(s8)
  44:	24420008 	addiu	v0,v0,8
  48:	00402025 	move	a0,v0
  4c:	8f820000 	lw	v0,0(gp)
  50:	0040c825 	move	t9,v0
  54:	0320f809 	jalr	t9
  58:	00000000 	nop
  5c:	8fdc0010 	lw	gp,16(s8)
    opt->error_condition = OK;
  60:	8fc20020 	lw	v0,32(s8)
  64:	a0400019 	sb	zero,25(v0)
    opt->encode_option = ENCODE;
  68:	8fc20020 	lw	v0,32(s8)
  6c:	24030001 	li	v1,1
  70:	a0430018 	sb	v1,24(v0)
    opt->input_path = 0;
  74:	8fc20020 	lw	v0,32(s8)
  78:	ac400010 	sw	zero,16(v0)
    opt->output_path = 0;
  7c:	8fc20020 	lw	v0,32(s8)
  80:	ac400014 	sw	zero,20(v0)
}
  84:	00000000 	nop
  88:	03c0e825 	move	sp,s8
  8c:	8fbf001c 	lw	ra,28(sp)
  90:	8fbe0018 	lw	s8,24(sp)
  94:	27bd0020 	addiu	sp,sp,32
  98:	03e00008 	jr	ra
  9c:	00000000 	nop

000000a0 <set_input_file>:

void set_input_file(command_options_st *opt, const char *input) {
  a0:	27bdfff8 	addiu	sp,sp,-8
  a4:	afbe0004 	sw	s8,4(sp)
  a8:	03a0f025 	move	s8,sp
  ac:	afc40008 	sw	a0,8(s8)
  b0:	afc5000c 	sw	a1,12(s8)
    opt->input_path = input;
  b4:	8fc20008 	lw	v0,8(s8)
  b8:	8fc3000c 	lw	v1,12(s8)
  bc:	ac430010 	sw	v1,16(v0)
}
  c0:	00000000 	nop
  c4:	03c0e825 	move	sp,s8
  c8:	8fbe0004 	lw	s8,4(sp)
  cc:	27bd0008 	addiu	sp,sp,8
  d0:	03e00008 	jr	ra
  d4:	00000000 	nop

000000d8 <set_output_file>:

void set_output_file(command_options_st *opt, const char *output) {
  d8:	27bdfff8 	addiu	sp,sp,-8
  dc:	afbe0004 	sw	s8,4(sp)
  e0:	03a0f025 	move	s8,sp
  e4:	afc40008 	sw	a0,8(s8)
  e8:	afc5000c 	sw	a1,12(s8)
    opt->output_path = output;
  ec:	8fc20008 	lw	v0,8(s8)
  f0:	8fc3000c 	lw	v1,12(s8)
  f4:	ac430014 	sw	v1,20(v0)
}
  f8:	00000000 	nop
  fc:	03c0e825 	move	sp,s8
 100:	8fbe0004 	lw	s8,4(sp)
 104:	27bd0008 	addiu	sp,sp,8
 108:	03e00008 	jr	ra
 10c:	00000000 	nop

00000110 <set_encode>:

void set_encode(command_options_st *opt) {
 110:	27bdfff8 	addiu	sp,sp,-8
 114:	afbe0004 	sw	s8,4(sp)
 118:	03a0f025 	move	s8,sp
 11c:	afc40008 	sw	a0,8(s8)
    opt->encode_option = ENCODE;
 120:	8fc20008 	lw	v0,8(s8)
 124:	24030001 	li	v1,1
 128:	a0430018 	sb	v1,24(v0)
}
 12c:	00000000 	nop
 130:	03c0e825 	move	sp,s8
 134:	8fbe0004 	lw	s8,4(sp)
 138:	27bd0008 	addiu	sp,sp,8
 13c:	03e00008 	jr	ra
 140:	00000000 	nop

00000144 <set_decode>:

void set_decode(command_options_st *opt) {
 144:	27bdfff8 	addiu	sp,sp,-8
 148:	afbe0004 	sw	s8,4(sp)
 14c:	03a0f025 	move	s8,sp
 150:	afc40008 	sw	a0,8(s8)
    opt->encode_option = DECODE;
 154:	8fc20008 	lw	v0,8(s8)
 158:	a0400018 	sb	zero,24(v0)
}
 15c:	00000000 	nop
 160:	03c0e825 	move	sp,s8
 164:	8fbe0004 	lw	s8,4(sp)
 168:	27bd0008 	addiu	sp,sp,8
 16c:	03e00008 	jr	ra
 170:	00000000 	nop

00000174 <set_error>:

void set_error(command_options_st *opt, char error_condition) {
 174:	27bdfff8 	addiu	sp,sp,-8
 178:	afbe0004 	sw	s8,4(sp)
 17c:	03a0f025 	move	s8,sp
 180:	afc40008 	sw	a0,8(s8)
 184:	00a01025 	move	v0,a1
 188:	a3c2000c 	sb	v0,12(s8)
    opt->error_condition = error_condition;
 18c:	8fc20008 	lw	v0,8(s8)
 190:	93c3000c 	lbu	v1,12(s8)
 194:	a0430019 	sb	v1,25(v0)
}
 198:	00000000 	nop
 19c:	03c0e825 	move	sp,s8
 1a0:	8fbe0004 	lw	s8,4(sp)
 1a4:	27bd0008 	addiu	sp,sp,8
 1a8:	03e00008 	jr	ra
 1ac:	00000000 	nop

000001b0 <has_errors>:

int has_errors(command_options_st *opt) {
 1b0:	27bdfff8 	addiu	sp,sp,-8
 1b4:	afbe0004 	sw	s8,4(sp)
 1b8:	03a0f025 	move	s8,sp
 1bc:	afc40008 	sw	a0,8(s8)
    if (opt->error_condition != OK) {
 1c0:	8fc20008 	lw	v0,8(s8)
 1c4:	80420019 	lb	v0,25(v0)
 1c8:	10400004 	beqz	v0,1dc <has_errors+0x2c>
 1cc:	00000000 	nop
        return ERROR;
 1d0:	24020001 	li	v0,1
 1d4:	10000002 	b	1e0 <has_errors+0x30>
 1d8:	00000000 	nop
    }
    return OK;
 1dc:	00001025 	move	v0,zero
}
 1e0:	03c0e825 	move	sp,s8
 1e4:	8fbe0004 	lw	s8,4(sp)
 1e8:	27bd0008 	addiu	sp,sp,8
 1ec:	03e00008 	jr	ra
 1f0:	00000000 	nop

000001f4 <show_error>:

void show_error(command_options_st *opt) {
 1f4:	3c1c0000 	lui	gp,0x0
 1f8:	279c0000 	addiu	gp,gp,0
 1fc:	0399e021 	addu	gp,gp,t9
 200:	27bdffd8 	addiu	sp,sp,-40
 204:	afbf0024 	sw	ra,36(sp)
 208:	afbe0020 	sw	s8,32(sp)
 20c:	03a0f025 	move	s8,sp
 210:	afbc0010 	sw	gp,16(sp)
 214:	afc40028 	sw	a0,40(s8)
    char *error_message = NULL;
 218:	afc00018 	sw	zero,24(s8)
    bool should_show_help = false;
 21c:	a3c0001c 	sb	zero,28(s8)
    if (opt->error_condition == INVALID_ARGUMENT) {
 220:	8fc20028 	lw	v0,40(s8)
 224:	80430019 	lb	v1,25(v0)
 228:	2402ffff 	li	v0,-1
 22c:	14620008 	bne	v1,v0,250 <show_error+0x5c>
 230:	00000000 	nop
        error_message = "Argumentos Invalidos!\n\n";
 234:	8f820000 	lw	v0,0(gp)
 238:	24420000 	addiu	v0,v0,0
 23c:	afc20018 	sw	v0,24(s8)
        should_show_help = true;
 240:	24020001 	li	v0,1
 244:	a3c2001c 	sb	v0,28(s8)
 248:	1000001f 	b	2c8 <show_error+0xd4>
 24c:	00000000 	nop
    } else if (opt->error_condition == NO_ARGUMENTS) {
 250:	8fc20028 	lw	v0,40(s8)
 254:	80430019 	lb	v1,25(v0)
 258:	2402fffe 	li	v0,-2
 25c:	14620008 	bne	v1,v0,280 <show_error+0x8c>
 260:	00000000 	nop
        error_message = "No se recibieron Argumentos!\n\n";
 264:	8f820000 	lw	v0,0(gp)
 268:	24420018 	addiu	v0,v0,24
 26c:	afc20018 	sw	v0,24(s8)
        should_show_help = true;
 270:	24020001 	li	v0,1
 274:	a3c2001c 	sb	v0,28(s8)
 278:	10000013 	b	2c8 <show_error+0xd4>
 27c:	00000000 	nop
    } else if (opt->error_condition == INVALID_FILE_LENGTH) {
 280:	8fc20028 	lw	v0,40(s8)
 284:	80430019 	lb	v1,25(v0)
 288:	2402fffc 	li	v0,-4
 28c:	14620006 	bne	v1,v0,2a8 <show_error+0xb4>
 290:	00000000 	nop
        error_message = "Longitud de Archivo de Entrada Invalido!\n\n";
 294:	8f820000 	lw	v0,0(gp)
 298:	24420038 	addiu	v0,v0,56
 29c:	afc20018 	sw	v0,24(s8)
 2a0:	10000009 	b	2c8 <show_error+0xd4>
 2a4:	00000000 	nop
    } else if (opt->error_condition == INVALID_CHARS) {
 2a8:	8fc20028 	lw	v0,40(s8)
 2ac:	80430019 	lb	v1,25(v0)
 2b0:	2402fffb 	li	v0,-5
 2b4:	14620004 	bne	v1,v0,2c8 <show_error+0xd4>
 2b8:	00000000 	nop
        error_message = "Caracteres invalidos en Archivo Codificado!\n\n";
 2bc:	8f820000 	lw	v0,0(gp)
 2c0:	24420064 	addiu	v0,v0,100
 2c4:	afc20018 	sw	v0,24(s8)
    }

    fprintf(stderr, "%s", error_message);
 2c8:	8f820000 	lw	v0,0(gp)
 2cc:	8c420000 	lw	v0,0(v0)
 2d0:	00402825 	move	a1,v0
 2d4:	8fc40018 	lw	a0,24(s8)
 2d8:	8f820000 	lw	v0,0(gp)
 2dc:	0040c825 	move	t9,v0
 2e0:	0320f809 	jalr	t9
 2e4:	00000000 	nop
 2e8:	8fdc0010 	lw	gp,16(s8)
    if (should_show_help) {
 2ec:	93c2001c 	lbu	v0,28(s8)
 2f0:	10400006 	beqz	v0,30c <show_error+0x118>
 2f4:	00000000 	nop
        show_help();
 2f8:	8f820000 	lw	v0,0(gp)
 2fc:	0040c825 	move	t9,v0
 300:	0320f809 	jalr	t9
 304:	00000000 	nop
 308:	8fdc0010 	lw	gp,16(s8)
    }
}
 30c:	00000000 	nop
 310:	03c0e825 	move	sp,s8
 314:	8fbf0024 	lw	ra,36(sp)
 318:	8fbe0020 	lw	s8,32(sp)
 31c:	27bd0028 	addiu	sp,sp,40
 320:	03e00008 	jr	ra
 324:	00000000 	nop

00000328 <show_help>:

void show_help() {
 328:	3c1c0000 	lui	gp,0x0
 32c:	279c0000 	addiu	gp,gp,0
 330:	0399e021 	addu	gp,gp,t9
 334:	27bdffe0 	addiu	sp,sp,-32
 338:	afbf001c 	sw	ra,28(sp)
 33c:	afbe0018 	sw	s8,24(sp)
 340:	03a0f025 	move	s8,sp
 344:	afbc0010 	sw	gp,16(sp)
    printf("Options:\n");
 348:	8f820000 	lw	v0,0(gp)
 34c:	24440094 	addiu	a0,v0,148
 350:	8f820000 	lw	v0,0(gp)
 354:	0040c825 	move	t9,v0
 358:	0320f809 	jalr	t9
 35c:	00000000 	nop
 360:	8fdc0010 	lw	gp,16(s8)
    printf("\t-V,\t--version\tPrint version and quit.\n");
 364:	8f820000 	lw	v0,0(gp)
 368:	244400a0 	addiu	a0,v0,160
 36c:	8f820000 	lw	v0,0(gp)
 370:	0040c825 	move	t9,v0
 374:	0320f809 	jalr	t9
 378:	00000000 	nop
 37c:	8fdc0010 	lw	gp,16(s8)
    printf("\t-h,\t--help\t\tPrint this information.\n");
 380:	8f820000 	lw	v0,0(gp)
 384:	244400c8 	addiu	a0,v0,200
 388:	8f820000 	lw	v0,0(gp)
 38c:	0040c825 	move	t9,v0
 390:	0320f809 	jalr	t9
 394:	00000000 	nop
 398:	8fdc0010 	lw	gp,16(s8)
    printf("\t-i,\t--input\t\tLocation of the input file.\n");
 39c:	8f820000 	lw	v0,0(gp)
 3a0:	244400f0 	addiu	a0,v0,240
 3a4:	8f820000 	lw	v0,0(gp)
 3a8:	0040c825 	move	t9,v0
 3ac:	0320f809 	jalr	t9
 3b0:	00000000 	nop
 3b4:	8fdc0010 	lw	gp,16(s8)
    printf("\t-o,\t--output\tLocation of the output file.\n");
 3b8:	8f820000 	lw	v0,0(gp)
 3bc:	2444011c 	addiu	a0,v0,284
 3c0:	8f820000 	lw	v0,0(gp)
 3c4:	0040c825 	move	t9,v0
 3c8:	0320f809 	jalr	t9
 3cc:	00000000 	nop
 3d0:	8fdc0010 	lw	gp,16(s8)
    printf("\t-d,\t--decode\tDecode a base64-encoded file (default is encode).\n");
 3d4:	8f820000 	lw	v0,0(gp)
 3d8:	24440148 	addiu	a0,v0,328
 3dc:	8f820000 	lw	v0,0(gp)
 3e0:	0040c825 	move	t9,v0
 3e4:	0320f809 	jalr	t9
 3e8:	00000000 	nop
 3ec:	8fdc0010 	lw	gp,16(s8)
    printf("Examples:\n");
 3f0:	8f820000 	lw	v0,0(gp)
 3f4:	24440188 	addiu	a0,v0,392
 3f8:	8f820000 	lw	v0,0(gp)
 3fc:	0040c825 	move	t9,v0
 400:	0320f809 	jalr	t9
 404:	00000000 	nop
 408:	8fdc0010 	lw	gp,16(s8)
    printf("\ttp0 -i ~/input -o ~/output\n");
 40c:	8f820000 	lw	v0,0(gp)
 410:	24440194 	addiu	a0,v0,404
 414:	8f820000 	lw	v0,0(gp)
 418:	0040c825 	move	t9,v0
 41c:	0320f809 	jalr	t9
 420:	00000000 	nop
 424:	8fdc0010 	lw	gp,16(s8)
    printf("\ttp0 --decode\n");
 428:	8f820000 	lw	v0,0(gp)
 42c:	244401b0 	addiu	a0,v0,432
 430:	8f820000 	lw	v0,0(gp)
 434:	0040c825 	move	t9,v0
 438:	0320f809 	jalr	t9
 43c:	00000000 	nop
 440:	8fdc0010 	lw	gp,16(s8)
}
 444:	00000000 	nop
 448:	03c0e825 	move	sp,s8
 44c:	8fbf001c 	lw	ra,28(sp)
 450:	8fbe0018 	lw	s8,24(sp)
 454:	27bd0020 	addiu	sp,sp,32
 458:	03e00008 	jr	ra
 45c:	00000000 	nop

00000460 <show_version>:

void show_version() {
 460:	3c1c0000 	lui	gp,0x0
 464:	279c0000 	addiu	gp,gp,0
 468:	0399e021 	addu	gp,gp,t9
 46c:	27bdffe0 	addiu	sp,sp,-32
 470:	afbf001c 	sw	ra,28(sp)
 474:	afbe0018 	sw	s8,24(sp)
 478:	03a0f025 	move	s8,sp
 47c:	afbc0010 	sw	gp,16(sp)
    printf("Version: 1.0\n");
 480:	8f820000 	lw	v0,0(gp)
 484:	244401c0 	addiu	a0,v0,448
 488:	8f820000 	lw	v0,0(gp)
 48c:	0040c825 	move	t9,v0
 490:	0320f809 	jalr	t9
 494:	00000000 	nop
 498:	8fdc0010 	lw	gp,16(s8)
}
 49c:	00000000 	nop
 4a0:	03c0e825 	move	sp,s8
 4a4:	8fbf001c 	lw	ra,28(sp)
 4a8:	8fbe0018 	lw	s8,24(sp)
 4ac:	27bd0020 	addiu	sp,sp,32
 4b0:	03e00008 	jr	ra
 4b4:	00000000 	nop

000004b8 <process>:

char process(command_options_st *opt) {
 4b8:	3c1c0000 	lui	gp,0x0
 4bc:	279c0000 	addiu	gp,gp,0
 4c0:	0399e021 	addu	gp,gp,t9
 4c4:	27bdffd8 	addiu	sp,sp,-40
 4c8:	afbf0024 	sw	ra,36(sp)
 4cc:	afbe0020 	sw	s8,32(sp)
 4d0:	03a0f025 	move	s8,sp
 4d4:	afbc0010 	sw	gp,16(sp)
 4d8:	afc40028 	sw	a0,40(s8)
    char result = open_file_read(&opt->input_file, opt->input_path);
 4dc:	8fc30028 	lw	v1,40(s8)
 4e0:	8fc20028 	lw	v0,40(s8)
 4e4:	8c420010 	lw	v0,16(v0)
 4e8:	00402825 	move	a1,v0
 4ec:	00602025 	move	a0,v1
 4f0:	8f820000 	lw	v0,0(gp)
 4f4:	0040c825 	move	t9,v0
 4f8:	0320f809 	jalr	t9
 4fc:	00000000 	nop
 500:	8fdc0010 	lw	gp,16(s8)
 504:	a3c20018 	sb	v0,24(s8)
    if (!result) {
 508:	83c20018 	lb	v0,24(s8)
 50c:	1440000d 	bnez	v0,544 <process+0x8c>
 510:	00000000 	nop
        result = open_file_write(&opt->output_file, opt->output_path);
 514:	8fc20028 	lw	v0,40(s8)
 518:	24430008 	addiu	v1,v0,8
 51c:	8fc20028 	lw	v0,40(s8)
 520:	8c420014 	lw	v0,20(v0)
 524:	00402825 	move	a1,v0
 528:	00602025 	move	a0,v1
 52c:	8f820000 	lw	v0,0(gp)
 530:	0040c825 	move	t9,v0
 534:	0320f809 	jalr	t9
 538:	00000000 	nop
 53c:	8fdc0010 	lw	gp,16(s8)
 540:	a3c20018 	sb	v0,24(s8)
    }

    if (!result) {
 544:	83c20018 	lb	v0,24(s8)
 548:	14400019 	bnez	v0,5b0 <process+0xf8>
 54c:	00000000 	nop
        result = _do_encode_decode(opt);
 550:	8fc40028 	lw	a0,40(s8)
 554:	8f820000 	lw	v0,0(gp)
 558:	0040c825 	move	t9,v0
 55c:	0320f809 	jalr	t9
 560:	00000000 	nop
 564:	8fdc0010 	lw	gp,16(s8)
 568:	a3c20018 	sb	v0,24(s8)
        close_file(&opt->input_file);
 56c:	8fc20028 	lw	v0,40(s8)
 570:	00402025 	move	a0,v0
 574:	8f820000 	lw	v0,0(gp)
 578:	0040c825 	move	t9,v0
 57c:	0320f809 	jalr	t9
 580:	00000000 	nop
 584:	8fdc0010 	lw	gp,16(s8)
        close_file(&opt->output_file);
 588:	8fc20028 	lw	v0,40(s8)
 58c:	24420008 	addiu	v0,v0,8
 590:	00402025 	move	a0,v0
 594:	8f820000 	lw	v0,0(gp)
 598:	0040c825 	move	t9,v0
 59c:	0320f809 	jalr	t9
 5a0:	00000000 	nop
 5a4:	8fdc0010 	lw	gp,16(s8)
 5a8:	10000008 	b	5cc <process+0x114>
 5ac:	00000000 	nop
    } else {
        close_file(&opt->input_file);
 5b0:	8fc20028 	lw	v0,40(s8)
 5b4:	00402025 	move	a0,v0
 5b8:	8f820000 	lw	v0,0(gp)
 5bc:	0040c825 	move	t9,v0
 5c0:	0320f809 	jalr	t9
 5c4:	00000000 	nop
 5c8:	8fdc0010 	lw	gp,16(s8)
    }

    return result;
 5cc:	83c20018 	lb	v0,24(s8)
}
 5d0:	03c0e825 	move	sp,s8
 5d4:	8fbf0024 	lw	ra,36(sp)
 5d8:	8fbe0020 	lw	s8,32(sp)
 5dc:	27bd0028 	addiu	sp,sp,40
 5e0:	03e00008 	jr	ra
 5e4:	00000000 	nop

000005e8 <_do_encode_decode>:

char _do_encode_decode(command_options_st *opt) {
 5e8:	3c1c0000 	lui	gp,0x0
 5ec:	279c0000 	addiu	gp,gp,0
 5f0:	0399e021 	addu	gp,gp,t9
 5f4:	27bdffc0 	addiu	sp,sp,-64
 5f8:	afbf003c 	sw	ra,60(sp)
 5fc:	afbe0038 	sw	s8,56(sp)
 600:	03a0f025 	move	s8,sp
 604:	afbc0010 	sw	gp,16(sp)
 608:	afc40040 	sw	a0,64(s8)
    unsigned char buf_decoded[3];
    unsigned char buf_encoded[4];
    unsigned char count = 0;
 60c:	a3c00018 	sb	zero,24(s8)

    if (opt->encode_option == ENCODE) {
 610:	8fc20040 	lw	v0,64(s8)
 614:	80430018 	lb	v1,24(v0)
 618:	24020001 	li	v0,1
 61c:	1462004b 	bne	v1,v0,74c <_do_encode_decode+0x164>
 620:	00000000 	nop
        while (!file_eof(&opt->input_file)) {
 624:	10000040 	b	728 <_do_encode_decode+0x140>
 628:	00000000 	nop
            memset(buf_decoded, 0, 3);
 62c:	27c20028 	addiu	v0,s8,40
 630:	24060003 	li	a2,3
 634:	00002825 	move	a1,zero
 638:	00402025 	move	a0,v0
 63c:	8f820000 	lw	v0,0(gp)
 640:	0040c825 	move	t9,v0
 644:	0320f809 	jalr	t9
 648:	00000000 	nop
 64c:	8fdc0010 	lw	gp,16(s8)
            unsigned int read = file_read(&opt->input_file, buf_decoded, 3);
 650:	8fc20040 	lw	v0,64(s8)
 654:	27c30028 	addiu	v1,s8,40
 658:	24060003 	li	a2,3
 65c:	00602825 	move	a1,v1
 660:	00402025 	move	a0,v0
 664:	8f820000 	lw	v0,0(gp)
 668:	0040c825 	move	t9,v0
 66c:	0320f809 	jalr	t9
 670:	00000000 	nop
 674:	8fdc0010 	lw	gp,16(s8)
 678:	afc20020 	sw	v0,32(s8)
            if (read > 0) {
 67c:	8fc20020 	lw	v0,32(s8)
 680:	10400029 	beqz	v0,728 <_do_encode_decode+0x140>
 684:	00000000 	nop
                Encode(buf_decoded, read, buf_encoded);
 688:	27c3002c 	addiu	v1,s8,44
 68c:	27c20028 	addiu	v0,s8,40
 690:	00603025 	move	a2,v1
 694:	8fc50020 	lw	a1,32(s8)
 698:	00402025 	move	a0,v0
 69c:	8f820000 	lw	v0,0(gp)
 6a0:	0040c825 	move	t9,v0
 6a4:	0320f809 	jalr	t9
 6a8:	00000000 	nop
 6ac:	8fdc0010 	lw	gp,16(s8)
                file_write(&opt->output_file, buf_encoded, 4);
 6b0:	8fc20040 	lw	v0,64(s8)
 6b4:	24420008 	addiu	v0,v0,8
 6b8:	27c3002c 	addiu	v1,s8,44
 6bc:	24060004 	li	a2,4
 6c0:	00602825 	move	a1,v1
 6c4:	00402025 	move	a0,v0
 6c8:	8f820000 	lw	v0,0(gp)
 6cc:	0040c825 	move	t9,v0
 6d0:	0320f809 	jalr	t9
 6d4:	00000000 	nop
 6d8:	8fdc0010 	lw	gp,16(s8)
                ++count;
 6dc:	93c20018 	lbu	v0,24(s8)
 6e0:	24420001 	addiu	v0,v0,1
 6e4:	a3c20018 	sb	v0,24(s8)
                if (count == 18) // 19 * 4 =  76 bytes
 6e8:	93c30018 	lbu	v1,24(s8)
 6ec:	24020012 	li	v0,18
 6f0:	1462000d 	bne	v1,v0,728 <_do_encode_decode+0x140>
 6f4:	00000000 	nop
                {
                    file_write(&opt->output_file, (unsigned char *) "\n", 1);
 6f8:	8fc20040 	lw	v0,64(s8)
 6fc:	24430008 	addiu	v1,v0,8
 700:	24060001 	li	a2,1
 704:	8f820000 	lw	v0,0(gp)
 708:	244501d0 	addiu	a1,v0,464
 70c:	00602025 	move	a0,v1
 710:	8f820000 	lw	v0,0(gp)
 714:	0040c825 	move	t9,v0
 718:	0320f809 	jalr	t9
 71c:	00000000 	nop
 720:	8fdc0010 	lw	gp,16(s8)
                    count = 0;
 724:	a3c00018 	sb	zero,24(s8)
        while (!file_eof(&opt->input_file)) {
 728:	8fc20040 	lw	v0,64(s8)
 72c:	00402025 	move	a0,v0
 730:	8f820000 	lw	v0,0(gp)
 734:	0040c825 	move	t9,v0
 738:	0320f809 	jalr	t9
 73c:	00000000 	nop
 740:	8fdc0010 	lw	gp,16(s8)
 744:	1040ffb9 	beqz	v0,62c <_do_encode_decode+0x44>
 748:	00000000 	nop
                }
            }
        }
    }

    if (opt->encode_option == DECODE) {
 74c:	8fc20040 	lw	v0,64(s8)
 750:	80420018 	lb	v0,24(v0)
 754:	14400097 	bnez	v0,9b4 <_do_encode_decode+0x3cc>
 758:	00000000 	nop
        while (!file_eof(&opt->input_file) && !has_errors(opt)) {
 75c:	10000084 	b	970 <_do_encode_decode+0x388>
 760:	00000000 	nop
            unsigned int read = file_read(&opt->input_file, buf_encoded, 4);
 764:	8fc20040 	lw	v0,64(s8)
 768:	27c3002c 	addiu	v1,s8,44
 76c:	24060004 	li	a2,4
 770:	00602825 	move	a1,v1
 774:	00402025 	move	a0,v0
 778:	8f820000 	lw	v0,0(gp)
 77c:	0040c825 	move	t9,v0
 780:	0320f809 	jalr	t9
 784:	00000000 	nop
 788:	8fdc0010 	lw	gp,16(s8)
 78c:	afc20024 	sw	v0,36(s8)
            if (read > 0) {
 790:	8fc20024 	lw	v0,36(s8)
 794:	10400076 	beqz	v0,970 <_do_encode_decode+0x388>
 798:	00000000 	nop
                if (read != 4) {
 79c:	8fc30024 	lw	v1,36(s8)
 7a0:	24020004 	li	v0,4
 7a4:	10620010 	beq	v1,v0,7e8 <_do_encode_decode+0x200>
 7a8:	00000000 	nop
                    set_error(opt, INVALID_FILE_LENGTH);
 7ac:	2405fffc 	li	a1,-4
 7b0:	8fc40040 	lw	a0,64(s8)
 7b4:	8f820000 	lw	v0,0(gp)
 7b8:	0040c825 	move	t9,v0
 7bc:	0320f809 	jalr	t9
 7c0:	00000000 	nop
 7c4:	8fdc0010 	lw	gp,16(s8)
                    show_error(opt);
 7c8:	8fc40040 	lw	a0,64(s8)
 7cc:	8f820000 	lw	v0,0(gp)
 7d0:	0040c825 	move	t9,v0
 7d4:	0320f809 	jalr	t9
 7d8:	00000000 	nop
 7dc:	8fdc0010 	lw	gp,16(s8)
 7e0:	10000063 	b	970 <_do_encode_decode+0x388>
 7e4:	00000000 	nop
                } else {
                    ++count;
 7e8:	93c20018 	lbu	v0,24(s8)
 7ec:	24420001 	addiu	v0,v0,1
 7f0:	a3c20018 	sb	v0,24(s8)
                    if (count == 18) { // 19 * 4 =  76 bytes
 7f4:	93c30018 	lbu	v1,24(s8)
 7f8:	24020012 	li	v0,18
 7fc:	1462000c 	bne	v1,v0,830 <_do_encode_decode+0x248>
 800:	00000000 	nop
                        unsigned char aux;
                        file_read(&opt->input_file, &aux, 1);
 804:	8fc20040 	lw	v0,64(s8)
 808:	27c30030 	addiu	v1,s8,48
 80c:	24060001 	li	a2,1
 810:	00602825 	move	a1,v1
 814:	00402025 	move	a0,v0
 818:	8f820000 	lw	v0,0(gp)
 81c:	0040c825 	move	t9,v0
 820:	0320f809 	jalr	t9
 824:	00000000 	nop
 828:	8fdc0010 	lw	gp,16(s8)
                        count = 0;
 82c:	a3c00018 	sb	zero,24(s8)
                    }

                    if (Decode(buf_encoded, buf_decoded)) {
 830:	27c30028 	addiu	v1,s8,40
 834:	27c2002c 	addiu	v0,s8,44
 838:	00602825 	move	a1,v1
 83c:	00402025 	move	a0,v0
 840:	8f820000 	lw	v0,0(gp)
 844:	0040c825 	move	t9,v0
 848:	0320f809 	jalr	t9
 84c:	00000000 	nop
 850:	8fdc0010 	lw	gp,16(s8)
 854:	10400022 	beqz	v0,8e0 <_do_encode_decode+0x2f8>
 858:	00000000 	nop
                        char aux = 0;
 85c:	a3c00019 	sb	zero,25(s8)
                        if (buf_encoded[2] == '=') {
 860:	93c3002e 	lbu	v1,46(s8)
 864:	2402003d 	li	v0,61
 868:	14620005 	bne	v1,v0,880 <_do_encode_decode+0x298>
 86c:	00000000 	nop
                            ++aux;
 870:	93c20019 	lbu	v0,25(s8)
 874:	24420001 	addiu	v0,v0,1
 878:	304200ff 	andi	v0,v0,0xff
 87c:	a3c20019 	sb	v0,25(s8)
                        }
                        if (buf_encoded[3] == '=') {
 880:	93c3002f 	lbu	v1,47(s8)
 884:	2402003d 	li	v0,61
 888:	14620005 	bne	v1,v0,8a0 <_do_encode_decode+0x2b8>
 88c:	00000000 	nop
                            ++aux;
 890:	93c20019 	lbu	v0,25(s8)
 894:	24420001 	addiu	v0,v0,1
 898:	304200ff 	andi	v0,v0,0xff
 89c:	a3c20019 	sb	v0,25(s8)
                        }

                        file_write(&opt->output_file, buf_decoded, 3 - aux);
 8a0:	8fc20040 	lw	v0,64(s8)
 8a4:	24440008 	addiu	a0,v0,8
 8a8:	83c20019 	lb	v0,25(s8)
 8ac:	24030003 	li	v1,3
 8b0:	00621023 	subu	v0,v1,v0
 8b4:	00401825 	move	v1,v0
 8b8:	27c20028 	addiu	v0,s8,40
 8bc:	00603025 	move	a2,v1
 8c0:	00402825 	move	a1,v0
 8c4:	8f820000 	lw	v0,0(gp)
 8c8:	0040c825 	move	t9,v0
 8cc:	0320f809 	jalr	t9
 8d0:	00000000 	nop
 8d4:	8fdc0010 	lw	gp,16(s8)
 8d8:	10000025 	b	970 <_do_encode_decode+0x388>
 8dc:	00000000 	nop
                    } else {
                        set_error(opt, INVALID_CHARS);
 8e0:	2405fffb 	li	a1,-5
 8e4:	8fc40040 	lw	a0,64(s8)
 8e8:	8f820000 	lw	v0,0(gp)
 8ec:	0040c825 	move	t9,v0
 8f0:	0320f809 	jalr	t9
 8f4:	00000000 	nop
 8f8:	8fdc0010 	lw	gp,16(s8)
                        show_error(opt);
 8fc:	8fc40040 	lw	a0,64(s8)
 900:	8f820000 	lw	v0,0(gp)
 904:	0040c825 	move	t9,v0
 908:	0320f809 	jalr	t9
 90c:	00000000 	nop
 910:	8fdc0010 	lw	gp,16(s8)
                        unsigned int i;
                        for (i = 0; i < 4; ++i) {
 914:	afc0001c 	sw	zero,28(s8)
 918:	10000011 	b	960 <_do_encode_decode+0x378>
 91c:	00000000 	nop
                            fprintf(stderr, "%c", buf_encoded[i]);
 920:	8f820000 	lw	v0,0(gp)
 924:	8c440000 	lw	a0,0(v0)
 928:	8fc2001c 	lw	v0,28(s8)
 92c:	27c30018 	addiu	v1,s8,24
 930:	00621021 	addu	v0,v1,v0
 934:	90420014 	lbu	v0,20(v0)
 938:	00802825 	move	a1,a0
 93c:	00402025 	move	a0,v0
 940:	8f820000 	lw	v0,0(gp)
 944:	0040c825 	move	t9,v0
 948:	0320f809 	jalr	t9
 94c:	00000000 	nop
 950:	8fdc0010 	lw	gp,16(s8)
                        for (i = 0; i < 4; ++i) {
 954:	8fc2001c 	lw	v0,28(s8)
 958:	24420001 	addiu	v0,v0,1
 95c:	afc2001c 	sw	v0,28(s8)
 960:	8fc2001c 	lw	v0,28(s8)
 964:	2c420004 	sltiu	v0,v0,4
 968:	1440ffed 	bnez	v0,920 <_do_encode_decode+0x338>
 96c:	00000000 	nop
        while (!file_eof(&opt->input_file) && !has_errors(opt)) {
 970:	8fc20040 	lw	v0,64(s8)
 974:	00402025 	move	a0,v0
 978:	8f820000 	lw	v0,0(gp)
 97c:	0040c825 	move	t9,v0
 980:	0320f809 	jalr	t9
 984:	00000000 	nop
 988:	8fdc0010 	lw	gp,16(s8)
 98c:	14400009 	bnez	v0,9b4 <_do_encode_decode+0x3cc>
 990:	00000000 	nop
 994:	8fc40040 	lw	a0,64(s8)
 998:	8f820000 	lw	v0,0(gp)
 99c:	0040c825 	move	t9,v0
 9a0:	0320f809 	jalr	t9
 9a4:	00000000 	nop
 9a8:	8fdc0010 	lw	gp,16(s8)
 9ac:	1040ff6d 	beqz	v0,764 <_do_encode_decode+0x17c>
 9b0:	00000000 	nop

            }
        }
    }

    return opt->error_condition;
 9b4:	8fc20040 	lw	v0,64(s8)
 9b8:	80420019 	lb	v0,25(v0)
}
 9bc:	03c0e825 	move	sp,s8
 9c0:	8fbf003c 	lw	ra,60(sp)
 9c4:	8fbe0038 	lw	s8,56(sp)
 9c8:	27bd0040 	addiu	sp,sp,64
 9cc:	03e00008 	jr	ra
 9d0:	00000000 	nop
	...
