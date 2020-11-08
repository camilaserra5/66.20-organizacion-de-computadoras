
tp1:     file format elf32-tradbigmips


Disassembly of section .init:

00000a7c <_init>:
 a7c:	3c1c0002 	lui	gp,0x2
 a80:	279c95f4 	addiu	gp,gp,-27148
 a84:	0399e021 	addu	gp,gp,t9
 a88:	27bdffe0 	addiu	sp,sp,-32
 a8c:	afbc0010 	sw	gp,16(sp)
 a90:	afbf001c 	sw	ra,28(sp)
 a94:	8f8280c0 	lw	v0,-32576(gp)
 a98:	10400004 	beqz	v0,aac <_init+0x30>
 a9c:	00000000 	nop
 aa0:	8f9980c0 	lw	t9,-32576(gp)
 aa4:	0320f809 	jalr	t9
 aa8:	00000000 	nop
 aac:	8fbf001c 	lw	ra,28(sp)
 ab0:	03e00008 	jr	ra
 ab4:	27bd0020 	addiu	sp,sp,32

Disassembly of section .text:

00000ac0 <__start>:
     ac0:	03e00025 	move	zero,ra
     ac4:	04110001 	bal	acc <__start+0xc>
     ac8:	00000000 	nop
     acc:	3c1c0002 	lui	gp,0x2
     ad0:	279c95a4 	addiu	gp,gp,-27228
     ad4:	039fe021 	addu	gp,gp,ra
     ad8:	0000f825 	move	ra,zero
     adc:	8f848018 	lw	a0,-32744(gp)
     ae0:	8fa50000 	lw	a1,0(sp)
     ae4:	27a60004 	addiu	a2,sp,4
     ae8:	2401fff8 	li	at,-8
     aec:	03a1e824 	and	sp,sp,at
     af0:	27bdffe0 	addiu	sp,sp,-32
     af4:	8f87801c 	lw	a3,-32740(gp)
     af8:	8f888020 	lw	t0,-32736(gp)
     afc:	afa80010 	sw	t0,16(sp)
     b00:	afa20014 	sw	v0,20(sp)
     b04:	afbd0018 	sw	sp,24(sp)
     b08:	8f9980b8 	lw	t9,-32584(gp)
     b0c:	0320f809 	jalr	t9
     b10:	00000000 	nop

00000b14 <hlt>:
     b14:	1000ffff 	b	b14 <hlt>
     b18:	00000000 	nop
     b1c:	00000000 	nop

00000b20 <deregister_tm_clones>:
     b20:	3c1c0002 	lui	gp,0x2
     b24:	279c9550 	addiu	gp,gp,-27312
     b28:	0399e021 	addu	gp,gp,t9
     b2c:	8f848028 	lw	a0,-32728(gp)
     b30:	8f828024 	lw	v0,-32732(gp)
     b34:	24842074 	addiu	a0,a0,8308
     b38:	24420003 	addiu	v0,v0,3
     b3c:	00441023 	subu	v0,v0,a0
     b40:	2c420007 	sltiu	v0,v0,7
     b44:	14400005 	bnez	v0,b5c <deregister_tm_clones+0x3c>
     b48:	8f9980e4 	lw	t9,-32540(gp)
     b4c:	13200003 	beqz	t9,b5c <deregister_tm_clones+0x3c>
     b50:	00000000 	nop
     b54:	03200008 	jr	t9
     b58:	00000000 	nop
     b5c:	03e00008 	jr	ra
     b60:	00000000 	nop

00000b64 <register_tm_clones>:
     b64:	3c1c0002 	lui	gp,0x2
     b68:	279c950c 	addiu	gp,gp,-27380
     b6c:	0399e021 	addu	gp,gp,t9
     b70:	8f848028 	lw	a0,-32728(gp)
     b74:	8f858024 	lw	a1,-32732(gp)
     b78:	24842074 	addiu	a0,a0,8308
     b7c:	00a42823 	subu	a1,a1,a0
     b80:	00052883 	sra	a1,a1,0x2
     b84:	000517c2 	srl	v0,a1,0x1f
     b88:	00452821 	addu	a1,v0,a1
     b8c:	00052843 	sra	a1,a1,0x1
     b90:	10a00005 	beqz	a1,ba8 <register_tm_clones+0x44>
     b94:	8f998098 	lw	t9,-32616(gp)
     b98:	13200003 	beqz	t9,ba8 <register_tm_clones+0x44>
     b9c:	00000000 	nop
     ba0:	03200008 	jr	t9
     ba4:	00000000 	nop
     ba8:	03e00008 	jr	ra
     bac:	00000000 	nop

00000bb0 <__do_global_dtors_aux>:
     bb0:	3c1c0002 	lui	gp,0x2
     bb4:	279c94c0 	addiu	gp,gp,-27456
     bb8:	0399e021 	addu	gp,gp,t9
     bbc:	27bdffe0 	addiu	sp,sp,-32
     bc0:	afb00018 	sw	s0,24(sp)
     bc4:	8f908028 	lw	s0,-32728(gp)
     bc8:	afbc0010 	sw	gp,16(sp)
     bcc:	afbf001c 	sw	ra,28(sp)
     bd0:	92022160 	lbu	v0,8544(s0)
     bd4:	1440000d 	bnez	v0,c0c <__do_global_dtors_aux+0x5c>
     bd8:	8f8280e8 	lw	v0,-32536(gp)
     bdc:	10400005 	beqz	v0,bf4 <__do_global_dtors_aux+0x44>
     be0:	8f82802c 	lw	v0,-32724(gp)
     be4:	8f9980e8 	lw	t9,-32536(gp)
     be8:	0320f809 	jalr	t9
     bec:	8c440000 	lw	a0,0(v0)
     bf0:	8fbc0010 	lw	gp,16(sp)
     bf4:	8f998030 	lw	t9,-32720(gp)
     bf8:	27390b20 	addiu	t9,t9,2848
     bfc:	0411ffc8 	bal	b20 <deregister_tm_clones>
     c00:	00000000 	nop
     c04:	24020001 	li	v0,1
     c08:	a2022160 	sb	v0,8544(s0)
     c0c:	8fbf001c 	lw	ra,28(sp)
     c10:	8fb00018 	lw	s0,24(sp)
     c14:	03e00008 	jr	ra
     c18:	27bd0020 	addiu	sp,sp,32

00000c1c <frame_dummy>:
     c1c:	3c1c0002 	lui	gp,0x2
     c20:	279c9454 	addiu	gp,gp,-27564
     c24:	0399e021 	addu	gp,gp,t9
     c28:	8f828028 	lw	v0,-32728(gp)
     c2c:	27bdffe0 	addiu	sp,sp,-32
     c30:	24442008 	addiu	a0,v0,8200
     c34:	afbc0010 	sw	gp,16(sp)
     c38:	afbf001c 	sw	ra,28(sp)
     c3c:	8c820000 	lw	v0,0(a0)
     c40:	14400006 	bnez	v0,c5c <frame_dummy+0x40>
     c44:	8f9980a4 	lw	t9,-32604(gp)
     c48:	8f998030 	lw	t9,-32720(gp)
     c4c:	8fbf001c 	lw	ra,28(sp)
     c50:	27390b64 	addiu	t9,t9,2916
     c54:	1000ffc3 	b	b64 <register_tm_clones>
     c58:	27bd0020 	addiu	sp,sp,32
     c5c:	1320fffa 	beqz	t9,c48 <frame_dummy+0x2c>
     c60:	00000000 	nop
     c64:	0320f809 	jalr	t9
     c68:	00000000 	nop
     c6c:	1000fff6 	b	c48 <frame_dummy+0x2c>
     c70:	8fbc0010 	lw	gp,16(sp)
	...

00000c80 <command_create>:
#include <string.h>
#include <stdbool.h>
#include <stdlib.h>
#include "command.h"

void command_create(command_options_st *opt) {
     c80:	3c1c0002 	lui	gp,0x2
     c84:	279c93f0 	addiu	gp,gp,-27664
     c88:	0399e021 	addu	gp,gp,t9
     c8c:	27bdffe0 	addiu	sp,sp,-32
     c90:	afbf001c 	sw	ra,28(sp)
     c94:	afbe0018 	sw	s8,24(sp)
     c98:	03a0f025 	move	s8,sp
     c9c:	afbc0010 	sw	gp,16(sp)
     ca0:	afc40020 	sw	a0,32(s8)
    create_file(&opt->output_file);
     ca4:	8fc20020 	lw	v0,32(s8)
     ca8:	00402025 	move	a0,v0
     cac:	8f828034 	lw	v0,-32716(gp)
     cb0:	0040c825 	move	t9,v0
     cb4:	041101fe 	bal	14b0 <create_file>
     cb8:	00000000 	nop
     cbc:	8fdc0010 	lw	gp,16(s8)
    opt->error_condition = OK;
     cc0:	8fc20020 	lw	v0,32(s8)
     cc4:	a040000c 	sb	zero,12(v0)
    opt->output_path = 0;
     cc8:	8fc20020 	lw	v0,32(s8)
     ccc:	ac400008 	sw	zero,8(v0)
    opt->multiple = TRUE;
     cd0:	8fc20020 	lw	v0,32(s8)
     cd4:	24030001 	li	v1,1
     cd8:	a043000d 	sb	v1,13(v0)
    opt->divisor = TRUE;
     cdc:	8fc20020 	lw	v0,32(s8)
     ce0:	24030001 	li	v1,1
     ce4:	a043000e 	sb	v1,14(v0)
}
     ce8:	00000000 	nop
     cec:	03c0e825 	move	sp,s8
     cf0:	8fbf001c 	lw	ra,28(sp)
     cf4:	8fbe0018 	lw	s8,24(sp)
     cf8:	27bd0020 	addiu	sp,sp,32
     cfc:	03e00008 	jr	ra
     d00:	00000000 	nop

00000d04 <set_output_file>:

void set_output_file(command_options_st *opt, const char *output) {
     d04:	27bdfff8 	addiu	sp,sp,-8
     d08:	afbe0004 	sw	s8,4(sp)
     d0c:	03a0f025 	move	s8,sp
     d10:	afc40008 	sw	a0,8(s8)
     d14:	afc5000c 	sw	a1,12(s8)
    opt->output_path = output;
     d18:	8fc20008 	lw	v0,8(s8)
     d1c:	8fc3000c 	lw	v1,12(s8)
     d20:	ac430008 	sw	v1,8(v0)
}
     d24:	00000000 	nop
     d28:	03c0e825 	move	sp,s8
     d2c:	8fbe0004 	lw	s8,4(sp)
     d30:	27bd0008 	addiu	sp,sp,8
     d34:	03e00008 	jr	ra
     d38:	00000000 	nop

00000d3c <set_divisor>:

void set_divisor(command_options_st *opt, const char *m, const char *n) {
     d3c:	27bdfff8 	addiu	sp,sp,-8
     d40:	afbe0004 	sw	s8,4(sp)
     d44:	03a0f025 	move	s8,sp
     d48:	afc40008 	sw	a0,8(s8)
     d4c:	afc5000c 	sw	a1,12(s8)
     d50:	afc60010 	sw	a2,16(s8)
    opt->multiple = FALSE;
     d54:	8fc20008 	lw	v0,8(s8)
     d58:	a040000d 	sb	zero,13(v0)
    // TODO: validar que M y N sean numeros entre 2 y MAXINT
    opt->m = m;
     d5c:	8fc20008 	lw	v0,8(s8)
     d60:	8fc3000c 	lw	v1,12(s8)
     d64:	ac430010 	sw	v1,16(v0)
    opt->n = n;
     d68:	8fc20008 	lw	v0,8(s8)
     d6c:	8fc30010 	lw	v1,16(s8)
     d70:	ac430014 	sw	v1,20(v0)
}
     d74:	00000000 	nop
     d78:	03c0e825 	move	sp,s8
     d7c:	8fbe0004 	lw	s8,4(sp)
     d80:	27bd0008 	addiu	sp,sp,8
     d84:	03e00008 	jr	ra
     d88:	00000000 	nop

00000d8c <set_multiple>:

void set_multiple(command_options_st *opt, const char *m, const char *n) {
     d8c:	27bdfff8 	addiu	sp,sp,-8
     d90:	afbe0004 	sw	s8,4(sp)
     d94:	03a0f025 	move	s8,sp
     d98:	afc40008 	sw	a0,8(s8)
     d9c:	afc5000c 	sw	a1,12(s8)
     da0:	afc60010 	sw	a2,16(s8)
    opt->divisor = FALSE;
     da4:	8fc20008 	lw	v0,8(s8)
     da8:	a040000e 	sb	zero,14(v0)
    // TODO: validar que M y N sean numeros entre 2 y MAXINT
    opt->m = m;
     dac:	8fc20008 	lw	v0,8(s8)
     db0:	8fc3000c 	lw	v1,12(s8)
     db4:	ac430010 	sw	v1,16(v0)
    opt->n = n;
     db8:	8fc20008 	lw	v0,8(s8)
     dbc:	8fc30010 	lw	v1,16(s8)
     dc0:	ac430014 	sw	v1,20(v0)
}
     dc4:	00000000 	nop
     dc8:	03c0e825 	move	sp,s8
     dcc:	8fbe0004 	lw	s8,4(sp)
     dd0:	27bd0008 	addiu	sp,sp,8
     dd4:	03e00008 	jr	ra
     dd8:	00000000 	nop

00000ddc <set_error>:

void set_error(command_options_st *opt, char error_condition) {
     ddc:	27bdfff8 	addiu	sp,sp,-8
     de0:	afbe0004 	sw	s8,4(sp)
     de4:	03a0f025 	move	s8,sp
     de8:	afc40008 	sw	a0,8(s8)
     dec:	00a01025 	move	v0,a1
     df0:	a3c2000c 	sb	v0,12(s8)
    opt->error_condition = error_condition;
     df4:	8fc20008 	lw	v0,8(s8)
     df8:	93c3000c 	lbu	v1,12(s8)
     dfc:	a043000c 	sb	v1,12(v0)
}
     e00:	00000000 	nop
     e04:	03c0e825 	move	sp,s8
     e08:	8fbe0004 	lw	s8,4(sp)
     e0c:	27bd0008 	addiu	sp,sp,8
     e10:	03e00008 	jr	ra
     e14:	00000000 	nop

00000e18 <has_errors>:

int has_errors(command_options_st *opt) {
     e18:	27bdfff8 	addiu	sp,sp,-8
     e1c:	afbe0004 	sw	s8,4(sp)
     e20:	03a0f025 	move	s8,sp
     e24:	afc40008 	sw	a0,8(s8)
    return (opt->error_condition != OK) ? ERROR : OK;
     e28:	8fc20008 	lw	v0,8(s8)
     e2c:	8042000c 	lb	v0,12(v0)
     e30:	0002102b 	sltu	v0,zero,v0
     e34:	304200ff 	andi	v0,v0,0xff
}
     e38:	03c0e825 	move	sp,s8
     e3c:	8fbe0004 	lw	s8,4(sp)
     e40:	27bd0008 	addiu	sp,sp,8
     e44:	03e00008 	jr	ra
     e48:	00000000 	nop

00000e4c <show_error>:

void show_error(command_options_st *opt) {
     e4c:	3c1c0002 	lui	gp,0x2
     e50:	279c9224 	addiu	gp,gp,-28124
     e54:	0399e021 	addu	gp,gp,t9
     e58:	27bdffd8 	addiu	sp,sp,-40
     e5c:	afbf0024 	sw	ra,36(sp)
     e60:	afbe0020 	sw	s8,32(sp)
     e64:	03a0f025 	move	s8,sp
     e68:	afbc0010 	sw	gp,16(sp)
     e6c:	afc40028 	sw	a0,40(s8)
    char *error_message = NULL;
     e70:	afc00018 	sw	zero,24(s8)
    bool should_show_help = false;
     e74:	a3c0001c 	sb	zero,28(s8)
    if (opt->error_condition == INVALID_ARGUMENT) {
     e78:	8fc20028 	lw	v0,40(s8)
     e7c:	8043000c 	lb	v1,12(v0)
     e80:	2402ffff 	li	v0,-1
     e84:	14620008 	bne	v1,v0,ea8 <show_error+0x5c>
     e88:	00000000 	nop
        error_message = "Argumentos Invalidos!\n\n";
     e8c:	8f828030 	lw	v0,-32720(gp)
     e90:	24421ca0 	addiu	v0,v0,7328
     e94:	afc20018 	sw	v0,24(s8)
        should_show_help = true;
     e98:	24020001 	li	v0,1
     e9c:	a3c2001c 	sb	v0,28(s8)
     ea0:	1000000b 	b	ed0 <show_error+0x84>
     ea4:	00000000 	nop
    } else if (opt->error_condition == NO_ARGUMENTS) {
     ea8:	8fc20028 	lw	v0,40(s8)
     eac:	8043000c 	lb	v1,12(v0)
     eb0:	2402fffe 	li	v0,-2
     eb4:	14620006 	bne	v1,v0,ed0 <show_error+0x84>
     eb8:	00000000 	nop
        error_message = "No se recibieron Argumentos!\n\n";
     ebc:	8f828030 	lw	v0,-32720(gp)
     ec0:	24421cb8 	addiu	v0,v0,7352
     ec4:	afc20018 	sw	v0,24(s8)
        should_show_help = true;
     ec8:	24020001 	li	v0,1
     ecc:	a3c2001c 	sb	v0,28(s8)
    }

    fprintf(stderr, "%s", error_message);
     ed0:	8f8280d8 	lw	v0,-32552(gp)
     ed4:	8c420000 	lw	v0,0(v0)
     ed8:	00402825 	move	a1,v0
     edc:	8fc40018 	lw	a0,24(s8)
     ee0:	8f828090 	lw	v0,-32624(gp)
     ee4:	0040c825 	move	t9,v0
     ee8:	0320f809 	jalr	t9
     eec:	00000000 	nop
     ef0:	8fdc0010 	lw	gp,16(s8)
    if (should_show_help) {
     ef4:	93c2001c 	lbu	v0,28(s8)
     ef8:	10400006 	beqz	v0,f14 <show_error+0xc8>
     efc:	00000000 	nop
        show_help();
     f00:	8f828038 	lw	v0,-32712(gp)
     f04:	0040c825 	move	t9,v0
     f08:	04110009 	bal	f30 <show_help>
     f0c:	00000000 	nop
     f10:	8fdc0010 	lw	gp,16(s8)
    }
}
     f14:	00000000 	nop
     f18:	03c0e825 	move	sp,s8
     f1c:	8fbf0024 	lw	ra,36(sp)
     f20:	8fbe0020 	lw	s8,32(sp)
     f24:	27bd0028 	addiu	sp,sp,40
     f28:	03e00008 	jr	ra
     f2c:	00000000 	nop

00000f30 <show_help>:

void show_help() {
     f30:	3c1c0002 	lui	gp,0x2
     f34:	279c9140 	addiu	gp,gp,-28352
     f38:	0399e021 	addu	gp,gp,t9
     f3c:	27bdffe0 	addiu	sp,sp,-32
     f40:	afbf001c 	sw	ra,28(sp)
     f44:	afbe0018 	sw	s8,24(sp)
     f48:	03a0f025 	move	s8,sp
     f4c:	afbc0010 	sw	gp,16(sp)
    printf("Options:\n");
     f50:	8f828030 	lw	v0,-32720(gp)
     f54:	24441cd8 	addiu	a0,v0,7384
     f58:	8f8280c8 	lw	v0,-32568(gp)
     f5c:	0040c825 	move	t9,v0
     f60:	0320f809 	jalr	t9
     f64:	00000000 	nop
     f68:	8fdc0010 	lw	gp,16(s8)
    printf("\t-h,\t--help\t\tPrint usage information.\n");
     f6c:	8f828030 	lw	v0,-32720(gp)
     f70:	24441ce4 	addiu	a0,v0,7396
     f74:	8f8280c8 	lw	v0,-32568(gp)
     f78:	0040c825 	move	t9,v0
     f7c:	0320f809 	jalr	t9
     f80:	00000000 	nop
     f84:	8fdc0010 	lw	gp,16(s8)
    printf("\t-V,\t--version\tPrint version information.\n");
     f88:	8f828030 	lw	v0,-32720(gp)
     f8c:	24441d0c 	addiu	a0,v0,7436
     f90:	8f8280c8 	lw	v0,-32568(gp)
     f94:	0040c825 	move	t9,v0
     f98:	0320f809 	jalr	t9
     f9c:	00000000 	nop
     fa0:	8fdc0010 	lw	gp,16(s8)
    printf("\t-o,\t--output\tPath to output file.\n");
     fa4:	8f828030 	lw	v0,-32720(gp)
     fa8:	24441d38 	addiu	a0,v0,7480
     fac:	8f8280c8 	lw	v0,-32568(gp)
     fb0:	0040c825 	move	t9,v0
     fb4:	0320f809 	jalr	t9
     fb8:	00000000 	nop
     fbc:	8fdc0010 	lw	gp,16(s8)
    printf("\t-d,\t--divisor\tJust the divisor.\n");
     fc0:	8f828030 	lw	v0,-32720(gp)
     fc4:	24441d5c 	addiu	a0,v0,7516
     fc8:	8f8280c8 	lw	v0,-32568(gp)
     fcc:	0040c825 	move	t9,v0
     fd0:	0320f809 	jalr	t9
     fd4:	00000000 	nop
     fd8:	8fdc0010 	lw	gp,16(s8)
    printf("\t-m,\t--multiple\tJust the multiple.\n");
     fdc:	8f828030 	lw	v0,-32720(gp)
     fe0:	24441d80 	addiu	a0,v0,7552
     fe4:	8f8280c8 	lw	v0,-32568(gp)
     fe8:	0040c825 	move	t9,v0
     fec:	0320f809 	jalr	t9
     ff0:	00000000 	nop
     ff4:	8fdc0010 	lw	gp,16(s8)
    printf("Examples:\n");
     ff8:	8f828030 	lw	v0,-32720(gp)
     ffc:	24441da4 	addiu	a0,v0,7588
    1000:	8f8280c8 	lw	v0,-32568(gp)
    1004:	0040c825 	move	t9,v0
    1008:	0320f809 	jalr	t9
    100c:	00000000 	nop
    1010:	8fdc0010 	lw	gp,16(s8)
    printf("\tcommon -o - 256 192\n");
    1014:	8f828030 	lw	v0,-32720(gp)
    1018:	24441db0 	addiu	a0,v0,7600
    101c:	8f8280c8 	lw	v0,-32568(gp)
    1020:	0040c825 	move	t9,v0
    1024:	0320f809 	jalr	t9
    1028:	00000000 	nop
    102c:	8fdc0010 	lw	gp,16(s8)
}
    1030:	00000000 	nop
    1034:	03c0e825 	move	sp,s8
    1038:	8fbf001c 	lw	ra,28(sp)
    103c:	8fbe0018 	lw	s8,24(sp)
    1040:	27bd0020 	addiu	sp,sp,32
    1044:	03e00008 	jr	ra
    1048:	00000000 	nop

0000104c <show_version>:

void show_version() {
    104c:	3c1c0002 	lui	gp,0x2
    1050:	279c9024 	addiu	gp,gp,-28636
    1054:	0399e021 	addu	gp,gp,t9
    1058:	27bdffe0 	addiu	sp,sp,-32
    105c:	afbf001c 	sw	ra,28(sp)
    1060:	afbe0018 	sw	s8,24(sp)
    1064:	03a0f025 	move	s8,sp
    1068:	afbc0010 	sw	gp,16(sp)
    printf("Version: 1.0\n");
    106c:	8f828030 	lw	v0,-32720(gp)
    1070:	24441dc8 	addiu	a0,v0,7624
    1074:	8f8280c8 	lw	v0,-32568(gp)
    1078:	0040c825 	move	t9,v0
    107c:	0320f809 	jalr	t9
    1080:	00000000 	nop
    1084:	8fdc0010 	lw	gp,16(s8)
}
    1088:	00000000 	nop
    108c:	03c0e825 	move	sp,s8
    1090:	8fbf001c 	lw	ra,28(sp)
    1094:	8fbe0018 	lw	s8,24(sp)
    1098:	27bd0020 	addiu	sp,sp,32
    109c:	03e00008 	jr	ra
    10a0:	00000000 	nop

000010a4 <_mcm_rec>:

int _mcm_rec(int m, int n) {
    10a4:	3c1c0002 	lui	gp,0x2
    10a8:	279c8fcc 	addiu	gp,gp,-28724
    10ac:	0399e021 	addu	gp,gp,t9
    10b0:	27bdffe0 	addiu	sp,sp,-32
    10b4:	afbf001c 	sw	ra,28(sp)
    10b8:	afbe0018 	sw	s8,24(sp)
    10bc:	03a0f025 	move	s8,sp
    10c0:	afbc0010 	sw	gp,16(sp)
    10c4:	afc40020 	sw	a0,32(s8)
    10c8:	afc50024 	sw	a1,36(s8)
    if (m == 0)
    10cc:	8fc20020 	lw	v0,32(s8)
    10d0:	14400004 	bnez	v0,10e4 <_mcm_rec+0x40>
    10d4:	00000000 	nop
        return n;
    10d8:	8fc20024 	lw	v0,36(s8)
    10dc:	1000000d 	b	1114 <_mcm_rec+0x70>
    10e0:	00000000 	nop
    return _mcm_rec(n % m, m);
    10e4:	8fc30024 	lw	v1,36(s8)
    10e8:	8fc20020 	lw	v0,32(s8)
    10ec:	004001f4 	teq	v0,zero,0x7
    10f0:	0062001a 	div	zero,v1,v0
    10f4:	00001010 	mfhi	v0
    10f8:	8fc50020 	lw	a1,32(s8)
    10fc:	00402025 	move	a0,v0
    1100:	8f82803c 	lw	v0,-32708(gp)
    1104:	0040c825 	move	t9,v0
    1108:	0411ffe6 	bal	10a4 <_mcm_rec>
    110c:	00000000 	nop
    1110:	8fdc0010 	lw	gp,16(s8)
}
    1114:	03c0e825 	move	sp,s8
    1118:	8fbf001c 	lw	ra,28(sp)
    111c:	8fbe0018 	lw	s8,24(sp)
    1120:	27bd0020 	addiu	sp,sp,32
    1124:	03e00008 	jr	ra
    1128:	00000000 	nop

0000112c <_mcm>:

// mínimo común múltiplo
int _mcm(int m, int n) {
    112c:	3c1c0002 	lui	gp,0x2
    1130:	279c8f44 	addiu	gp,gp,-28860
    1134:	0399e021 	addu	gp,gp,t9
    1138:	27bdffe0 	addiu	sp,sp,-32
    113c:	afbf001c 	sw	ra,28(sp)
    1140:	afbe0018 	sw	s8,24(sp)
    1144:	03a0f025 	move	s8,sp
    1148:	afbc0010 	sw	gp,16(sp)
    114c:	afc40020 	sw	a0,32(s8)
    1150:	afc50024 	sw	a1,36(s8)
    return (m / _mcm_rec(m, n)) * n;
    1154:	8fc50024 	lw	a1,36(s8)
    1158:	8fc40020 	lw	a0,32(s8)
    115c:	8f82803c 	lw	v0,-32708(gp)
    1160:	0040c825 	move	t9,v0
    1164:	0411ffcf 	bal	10a4 <_mcm_rec>
    1168:	00000000 	nop
    116c:	8fdc0010 	lw	gp,16(s8)
    1170:	00401825 	move	v1,v0
    1174:	8fc20020 	lw	v0,32(s8)
    1178:	006001f4 	teq	v1,zero,0x7
    117c:	0043001a 	div	zero,v0,v1
    1180:	00001010 	mfhi	v0
    1184:	00001812 	mflo	v1
    1188:	8fc20024 	lw	v0,36(s8)
    118c:	70621002 	mul	v0,v1,v0
}
    1190:	03c0e825 	move	sp,s8
    1194:	8fbf001c 	lw	ra,28(sp)
    1198:	8fbe0018 	lw	s8,24(sp)
    119c:	27bd0020 	addiu	sp,sp,32
    11a0:	03e00008 	jr	ra
    11a4:	00000000 	nop

000011a8 <_mcd>:

// máximo común divisor
int _mcd(int m, int n) {
    11a8:	3c1c0002 	lui	gp,0x2
    11ac:	279c8ec8 	addiu	gp,gp,-28984
    11b0:	0399e021 	addu	gp,gp,t9
    11b4:	27bdffe0 	addiu	sp,sp,-32
    11b8:	afbf001c 	sw	ra,28(sp)
    11bc:	afbe0018 	sw	s8,24(sp)
    11c0:	03a0f025 	move	s8,sp
    11c4:	afbc0010 	sw	gp,16(sp)
    11c8:	afc40020 	sw	a0,32(s8)
    11cc:	afc50024 	sw	a1,36(s8)
    if (m == 0)
    11d0:	8fc20020 	lw	v0,32(s8)
    11d4:	14400004 	bnez	v0,11e8 <_mcd+0x40>
    11d8:	00000000 	nop
        return m;
    11dc:	8fc20020 	lw	v0,32(s8)
    11e0:	10000029 	b	1288 <_mcd+0xe0>
    11e4:	00000000 	nop
    if (n == 0)
    11e8:	8fc20024 	lw	v0,36(s8)
    11ec:	14400004 	bnez	v0,1200 <_mcd+0x58>
    11f0:	00000000 	nop
        return n;
    11f4:	8fc20024 	lw	v0,36(s8)
    11f8:	10000023 	b	1288 <_mcd+0xe0>
    11fc:	00000000 	nop

    if (m == n)
    1200:	8fc30020 	lw	v1,32(s8)
    1204:	8fc20024 	lw	v0,36(s8)
    1208:	14620004 	bne	v1,v0,121c <_mcd+0x74>
    120c:	00000000 	nop
        return m;
    1210:	8fc20020 	lw	v0,32(s8)
    1214:	1000001c 	b	1288 <_mcd+0xe0>
    1218:	00000000 	nop

    if (m > n)
    121c:	8fc30020 	lw	v1,32(s8)
    1220:	8fc20024 	lw	v0,36(s8)
    1224:	0043102a 	slt	v0,v0,v1
    1228:	1040000d 	beqz	v0,1260 <_mcd+0xb8>
    122c:	00000000 	nop
        return _mcd(m - n, n);
    1230:	8fc30020 	lw	v1,32(s8)
    1234:	8fc20024 	lw	v0,36(s8)
    1238:	00621023 	subu	v0,v1,v0
    123c:	8fc50024 	lw	a1,36(s8)
    1240:	00402025 	move	a0,v0
    1244:	8f828040 	lw	v0,-32704(gp)
    1248:	0040c825 	move	t9,v0
    124c:	0411ffd6 	bal	11a8 <_mcd>
    1250:	00000000 	nop
    1254:	8fdc0010 	lw	gp,16(s8)
    1258:	1000000b 	b	1288 <_mcd+0xe0>
    125c:	00000000 	nop
    return _mcd(m, n - m);
    1260:	8fc30024 	lw	v1,36(s8)
    1264:	8fc20020 	lw	v0,32(s8)
    1268:	00621023 	subu	v0,v1,v0
    126c:	00402825 	move	a1,v0
    1270:	8fc40020 	lw	a0,32(s8)
    1274:	8f828040 	lw	v0,-32704(gp)
    1278:	0040c825 	move	t9,v0
    127c:	0411ffca 	bal	11a8 <_mcd>
    1280:	00000000 	nop
    1284:	8fdc0010 	lw	gp,16(s8)
}
    1288:	03c0e825 	move	sp,s8
    128c:	8fbf001c 	lw	ra,28(sp)
    1290:	8fbe0018 	lw	s8,24(sp)
    1294:	27bd0020 	addiu	sp,sp,32
    1298:	03e00008 	jr	ra
    129c:	00000000 	nop

000012a0 <process>:

char process(command_options_st *opt) {
    12a0:	3c1c0002 	lui	gp,0x2
    12a4:	279c8dd0 	addiu	gp,gp,-29232
    12a8:	0399e021 	addu	gp,gp,t9
    12ac:	27bdffd0 	addiu	sp,sp,-48
    12b0:	afbf002c 	sw	ra,44(sp)
    12b4:	afbe0028 	sw	s8,40(sp)
    12b8:	afb00024 	sw	s0,36(sp)
    12bc:	03a0f025 	move	s8,sp
    12c0:	afbc0010 	sw	gp,16(sp)
    12c4:	afc40030 	sw	a0,48(s8)
    if (open_file_write(&opt->output_file, opt->output_path) == ERROR) {
    12c8:	8fc30030 	lw	v1,48(s8)
    12cc:	8fc20030 	lw	v0,48(s8)
    12d0:	8c420008 	lw	v0,8(v0)
    12d4:	00402825 	move	a1,v0
    12d8:	00602025 	move	a0,v1
    12dc:	8f828044 	lw	v0,-32700(gp)
    12e0:	0040c825 	move	t9,v0
    12e4:	04110080 	bal	14e8 <open_file_write>
    12e8:	00000000 	nop
    12ec:	8fdc0010 	lw	gp,16(s8)
    12f0:	00401825 	move	v1,v0
    12f4:	24020001 	li	v0,1
    12f8:	14620004 	bne	v1,v0,130c <process+0x6c>
    12fc:	00000000 	nop
        return ERROR;
    1300:	24020001 	li	v0,1
    1304:	10000063 	b	1494 <process+0x1f4>
    1308:	00000000 	nop
    }

    int result;
    if (opt->multiple) {
    130c:	8fc20030 	lw	v0,48(s8)
    1310:	8042000d 	lb	v0,13(v0)
    1314:	1040002a 	beqz	v0,13c0 <process+0x120>
    1318:	00000000 	nop
        result = _mcm(atoi(opt->m), atoi(opt->n));
    131c:	8fc20030 	lw	v0,48(s8)
    1320:	8c420010 	lw	v0,16(v0)
    1324:	00402025 	move	a0,v0
    1328:	8f82809c 	lw	v0,-32612(gp)
    132c:	0040c825 	move	t9,v0
    1330:	0320f809 	jalr	t9
    1334:	00000000 	nop
    1338:	8fdc0010 	lw	gp,16(s8)
    133c:	00408025 	move	s0,v0
    1340:	8fc20030 	lw	v0,48(s8)
    1344:	8c420014 	lw	v0,20(v0)
    1348:	00402025 	move	a0,v0
    134c:	8f82809c 	lw	v0,-32612(gp)
    1350:	0040c825 	move	t9,v0
    1354:	0320f809 	jalr	t9
    1358:	00000000 	nop
    135c:	8fdc0010 	lw	gp,16(s8)
    1360:	00402825 	move	a1,v0
    1364:	02002025 	move	a0,s0
    1368:	8f828048 	lw	v0,-32696(gp)
    136c:	0040c825 	move	t9,v0
    1370:	0411ff6e 	bal	112c <_mcm>
    1374:	00000000 	nop
    1378:	8fdc0010 	lw	gp,16(s8)
    137c:	afc20018 	sw	v0,24(s8)
        printf("mcm %d", result);
    1380:	8fc50018 	lw	a1,24(s8)
    1384:	8f828030 	lw	v0,-32720(gp)
    1388:	24441dd8 	addiu	a0,v0,7640
    138c:	8f8280e0 	lw	v0,-32544(gp)
    1390:	0040c825 	move	t9,v0
    1394:	0320f809 	jalr	t9
    1398:	00000000 	nop
    139c:	8fdc0010 	lw	gp,16(s8)
        // TODO: el write creo que no esta funcionando bien :(
        file_write(&opt->output_file, result);
    13a0:	8fc20030 	lw	v0,48(s8)
    13a4:	8fc50018 	lw	a1,24(s8)
    13a8:	00402025 	move	a0,v0
    13ac:	8f82804c 	lw	v0,-32692(gp)
    13b0:	0040c825 	move	t9,v0
    13b4:	041100db 	bal	1724 <file_write>
    13b8:	00000000 	nop
    13bc:	8fdc0010 	lw	gp,16(s8)
    }

    if (opt->divisor) {
    13c0:	8fc20030 	lw	v0,48(s8)
    13c4:	8042000e 	lb	v0,14(v0)
    13c8:	1040002a 	beqz	v0,1474 <process+0x1d4>
    13cc:	00000000 	nop
        result = _mcd(atoi(opt->m), atoi(opt->n));
    13d0:	8fc20030 	lw	v0,48(s8)
    13d4:	8c420010 	lw	v0,16(v0)
    13d8:	00402025 	move	a0,v0
    13dc:	8f82809c 	lw	v0,-32612(gp)
    13e0:	0040c825 	move	t9,v0
    13e4:	0320f809 	jalr	t9
    13e8:	00000000 	nop
    13ec:	8fdc0010 	lw	gp,16(s8)
    13f0:	00408025 	move	s0,v0
    13f4:	8fc20030 	lw	v0,48(s8)
    13f8:	8c420014 	lw	v0,20(v0)
    13fc:	00402025 	move	a0,v0
    1400:	8f82809c 	lw	v0,-32612(gp)
    1404:	0040c825 	move	t9,v0
    1408:	0320f809 	jalr	t9
    140c:	00000000 	nop
    1410:	8fdc0010 	lw	gp,16(s8)
    1414:	00402825 	move	a1,v0
    1418:	02002025 	move	a0,s0
    141c:	8f828040 	lw	v0,-32704(gp)
    1420:	0040c825 	move	t9,v0
    1424:	0411ff60 	bal	11a8 <_mcd>
    1428:	00000000 	nop
    142c:	8fdc0010 	lw	gp,16(s8)
    1430:	afc20018 	sw	v0,24(s8)
        printf("mcd %d", result);
    1434:	8fc50018 	lw	a1,24(s8)
    1438:	8f828030 	lw	v0,-32720(gp)
    143c:	24441de0 	addiu	a0,v0,7648
    1440:	8f8280e0 	lw	v0,-32544(gp)
    1444:	0040c825 	move	t9,v0
    1448:	0320f809 	jalr	t9
    144c:	00000000 	nop
    1450:	8fdc0010 	lw	gp,16(s8)
        // TODO: el write creo que no esta funcionando bien :(
        file_write(&opt->output_file, result);
    1454:	8fc20030 	lw	v0,48(s8)
    1458:	8fc50018 	lw	a1,24(s8)
    145c:	00402025 	move	a0,v0
    1460:	8f82804c 	lw	v0,-32692(gp)
    1464:	0040c825 	move	t9,v0
    1468:	041100ae 	bal	1724 <file_write>
    146c:	00000000 	nop
    1470:	8fdc0010 	lw	gp,16(s8)
    }

    close_file(&opt->output_file);
    1474:	8fc20030 	lw	v0,48(s8)
    1478:	00402025 	move	a0,v0
    147c:	8f828050 	lw	v0,-32688(gp)
    1480:	0040c825 	move	t9,v0
    1484:	0411005e 	bal	1600 <close_file>
    1488:	00000000 	nop
    148c:	8fdc0010 	lw	gp,16(s8)
    return OK;
    1490:	00001025 	move	v0,zero
}
    1494:	03c0e825 	move	sp,s8
    1498:	8fbf002c 	lw	ra,44(sp)
    149c:	8fbe0028 	lw	s8,40(sp)
    14a0:	8fb00024 	lw	s0,36(sp)
    14a4:	27bd0030 	addiu	sp,sp,48
    14a8:	03e00008 	jr	ra
    14ac:	00000000 	nop

000014b0 <create_file>:
#include "file.h"
#include <stdlib.h>
#include <string.h>
#include <errno.h>

void create_file(File *file) {
    14b0:	27bdfff8 	addiu	sp,sp,-8
    14b4:	afbe0004 	sw	s8,4(sp)
    14b8:	03a0f025 	move	s8,sp
    14bc:	afc40008 	sw	a0,8(s8)
    file->file = 0;
    14c0:	8fc20008 	lw	v0,8(s8)
    14c4:	ac400000 	sw	zero,0(v0)
    file->eof = 0;
    14c8:	8fc20008 	lw	v0,8(s8)
    14cc:	a0400004 	sb	zero,4(v0)
}
    14d0:	00000000 	nop
    14d4:	03c0e825 	move	sp,s8
    14d8:	8fbe0004 	lw	s8,4(sp)
    14dc:	27bd0008 	addiu	sp,sp,8
    14e0:	03e00008 	jr	ra
    14e4:	00000000 	nop

000014e8 <open_file_write>:

char open_file_write(File *file, const char *route) {
    14e8:	3c1c0002 	lui	gp,0x2
    14ec:	279c8b88 	addiu	gp,gp,-29816
    14f0:	0399e021 	addu	gp,gp,t9
    14f4:	27bdffd0 	addiu	sp,sp,-48
    14f8:	afbf002c 	sw	ra,44(sp)
    14fc:	afbe0028 	sw	s8,40(sp)
    1500:	afb00024 	sw	s0,36(sp)
    1504:	03a0f025 	move	s8,sp
    1508:	afbc0010 	sw	gp,16(sp)
    150c:	afc40030 	sw	a0,48(s8)
    1510:	afc50034 	sw	a1,52(s8)
    if (route == NULL) {
    1514:	8fc20034 	lw	v0,52(s8)
    1518:	14400007 	bnez	v0,1538 <open_file_write+0x50>
    151c:	00000000 	nop
        file->file = stdout;
    1520:	8f8280a8 	lw	v0,-32600(gp)
    1524:	8c430000 	lw	v1,0(v0)
    1528:	8fc20030 	lw	v0,48(s8)
    152c:	ac430000 	sw	v1,0(v0)
    1530:	1000002b 	b	15e0 <open_file_write+0xf8>
    1534:	00000000 	nop
    } else {
        file->file = fopen(route, "wb");
    1538:	8f828030 	lw	v0,-32720(gp)
    153c:	24451df0 	addiu	a1,v0,7664
    1540:	8fc40034 	lw	a0,52(s8)
    1544:	8f8280dc 	lw	v0,-32548(gp)
    1548:	0040c825 	move	t9,v0
    154c:	0320f809 	jalr	t9
    1550:	00000000 	nop
    1554:	8fdc0010 	lw	gp,16(s8)
    1558:	00401825 	move	v1,v0
    155c:	8fc20030 	lw	v0,48(s8)
    1560:	ac430000 	sw	v1,0(v0)
        if (file->file == NULL) {
    1564:	8fc20030 	lw	v0,48(s8)
    1568:	8c420000 	lw	v0,0(v0)
    156c:	1440001c 	bnez	v0,15e0 <open_file_write+0xf8>
    1570:	00000000 	nop
            int err = errno;
    1574:	8f8280ac 	lw	v0,-32596(gp)
    1578:	0040c825 	move	t9,v0
    157c:	0320f809 	jalr	t9
    1580:	00000000 	nop
    1584:	8fdc0010 	lw	gp,16(s8)
    1588:	8c420000 	lw	v0,0(v0)
    158c:	afc20018 	sw	v0,24(s8)
            fprintf(stderr, "Error al abrir archivo: %s\n", strerror(err));
    1590:	8f8280d8 	lw	v0,-32552(gp)
    1594:	8c500000 	lw	s0,0(v0)
    1598:	8fc40018 	lw	a0,24(s8)
    159c:	8f8280c4 	lw	v0,-32572(gp)
    15a0:	0040c825 	move	t9,v0
    15a4:	0320f809 	jalr	t9
    15a8:	00000000 	nop
    15ac:	8fdc0010 	lw	gp,16(s8)
    15b0:	00403025 	move	a2,v0
    15b4:	8f828030 	lw	v0,-32720(gp)
    15b8:	24451df4 	addiu	a1,v0,7668
    15bc:	02002025 	move	a0,s0
    15c0:	8f8280b4 	lw	v0,-32588(gp)
    15c4:	0040c825 	move	t9,v0
    15c8:	0320f809 	jalr	t9
    15cc:	00000000 	nop
    15d0:	8fdc0010 	lw	gp,16(s8)
            return ERROR;
    15d4:	24020001 	li	v0,1
    15d8:	10000002 	b	15e4 <open_file_write+0xfc>
    15dc:	00000000 	nop
        }
    }
    return OK;
    15e0:	00001025 	move	v0,zero
}
    15e4:	03c0e825 	move	sp,s8
    15e8:	8fbf002c 	lw	ra,44(sp)
    15ec:	8fbe0028 	lw	s8,40(sp)
    15f0:	8fb00024 	lw	s0,36(sp)
    15f4:	27bd0030 	addiu	sp,sp,48
    15f8:	03e00008 	jr	ra
    15fc:	00000000 	nop

00001600 <close_file>:


int close_file(File *file) {
    1600:	3c1c0002 	lui	gp,0x2
    1604:	279c8a70 	addiu	gp,gp,-30096
    1608:	0399e021 	addu	gp,gp,t9
    160c:	27bdffd0 	addiu	sp,sp,-48
    1610:	afbf002c 	sw	ra,44(sp)
    1614:	afbe0028 	sw	s8,40(sp)
    1618:	afb00024 	sw	s0,36(sp)
    161c:	03a0f025 	move	s8,sp
    1620:	afbc0010 	sw	gp,16(sp)
    1624:	afc40030 	sw	a0,48(s8)
    if (file->file == stdin || file->file == stdout) return OK;
    1628:	8fc20030 	lw	v0,48(s8)
    162c:	8c430000 	lw	v1,0(v0)
    1630:	8f8280b0 	lw	v0,-32592(gp)
    1634:	8c420000 	lw	v0,0(v0)
    1638:	10620007 	beq	v1,v0,1658 <close_file+0x58>
    163c:	00000000 	nop
    1640:	8fc20030 	lw	v0,48(s8)
    1644:	8c430000 	lw	v1,0(v0)
    1648:	8f8280a8 	lw	v0,-32600(gp)
    164c:	8c420000 	lw	v0,0(v0)
    1650:	14620004 	bne	v1,v0,1664 <close_file+0x64>
    1654:	00000000 	nop
    1658:	00001025 	move	v0,zero
    165c:	1000002a 	b	1708 <close_file+0x108>
    1660:	00000000 	nop

    int result = fclose(file->file);
    1664:	8fc20030 	lw	v0,48(s8)
    1668:	8c420000 	lw	v0,0(v0)
    166c:	00402025 	move	a0,v0
    1670:	8f8280a0 	lw	v0,-32608(gp)
    1674:	0040c825 	move	t9,v0
    1678:	0320f809 	jalr	t9
    167c:	00000000 	nop
    1680:	8fdc0010 	lw	gp,16(s8)
    1684:	afc20018 	sw	v0,24(s8)
    if (result == EOF) {
    1688:	8fc30018 	lw	v1,24(s8)
    168c:	2402ffff 	li	v0,-1
    1690:	1462001c 	bne	v1,v0,1704 <close_file+0x104>
    1694:	00000000 	nop
        int err = errno;
    1698:	8f8280ac 	lw	v0,-32596(gp)
    169c:	0040c825 	move	t9,v0
    16a0:	0320f809 	jalr	t9
    16a4:	00000000 	nop
    16a8:	8fdc0010 	lw	gp,16(s8)
    16ac:	8c420000 	lw	v0,0(v0)
    16b0:	afc2001c 	sw	v0,28(s8)
        fprintf(stderr, "Error al cerrar archivo: %s\n", strerror(err));
    16b4:	8f8280d8 	lw	v0,-32552(gp)
    16b8:	8c500000 	lw	s0,0(v0)
    16bc:	8fc4001c 	lw	a0,28(s8)
    16c0:	8f8280c4 	lw	v0,-32572(gp)
    16c4:	0040c825 	move	t9,v0
    16c8:	0320f809 	jalr	t9
    16cc:	00000000 	nop
    16d0:	8fdc0010 	lw	gp,16(s8)
    16d4:	00403025 	move	a2,v0
    16d8:	8f828030 	lw	v0,-32720(gp)
    16dc:	24451e10 	addiu	a1,v0,7696
    16e0:	02002025 	move	a0,s0
    16e4:	8f8280b4 	lw	v0,-32588(gp)
    16e8:	0040c825 	move	t9,v0
    16ec:	0320f809 	jalr	t9
    16f0:	00000000 	nop
    16f4:	8fdc0010 	lw	gp,16(s8)
        return ERROR;
    16f8:	24020001 	li	v0,1
    16fc:	10000002 	b	1708 <close_file+0x108>
    1700:	00000000 	nop
    }
    return OK;
    1704:	00001025 	move	v0,zero
}
    1708:	03c0e825 	move	sp,s8
    170c:	8fbf002c 	lw	ra,44(sp)
    1710:	8fbe0028 	lw	s8,40(sp)
    1714:	8fb00024 	lw	s0,36(sp)
    1718:	27bd0030 	addiu	sp,sp,48
    171c:	03e00008 	jr	ra
    1720:	00000000 	nop

00001724 <file_write>:

void file_write(File *file, int number) {
    1724:	3c1c0002 	lui	gp,0x2
    1728:	279c894c 	addiu	gp,gp,-30388
    172c:	0399e021 	addu	gp,gp,t9
    1730:	27bdffe0 	addiu	sp,sp,-32
    1734:	afbf001c 	sw	ra,28(sp)
    1738:	afbe0018 	sw	s8,24(sp)
    173c:	03a0f025 	move	s8,sp
    1740:	afbc0010 	sw	gp,16(sp)
    1744:	afc40020 	sw	a0,32(s8)
    1748:	afc50024 	sw	a1,36(s8)
    fwrite(&number, sizeof(int), 1, file->file);
    174c:	8fc20020 	lw	v0,32(s8)
    1750:	8c430000 	lw	v1,0(v0)
    1754:	27c20024 	addiu	v0,s8,36
    1758:	00603825 	move	a3,v1
    175c:	24060001 	li	a2,1
    1760:	24050004 	li	a1,4
    1764:	00402025 	move	a0,v0
    1768:	8f8280cc 	lw	v0,-32564(gp)
    176c:	0040c825 	move	t9,v0
    1770:	0320f809 	jalr	t9
    1774:	00000000 	nop
    1778:	8fdc0010 	lw	gp,16(s8)
}
    177c:	00000000 	nop
    1780:	03c0e825 	move	sp,s8
    1784:	8fbf001c 	lw	ra,28(sp)
    1788:	8fbe0018 	lw	s8,24(sp)
    178c:	27bd0020 	addiu	sp,sp,32
    1790:	03e00008 	jr	ra
    1794:	00000000 	nop

00001798 <file_eof>:

int file_eof(File *file) {
    1798:	27bdfff8 	addiu	sp,sp,-8
    179c:	afbe0004 	sw	s8,4(sp)
    17a0:	03a0f025 	move	s8,sp
    17a4:	afc40008 	sw	a0,8(s8)
    return file->eof;
    17a8:	8fc20008 	lw	v0,8(s8)
    17ac:	80420004 	lb	v0,4(v0)
}
    17b0:	03c0e825 	move	sp,s8
    17b4:	8fbe0004 	lw	s8,4(sp)
    17b8:	27bd0008 	addiu	sp,sp,8
    17bc:	03e00008 	jr	ra
    17c0:	00000000 	nop
	...

000017d0 <main>:
#include <stddef.h>
#include <getopt.h>
#include "constants.h"
#include "command.h"

int main(int argc, char **argv) {
    17d0:	3c1c0002 	lui	gp,0x2
    17d4:	279c88a0 	addiu	gp,gp,-30560
    17d8:	0399e021 	addu	gp,gp,t9
    17dc:	27bdff58 	addiu	sp,sp,-168
    17e0:	afbf00a4 	sw	ra,164(sp)
    17e4:	afbe00a0 	sw	s8,160(sp)
    17e8:	03a0f025 	move	s8,sp
    17ec:	afbc0018 	sw	gp,24(sp)
    17f0:	afc400a8 	sw	a0,168(s8)
    17f4:	afc500ac 	sw	a1,172(s8)
    struct option arg_long[] = {
    17f8:	8f828028 	lw	v0,-32728(gp)
    17fc:	27c30028 	addiu	v1,s8,40
    1800:	24422020 	addiu	v0,v0,8224
    1804:	24040050 	li	a0,80
    1808:	00803025 	move	a2,a0
    180c:	00402825 	move	a1,v0
    1810:	00602025 	move	a0,v1
    1814:	8f8280d4 	lw	v0,-32556(gp)
    1818:	0040c825 	move	t9,v0
    181c:	0320f809 	jalr	t9
    1820:	00000000 	nop
    1824:	8fdc0018 	lw	gp,24(s8)
            {"multiple", required_argument, NULL, 'm'},
            {"help",     no_argument,       NULL, 'h'},
            {"version",  no_argument,       NULL, 'V'},
    };

    char arg_opt_str[] = "d:m:o:hV";
    1828:	8f828030 	lw	v0,-32720(gp)
    182c:	8c441e5c 	lw	a0,7772(v0)
    1830:	24431e5c 	addiu	v1,v0,7772
    1834:	8c630004 	lw	v1,4(v1)
    1838:	afc40078 	sw	a0,120(s8)
    183c:	afc3007c 	sw	v1,124(s8)
    1840:	24421e5c 	addiu	v0,v0,7772
    1844:	90420008 	lbu	v0,8(v0)
    1848:	a3c20080 	sb	v0,128(s8)
    int arg_opt;
    int arg_opt_idx = 0;
    184c:	afc00084 	sw	zero,132(s8)

    command_options_st cmd_options;
    command_create(&cmd_options);
    1850:	27c20088 	addiu	v0,s8,136
    1854:	00402025 	move	a0,v0
    1858:	8f828054 	lw	v0,-32684(gp)
    185c:	0040c825 	move	t9,v0
    1860:	0411fd07 	bal	c80 <command_create>
    1864:	00000000 	nop
    1868:	8fdc0018 	lw	gp,24(s8)

    char should_process = TRUE;
    186c:	24020001 	li	v0,1
    1870:	a3c20020 	sb	v0,32(s8)
    while ((arg_opt = getopt_long(argc, argv, arg_opt_str, arg_long, &arg_opt_idx)) != -1
    1874:	10000059 	b	19dc <main+0x20c>
    1878:	00000000 	nop
           &&
           should_process) {
        switch (arg_opt) {
    187c:	8fc20024 	lw	v0,36(s8)
    1880:	2442ffaa 	addiu	v0,v0,-86
    1884:	2c43001a 	sltiu	v1,v0,26
    1888:	1060004b 	beqz	v1,19b8 <main+0x1e8>
    188c:	00000000 	nop
    1890:	00021880 	sll	v1,v0,0x2
    1894:	8f828030 	lw	v0,-32720(gp)
    1898:	24421e68 	addiu	v0,v0,7784
    189c:	00621021 	addu	v0,v1,v0
    18a0:	8c420000 	lw	v0,0(v0)
    18a4:	005c1021 	addu	v0,v0,gp
    18a8:	00400008 	jr	v0
    18ac:	00000000 	nop
            case 'h': {
                show_help();
    18b0:	8f828038 	lw	v0,-32712(gp)
    18b4:	0040c825 	move	t9,v0
    18b8:	0411fd9d 	bal	f30 <show_help>
    18bc:	00000000 	nop
    18c0:	8fdc0018 	lw	gp,24(s8)
                should_process = FALSE;
    18c4:	a3c00020 	sb	zero,32(s8)
            }
                break;
    18c8:	10000044 	b	19dc <main+0x20c>
    18cc:	00000000 	nop
            case 'V': {
                show_version();
    18d0:	8f828058 	lw	v0,-32680(gp)
    18d4:	0040c825 	move	t9,v0
    18d8:	0411fddc 	bal	104c <show_version>
    18dc:	00000000 	nop
    18e0:	8fdc0018 	lw	gp,24(s8)
                should_process = FALSE;
    18e4:	a3c00020 	sb	zero,32(s8)
            }
                break;
    18e8:	1000003c 	b	19dc <main+0x20c>
    18ec:	00000000 	nop
            case 'o': {
                set_output_file(&cmd_options, optarg);
    18f0:	8f828094 	lw	v0,-32620(gp)
    18f4:	8c430000 	lw	v1,0(v0)
    18f8:	27c20088 	addiu	v0,s8,136
    18fc:	00602825 	move	a1,v1
    1900:	00402025 	move	a0,v0
    1904:	8f82805c 	lw	v0,-32676(gp)
    1908:	0040c825 	move	t9,v0
    190c:	0411fcfd 	bal	d04 <set_output_file>
    1910:	00000000 	nop
    1914:	8fdc0018 	lw	gp,24(s8)
            }
                break;
    1918:	10000030 	b	19dc <main+0x20c>
    191c:	00000000 	nop
            case 'd': {
                set_divisor(&cmd_options, optarg, argv[optind]);
    1920:	8f828094 	lw	v0,-32620(gp)
    1924:	8c440000 	lw	a0,0(v0)
    1928:	8f8280d0 	lw	v0,-32560(gp)
    192c:	8c420000 	lw	v0,0(v0)
    1930:	00021080 	sll	v0,v0,0x2
    1934:	8fc300ac 	lw	v1,172(s8)
    1938:	00621021 	addu	v0,v1,v0
    193c:	8c430000 	lw	v1,0(v0)
    1940:	27c20088 	addiu	v0,s8,136
    1944:	00603025 	move	a2,v1
    1948:	00802825 	move	a1,a0
    194c:	00402025 	move	a0,v0
    1950:	8f828060 	lw	v0,-32672(gp)
    1954:	0040c825 	move	t9,v0
    1958:	0411fcf8 	bal	d3c <set_divisor>
    195c:	00000000 	nop
    1960:	8fdc0018 	lw	gp,24(s8)
            }
                break;
    1964:	1000001d 	b	19dc <main+0x20c>
    1968:	00000000 	nop
            case 'm': {
                set_multiple(&cmd_options, optarg, argv[optind]);
    196c:	8f828094 	lw	v0,-32620(gp)
    1970:	8c440000 	lw	a0,0(v0)
    1974:	8f8280d0 	lw	v0,-32560(gp)
    1978:	8c420000 	lw	v0,0(v0)
    197c:	00021080 	sll	v0,v0,0x2
    1980:	8fc300ac 	lw	v1,172(s8)
    1984:	00621021 	addu	v0,v1,v0
    1988:	8c430000 	lw	v1,0(v0)
    198c:	27c20088 	addiu	v0,s8,136
    1990:	00603025 	move	a2,v1
    1994:	00802825 	move	a1,a0
    1998:	00402025 	move	a0,v0
    199c:	8f828064 	lw	v0,-32668(gp)
    19a0:	0040c825 	move	t9,v0
    19a4:	0411fcf9 	bal	d8c <set_multiple>
    19a8:	00000000 	nop
    19ac:	8fdc0018 	lw	gp,24(s8)
            }
                break;
    19b0:	1000000a 	b	19dc <main+0x20c>
    19b4:	00000000 	nop
            default: {
                set_error(&cmd_options, INVALID_ARGUMENT);
    19b8:	27c20088 	addiu	v0,s8,136
    19bc:	2405ffff 	li	a1,-1
    19c0:	00402025 	move	a0,v0
    19c4:	8f828068 	lw	v0,-32664(gp)
    19c8:	0040c825 	move	t9,v0
    19cc:	0411fd03 	bal	ddc <set_error>
    19d0:	00000000 	nop
    19d4:	8fdc0018 	lw	gp,24(s8)
            }
                break;
    19d8:	00000000 	nop
    while ((arg_opt = getopt_long(argc, argv, arg_opt_str, arg_long, &arg_opt_idx)) != -1
    19dc:	27c40028 	addiu	a0,s8,40
    19e0:	27c30078 	addiu	v1,s8,120
    19e4:	27c20084 	addiu	v0,s8,132
    19e8:	afa20010 	sw	v0,16(sp)
    19ec:	00803825 	move	a3,a0
    19f0:	00603025 	move	a2,v1
    19f4:	8fc500ac 	lw	a1,172(s8)
    19f8:	8fc400a8 	lw	a0,168(s8)
    19fc:	8f8280bc 	lw	v0,-32580(gp)
    1a00:	0040c825 	move	t9,v0
    1a04:	0320f809 	jalr	t9
    1a08:	00000000 	nop
    1a0c:	8fdc0018 	lw	gp,24(s8)
    1a10:	afc20024 	sw	v0,36(s8)
    1a14:	8fc30024 	lw	v1,36(s8)
    1a18:	2402ffff 	li	v0,-1
    1a1c:	10620004 	beq	v1,v0,1a30 <main+0x260>
    1a20:	00000000 	nop
           &&
    1a24:	83c20020 	lb	v0,32(s8)
    1a28:	1440ff94 	bnez	v0,187c <main+0xac>
    1a2c:	00000000 	nop
        }
    }

    // TODO: agregar set de M y N cuando no se manda -d ni -m

    if (!should_process) {
    1a30:	83c20020 	lb	v0,32(s8)
    1a34:	14400004 	bnez	v0,1a48 <main+0x278>
    1a38:	00000000 	nop
        return 0;
    1a3c:	00001025 	move	v0,zero
    1a40:	1000001b 	b	1ab0 <main+0x2e0>
    1a44:	00000000 	nop
    }

    if (has_errors(&cmd_options)) {
    1a48:	27c20088 	addiu	v0,s8,136
    1a4c:	00402025 	move	a0,v0
    1a50:	8f82806c 	lw	v0,-32660(gp)
    1a54:	0040c825 	move	t9,v0
    1a58:	0411fcef 	bal	e18 <has_errors>
    1a5c:	00000000 	nop
    1a60:	8fdc0018 	lw	gp,24(s8)
    1a64:	1040000b 	beqz	v0,1a94 <main+0x2c4>
    1a68:	00000000 	nop
        show_error(&cmd_options);
    1a6c:	27c20088 	addiu	v0,s8,136
    1a70:	00402025 	move	a0,v0
    1a74:	8f828070 	lw	v0,-32656(gp)
    1a78:	0040c825 	move	t9,v0
    1a7c:	0411fcf3 	bal	e4c <show_error>
    1a80:	00000000 	nop
    1a84:	8fdc0018 	lw	gp,24(s8)
        return 1;
    1a88:	24020001 	li	v0,1
    1a8c:	10000008 	b	1ab0 <main+0x2e0>
    1a90:	00000000 	nop
    }

    return process(&cmd_options);
    1a94:	27c20088 	addiu	v0,s8,136
    1a98:	00402025 	move	a0,v0
    1a9c:	8f828074 	lw	v0,-32652(gp)
    1aa0:	0040c825 	move	t9,v0
    1aa4:	0411fdfe 	bal	12a0 <process>
    1aa8:	00000000 	nop
    1aac:	8fdc0018 	lw	gp,24(s8)
}
    1ab0:	03c0e825 	move	sp,s8
    1ab4:	8fbf00a4 	lw	ra,164(sp)
    1ab8:	8fbe00a0 	lw	s8,160(sp)
    1abc:	27bd00a8 	addiu	sp,sp,168
    1ac0:	03e00008 	jr	ra
    1ac4:	00000000 	nop
	...

00001ad0 <__libc_csu_init>:
    1ad0:	3c1c0002 	lui	gp,0x2
    1ad4:	279c85a0 	addiu	gp,gp,-31328
    1ad8:	0399e021 	addu	gp,gp,t9
    1adc:	27bdffc8 	addiu	sp,sp,-56
    1ae0:	8f998078 	lw	t9,-32648(gp)
    1ae4:	afbc0010 	sw	gp,16(sp)
    1ae8:	afb50030 	sw	s5,48(sp)
    1aec:	00c0a825 	move	s5,a2
    1af0:	afb4002c 	sw	s4,44(sp)
    1af4:	00a0a025 	move	s4,a1
    1af8:	afb30028 	sw	s3,40(sp)
    1afc:	00809825 	move	s3,a0
    1b00:	afb20024 	sw	s2,36(sp)
    1b04:	afb0001c 	sw	s0,28(sp)
    1b08:	afbf0034 	sw	ra,52(sp)
    1b0c:	0411fbdb 	bal	a7c <_init>
    1b10:	afb10020 	sw	s1,32(sp)
    1b14:	8fbc0010 	lw	gp,16(sp)
    1b18:	8f90807c 	lw	s0,-32644(gp)
    1b1c:	8f928080 	lw	s2,-32640(gp)
    1b20:	02509023 	subu	s2,s2,s0
    1b24:	00129083 	sra	s2,s2,0x2
    1b28:	12400009 	beqz	s2,1b50 <__libc_csu_init+0x80>
    1b2c:	00008825 	move	s1,zero
    1b30:	8e190000 	lw	t9,0(s0)
    1b34:	26310001 	addiu	s1,s1,1
    1b38:	02a03025 	move	a2,s5
    1b3c:	02802825 	move	a1,s4
    1b40:	0320f809 	jalr	t9
    1b44:	02602025 	move	a0,s3
    1b48:	1651fff9 	bne	s2,s1,1b30 <__libc_csu_init+0x60>
    1b4c:	26100004 	addiu	s0,s0,4
    1b50:	8fbf0034 	lw	ra,52(sp)
    1b54:	8fb50030 	lw	s5,48(sp)
    1b58:	8fb4002c 	lw	s4,44(sp)
    1b5c:	8fb30028 	lw	s3,40(sp)
    1b60:	8fb20024 	lw	s2,36(sp)
    1b64:	8fb10020 	lw	s1,32(sp)
    1b68:	8fb0001c 	lw	s0,28(sp)
    1b6c:	03e00008 	jr	ra
    1b70:	27bd0038 	addiu	sp,sp,56

00001b74 <__libc_csu_fini>:
    1b74:	03e00008 	jr	ra
    1b78:	00000000 	nop
    1b7c:	00000000 	nop

Disassembly of section .MIPS.stubs:

00001b80 <_MIPS_STUBS_>:
    1b80:	8f998010 	lw	t9,-32752(gp)
    1b84:	03e07825 	move	t7,ra
    1b88:	0320f809 	jalr	t9
    1b8c:	2418002e 	li	t8,46
    1b90:	8f998010 	lw	t9,-32752(gp)
    1b94:	03e07825 	move	t7,ra
    1b98:	0320f809 	jalr	t9
    1b9c:	2418002d 	li	t8,45
    1ba0:	8f998010 	lw	t9,-32752(gp)
    1ba4:	03e07825 	move	t7,ra
    1ba8:	0320f809 	jalr	t9
    1bac:	2418002b 	li	t8,43
    1bb0:	8f998010 	lw	t9,-32752(gp)
    1bb4:	03e07825 	move	t7,ra
    1bb8:	0320f809 	jalr	t9
    1bbc:	24180029 	li	t8,41
    1bc0:	8f998010 	lw	t9,-32752(gp)
    1bc4:	03e07825 	move	t7,ra
    1bc8:	0320f809 	jalr	t9
    1bcc:	24180028 	li	t8,40
    1bd0:	8f998010 	lw	t9,-32752(gp)
    1bd4:	03e07825 	move	t7,ra
    1bd8:	0320f809 	jalr	t9
    1bdc:	24180027 	li	t8,39
    1be0:	8f998010 	lw	t9,-32752(gp)
    1be4:	03e07825 	move	t7,ra
    1be8:	0320f809 	jalr	t9
    1bec:	24180025 	li	t8,37
    1bf0:	8f998010 	lw	t9,-32752(gp)
    1bf4:	03e07825 	move	t7,ra
    1bf8:	0320f809 	jalr	t9
    1bfc:	24180024 	li	t8,36
    1c00:	8f998010 	lw	t9,-32752(gp)
    1c04:	03e07825 	move	t7,ra
    1c08:	0320f809 	jalr	t9
    1c0c:	24180023 	li	t8,35
    1c10:	8f998010 	lw	t9,-32752(gp)
    1c14:	03e07825 	move	t7,ra
    1c18:	0320f809 	jalr	t9
    1c1c:	24180021 	li	t8,33
    1c20:	8f998010 	lw	t9,-32752(gp)
    1c24:	03e07825 	move	t7,ra
    1c28:	0320f809 	jalr	t9
    1c2c:	2418001e 	li	t8,30
    1c30:	8f998010 	lw	t9,-32752(gp)
    1c34:	03e07825 	move	t7,ra
    1c38:	0320f809 	jalr	t9
    1c3c:	2418001d 	li	t8,29
    1c40:	8f998010 	lw	t9,-32752(gp)
    1c44:	03e07825 	move	t7,ra
    1c48:	0320f809 	jalr	t9
    1c4c:	2418001a 	li	t8,26
	...

Disassembly of section .fini:

00001c60 <_fini>:
    1c60:	3c1c0002 	lui	gp,0x2
    1c64:	279c8410 	addiu	gp,gp,-31728
    1c68:	0399e021 	addu	gp,gp,t9
    1c6c:	27bdffe0 	addiu	sp,sp,-32
    1c70:	afbc0010 	sw	gp,16(sp)
    1c74:	afbf001c 	sw	ra,28(sp)
    1c78:	8fbf001c 	lw	ra,28(sp)
    1c7c:	03e00008 	jr	ra
    1c80:	27bd0020 	addiu	sp,sp,32
