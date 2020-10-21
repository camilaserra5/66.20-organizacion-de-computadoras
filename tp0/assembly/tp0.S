
tp0:     file format elf32-tradbigmips


Disassembly of section .init:

00000b28 <_init>:
 b28:	3c1c0002 	lui	gp,0x2
 b2c:	279c9d48 	addiu	gp,gp,-25272
 b30:	0399e021 	addu	gp,gp,t9
 b34:	27bdffe0 	addiu	sp,sp,-32
 b38:	afbc0010 	sw	gp,16(sp)
 b3c:	afbf001c 	sw	ra,28(sp)
 b40:	8f8280d8 	lw	v0,-32552(gp)
 b44:	10400004 	beqz	v0,b58 <_init+0x30>
 b48:	00000000 	nop
 b4c:	8f9980d8 	lw	t9,-32552(gp)
 b50:	0320f809 	jalr	t9
 b54:	00000000 	nop
 b58:	8fbf001c 	lw	ra,28(sp)
 b5c:	03e00008 	jr	ra
 b60:	27bd0020 	addiu	sp,sp,32

Disassembly of section .text:

00000b70 <__start>:
     b70:	03e00025 	move	zero,ra
     b74:	04110001 	bal	b7c <__start+0xc>
     b78:	00000000 	nop
     b7c:	3c1c0002 	lui	gp,0x2
     b80:	279c9cf4 	addiu	gp,gp,-25356
     b84:	039fe021 	addu	gp,gp,ra
     b88:	0000f825 	move	ra,zero
     b8c:	8f848018 	lw	a0,-32744(gp)
     b90:	8fa50000 	lw	a1,0(sp)
     b94:	27a60004 	addiu	a2,sp,4
     b98:	2401fff8 	li	at,-8
     b9c:	03a1e824 	and	sp,sp,at
     ba0:	27bdffe0 	addiu	sp,sp,-32
     ba4:	8f87801c 	lw	a3,-32740(gp)
     ba8:	8f888020 	lw	t0,-32736(gp)
     bac:	afa80010 	sw	t0,16(sp)
     bb0:	afa20014 	sw	v0,20(sp)
     bb4:	afbd0018 	sw	sp,24(sp)
     bb8:	8f9980cc 	lw	t9,-32564(gp)
     bbc:	0320f809 	jalr	t9
     bc0:	00000000 	nop

00000bc4 <hlt>:
     bc4:	1000ffff 	b	bc4 <hlt>
     bc8:	00000000 	nop
     bcc:	00000000 	nop

00000bd0 <deregister_tm_clones>:
     bd0:	3c1c0002 	lui	gp,0x2
     bd4:	279c9ca0 	addiu	gp,gp,-25440
     bd8:	0399e021 	addu	gp,gp,t9
     bdc:	8f848028 	lw	a0,-32728(gp)
     be0:	8f828024 	lw	v0,-32732(gp)
     be4:	24842874 	addiu	a0,a0,10356
     be8:	24420003 	addiu	v0,v0,3
     bec:	00441023 	subu	v0,v0,a0
     bf0:	2c420007 	sltiu	v0,v0,7
     bf4:	14400005 	bnez	v0,c0c <deregister_tm_clones+0x3c>
     bf8:	8f9980f8 	lw	t9,-32520(gp)
     bfc:	13200003 	beqz	t9,c0c <deregister_tm_clones+0x3c>
     c00:	00000000 	nop
     c04:	03200008 	jr	t9
     c08:	00000000 	nop
     c0c:	03e00008 	jr	ra
     c10:	00000000 	nop

00000c14 <register_tm_clones>:
     c14:	3c1c0002 	lui	gp,0x2
     c18:	279c9c5c 	addiu	gp,gp,-25508
     c1c:	0399e021 	addu	gp,gp,t9
     c20:	8f848028 	lw	a0,-32728(gp)
     c24:	8f858024 	lw	a1,-32732(gp)
     c28:	24842874 	addiu	a0,a0,10356
     c2c:	00a42823 	subu	a1,a1,a0
     c30:	00052883 	sra	a1,a1,0x2
     c34:	000517c2 	srl	v0,a1,0x1f
     c38:	00452821 	addu	a1,v0,a1
     c3c:	00052843 	sra	a1,a1,0x1
     c40:	10a00005 	beqz	a1,c58 <register_tm_clones+0x44>
     c44:	8f9980a8 	lw	t9,-32600(gp)
     c48:	13200003 	beqz	t9,c58 <register_tm_clones+0x44>
     c4c:	00000000 	nop
     c50:	03200008 	jr	t9
     c54:	00000000 	nop
     c58:	03e00008 	jr	ra
     c5c:	00000000 	nop

00000c60 <__do_global_dtors_aux>:
     c60:	3c1c0002 	lui	gp,0x2
     c64:	279c9c10 	addiu	gp,gp,-25584
     c68:	0399e021 	addu	gp,gp,t9
     c6c:	27bdffe0 	addiu	sp,sp,-32
     c70:	afb00018 	sw	s0,24(sp)
     c74:	8f908028 	lw	s0,-32728(gp)
     c78:	afbc0010 	sw	gp,16(sp)
     c7c:	afbf001c 	sw	ra,28(sp)
     c80:	92022980 	lbu	v0,10624(s0)
     c84:	1440000d 	bnez	v0,cbc <__do_global_dtors_aux+0x5c>
     c88:	8f8280fc 	lw	v0,-32516(gp)
     c8c:	10400005 	beqz	v0,ca4 <__do_global_dtors_aux+0x44>
     c90:	8f82802c 	lw	v0,-32724(gp)
     c94:	8f9980fc 	lw	t9,-32516(gp)
     c98:	0320f809 	jalr	t9
     c9c:	8c440000 	lw	a0,0(v0)
     ca0:	8fbc0010 	lw	gp,16(sp)
     ca4:	8f998030 	lw	t9,-32720(gp)
     ca8:	27390bd0 	addiu	t9,t9,3024
     cac:	0411ffc8 	bal	bd0 <deregister_tm_clones>
     cb0:	00000000 	nop
     cb4:	24020001 	li	v0,1
     cb8:	a2022980 	sb	v0,10624(s0)
     cbc:	8fbf001c 	lw	ra,28(sp)
     cc0:	8fb00018 	lw	s0,24(sp)
     cc4:	03e00008 	jr	ra
     cc8:	27bd0020 	addiu	sp,sp,32

00000ccc <frame_dummy>:
     ccc:	3c1c0002 	lui	gp,0x2
     cd0:	279c9ba4 	addiu	gp,gp,-25692
     cd4:	0399e021 	addu	gp,gp,t9
     cd8:	8f828028 	lw	v0,-32728(gp)
     cdc:	27bdffe0 	addiu	sp,sp,-32
     ce0:	244427bc 	addiu	a0,v0,10172
     ce4:	afbc0010 	sw	gp,16(sp)
     ce8:	afbf001c 	sw	ra,28(sp)
     cec:	8c820000 	lw	v0,0(a0)
     cf0:	14400006 	bnez	v0,d0c <frame_dummy+0x40>
     cf4:	8f9980b0 	lw	t9,-32592(gp)
     cf8:	8f998030 	lw	t9,-32720(gp)
     cfc:	8fbf001c 	lw	ra,28(sp)
     d00:	27390c14 	addiu	t9,t9,3092
     d04:	1000ffc3 	b	c14 <register_tm_clones>
     d08:	27bd0020 	addiu	sp,sp,32
     d0c:	1320fffa 	beqz	t9,cf8 <frame_dummy+0x2c>
     d10:	00000000 	nop
     d14:	0320f809 	jalr	t9
     d18:	00000000 	nop
     d1c:	1000fff6 	b	cf8 <frame_dummy+0x2c>
     d20:	8fbc0010 	lw	gp,16(sp)
	...

00000d30 <command_create>:
#include <string.h>
#include <stdbool.h>
#include "command.h"
#include "encode.h"

void command_create(command_options_st *opt) {
     d30:	3c1c0002 	lui	gp,0x2
     d34:	279c9b40 	addiu	gp,gp,-25792
     d38:	0399e021 	addu	gp,gp,t9
     d3c:	27bdffe0 	addiu	sp,sp,-32
     d40:	afbf001c 	sw	ra,28(sp)
     d44:	afbe0018 	sw	s8,24(sp)
     d48:	03a0f025 	move	s8,sp
     d4c:	afbc0010 	sw	gp,16(sp)
     d50:	afc40020 	sw	a0,32(s8)
    create_file(&opt->input_file);
     d54:	8fc20020 	lw	v0,32(s8)
     d58:	00402025 	move	a0,v0
     d5c:	8f828034 	lw	v0,-32716(gp)
     d60:	0040c825 	move	t9,v0
     d64:	04110376 	bal	1b40 <create_file>
     d68:	00000000 	nop
     d6c:	8fdc0010 	lw	gp,16(s8)
    create_file(&opt->output_file);
     d70:	8fc20020 	lw	v0,32(s8)
     d74:	24420008 	addiu	v0,v0,8
     d78:	00402025 	move	a0,v0
     d7c:	8f828034 	lw	v0,-32716(gp)
     d80:	0040c825 	move	t9,v0
     d84:	0411036e 	bal	1b40 <create_file>
     d88:	00000000 	nop
     d8c:	8fdc0010 	lw	gp,16(s8)
    opt->error_condition = OK;
     d90:	8fc20020 	lw	v0,32(s8)
     d94:	a0400019 	sb	zero,25(v0)
    opt->encode_option = ENCODE;
     d98:	8fc20020 	lw	v0,32(s8)
     d9c:	24030001 	li	v1,1
     da0:	a0430018 	sb	v1,24(v0)
    opt->input_path = 0;
     da4:	8fc20020 	lw	v0,32(s8)
     da8:	ac400010 	sw	zero,16(v0)
    opt->output_path = 0;
     dac:	8fc20020 	lw	v0,32(s8)
     db0:	ac400014 	sw	zero,20(v0)
}
     db4:	00000000 	nop
     db8:	03c0e825 	move	sp,s8
     dbc:	8fbf001c 	lw	ra,28(sp)
     dc0:	8fbe0018 	lw	s8,24(sp)
     dc4:	27bd0020 	addiu	sp,sp,32
     dc8:	03e00008 	jr	ra
     dcc:	00000000 	nop

00000dd0 <set_input_file>:

void set_input_file(command_options_st *opt, const char *input) {
     dd0:	27bdfff8 	addiu	sp,sp,-8
     dd4:	afbe0004 	sw	s8,4(sp)
     dd8:	03a0f025 	move	s8,sp
     ddc:	afc40008 	sw	a0,8(s8)
     de0:	afc5000c 	sw	a1,12(s8)
    opt->input_path = input;
     de4:	8fc20008 	lw	v0,8(s8)
     de8:	8fc3000c 	lw	v1,12(s8)
     dec:	ac430010 	sw	v1,16(v0)
}
     df0:	00000000 	nop
     df4:	03c0e825 	move	sp,s8
     df8:	8fbe0004 	lw	s8,4(sp)
     dfc:	27bd0008 	addiu	sp,sp,8
     e00:	03e00008 	jr	ra
     e04:	00000000 	nop

00000e08 <set_output_file>:

void set_output_file(command_options_st *opt, const char *output) {
     e08:	27bdfff8 	addiu	sp,sp,-8
     e0c:	afbe0004 	sw	s8,4(sp)
     e10:	03a0f025 	move	s8,sp
     e14:	afc40008 	sw	a0,8(s8)
     e18:	afc5000c 	sw	a1,12(s8)
    opt->output_path = output;
     e1c:	8fc20008 	lw	v0,8(s8)
     e20:	8fc3000c 	lw	v1,12(s8)
     e24:	ac430014 	sw	v1,20(v0)
}
     e28:	00000000 	nop
     e2c:	03c0e825 	move	sp,s8
     e30:	8fbe0004 	lw	s8,4(sp)
     e34:	27bd0008 	addiu	sp,sp,8
     e38:	03e00008 	jr	ra
     e3c:	00000000 	nop

00000e40 <set_encode>:

void set_encode(command_options_st *opt) {
     e40:	27bdfff8 	addiu	sp,sp,-8
     e44:	afbe0004 	sw	s8,4(sp)
     e48:	03a0f025 	move	s8,sp
     e4c:	afc40008 	sw	a0,8(s8)
    opt->encode_option = ENCODE;
     e50:	8fc20008 	lw	v0,8(s8)
     e54:	24030001 	li	v1,1
     e58:	a0430018 	sb	v1,24(v0)
}
     e5c:	00000000 	nop
     e60:	03c0e825 	move	sp,s8
     e64:	8fbe0004 	lw	s8,4(sp)
     e68:	27bd0008 	addiu	sp,sp,8
     e6c:	03e00008 	jr	ra
     e70:	00000000 	nop

00000e74 <set_decode>:

void set_decode(command_options_st *opt) {
     e74:	27bdfff8 	addiu	sp,sp,-8
     e78:	afbe0004 	sw	s8,4(sp)
     e7c:	03a0f025 	move	s8,sp
     e80:	afc40008 	sw	a0,8(s8)
    opt->encode_option = DECODE;
     e84:	8fc20008 	lw	v0,8(s8)
     e88:	a0400018 	sb	zero,24(v0)
}
     e8c:	00000000 	nop
     e90:	03c0e825 	move	sp,s8
     e94:	8fbe0004 	lw	s8,4(sp)
     e98:	27bd0008 	addiu	sp,sp,8
     e9c:	03e00008 	jr	ra
     ea0:	00000000 	nop

00000ea4 <set_error>:

void set_error(command_options_st *opt, char error_condition) {
     ea4:	27bdfff8 	addiu	sp,sp,-8
     ea8:	afbe0004 	sw	s8,4(sp)
     eac:	03a0f025 	move	s8,sp
     eb0:	afc40008 	sw	a0,8(s8)
     eb4:	00a01025 	move	v0,a1
     eb8:	a3c2000c 	sb	v0,12(s8)
    opt->error_condition = error_condition;
     ebc:	8fc20008 	lw	v0,8(s8)
     ec0:	93c3000c 	lbu	v1,12(s8)
     ec4:	a0430019 	sb	v1,25(v0)
}
     ec8:	00000000 	nop
     ecc:	03c0e825 	move	sp,s8
     ed0:	8fbe0004 	lw	s8,4(sp)
     ed4:	27bd0008 	addiu	sp,sp,8
     ed8:	03e00008 	jr	ra
     edc:	00000000 	nop

00000ee0 <has_errors>:

int has_errors(command_options_st *opt) {
     ee0:	27bdfff8 	addiu	sp,sp,-8
     ee4:	afbe0004 	sw	s8,4(sp)
     ee8:	03a0f025 	move	s8,sp
     eec:	afc40008 	sw	a0,8(s8)
    if (opt->error_condition != OK) {
     ef0:	8fc20008 	lw	v0,8(s8)
     ef4:	80420019 	lb	v0,25(v0)
     ef8:	10400004 	beqz	v0,f0c <has_errors+0x2c>
     efc:	00000000 	nop
        return ERROR;
     f00:	24020001 	li	v0,1
     f04:	10000002 	b	f10 <has_errors+0x30>
     f08:	00000000 	nop
    }
    return OK;
     f0c:	00001025 	move	v0,zero
}
     f10:	03c0e825 	move	sp,s8
     f14:	8fbe0004 	lw	s8,4(sp)
     f18:	27bd0008 	addiu	sp,sp,8
     f1c:	03e00008 	jr	ra
     f20:	00000000 	nop

00000f24 <show_error>:

void show_error(command_options_st *opt) {
     f24:	3c1c0002 	lui	gp,0x2
     f28:	279c994c 	addiu	gp,gp,-26292
     f2c:	0399e021 	addu	gp,gp,t9
     f30:	27bdffd8 	addiu	sp,sp,-40
     f34:	afbf0024 	sw	ra,36(sp)
     f38:	afbe0020 	sw	s8,32(sp)
     f3c:	03a0f025 	move	s8,sp
     f40:	afbc0010 	sw	gp,16(sp)
     f44:	afc40028 	sw	a0,40(s8)
    char *error_message = NULL;
     f48:	afc00018 	sw	zero,24(s8)
    bool should_show_help = false;
     f4c:	a3c0001c 	sb	zero,28(s8)
    if (opt->error_condition == INVALID_ARGUMENT) {
     f50:	8fc20028 	lw	v0,40(s8)
     f54:	80430019 	lb	v1,25(v0)
     f58:	2402ffff 	li	v0,-1
     f5c:	14620008 	bne	v1,v0,f80 <show_error+0x5c>
     f60:	00000000 	nop
        error_message = "Argumentos Invalidos!\n\n";
     f64:	8f828030 	lw	v0,-32720(gp)
     f68:	244224e0 	addiu	v0,v0,9440
     f6c:	afc20018 	sw	v0,24(s8)
        should_show_help = true;
     f70:	24020001 	li	v0,1
     f74:	a3c2001c 	sb	v0,28(s8)
     f78:	1000001f 	b	ff8 <show_error+0xd4>
     f7c:	00000000 	nop
    } else if (opt->error_condition == NO_ARGUMENTS) {
     f80:	8fc20028 	lw	v0,40(s8)
     f84:	80430019 	lb	v1,25(v0)
     f88:	2402fffe 	li	v0,-2
     f8c:	14620008 	bne	v1,v0,fb0 <show_error+0x8c>
     f90:	00000000 	nop
        error_message = "No se recibieron Argumentos!\n\n";
     f94:	8f828030 	lw	v0,-32720(gp)
     f98:	244224f8 	addiu	v0,v0,9464
     f9c:	afc20018 	sw	v0,24(s8)
        should_show_help = true;
     fa0:	24020001 	li	v0,1
     fa4:	a3c2001c 	sb	v0,28(s8)
     fa8:	10000013 	b	ff8 <show_error+0xd4>
     fac:	00000000 	nop
    } else if (opt->error_condition == INVALID_FILE_LENGTH) {
     fb0:	8fc20028 	lw	v0,40(s8)
     fb4:	80430019 	lb	v1,25(v0)
     fb8:	2402fffc 	li	v0,-4
     fbc:	14620006 	bne	v1,v0,fd8 <show_error+0xb4>
     fc0:	00000000 	nop
        error_message = "Longitud de Archivo de Entrada Invalido!\n\n";
     fc4:	8f828030 	lw	v0,-32720(gp)
     fc8:	24422518 	addiu	v0,v0,9496
     fcc:	afc20018 	sw	v0,24(s8)
     fd0:	10000009 	b	ff8 <show_error+0xd4>
     fd4:	00000000 	nop
    } else if (opt->error_condition == INVALID_CHARS) {
     fd8:	8fc20028 	lw	v0,40(s8)
     fdc:	80430019 	lb	v1,25(v0)
     fe0:	2402fffb 	li	v0,-5
     fe4:	14620004 	bne	v1,v0,ff8 <show_error+0xd4>
     fe8:	00000000 	nop
        error_message = "Caracteres invalidos en Archivo Codificado!\n\n";
     fec:	8f828030 	lw	v0,-32720(gp)
     ff0:	24422544 	addiu	v0,v0,9540
     ff4:	afc20018 	sw	v0,24(s8)
    }

    fprintf(stderr, "%s", error_message);
     ff8:	8f8280f0 	lw	v0,-32528(gp)
     ffc:	8c420000 	lw	v0,0(v0)
    1000:	00402825 	move	a1,v0
    1004:	8fc40018 	lw	a0,24(s8)
    1008:	8f8280a0 	lw	v0,-32608(gp)
    100c:	0040c825 	move	t9,v0
    1010:	0320f809 	jalr	t9
    1014:	00000000 	nop
    1018:	8fdc0010 	lw	gp,16(s8)
    if (should_show_help) {
    101c:	93c2001c 	lbu	v0,28(s8)
    1020:	10400006 	beqz	v0,103c <show_error+0x118>
    1024:	00000000 	nop
        show_help();
    1028:	8f828038 	lw	v0,-32712(gp)
    102c:	0040c825 	move	t9,v0
    1030:	04110009 	bal	1058 <show_help>
    1034:	00000000 	nop
    1038:	8fdc0010 	lw	gp,16(s8)
    }
}
    103c:	00000000 	nop
    1040:	03c0e825 	move	sp,s8
    1044:	8fbf0024 	lw	ra,36(sp)
    1048:	8fbe0020 	lw	s8,32(sp)
    104c:	27bd0028 	addiu	sp,sp,40
    1050:	03e00008 	jr	ra
    1054:	00000000 	nop

00001058 <show_help>:

void show_help() {
    1058:	3c1c0002 	lui	gp,0x2
    105c:	279c9818 	addiu	gp,gp,-26600
    1060:	0399e021 	addu	gp,gp,t9
    1064:	27bdffe0 	addiu	sp,sp,-32
    1068:	afbf001c 	sw	ra,28(sp)
    106c:	afbe0018 	sw	s8,24(sp)
    1070:	03a0f025 	move	s8,sp
    1074:	afbc0010 	sw	gp,16(sp)
    printf("Options:\n");
    1078:	8f828030 	lw	v0,-32720(gp)
    107c:	24442574 	addiu	a0,v0,9588
    1080:	8f8280e0 	lw	v0,-32544(gp)
    1084:	0040c825 	move	t9,v0
    1088:	0320f809 	jalr	t9
    108c:	00000000 	nop
    1090:	8fdc0010 	lw	gp,16(s8)
    printf("\t-V,\t--version\tPrint version and quit.\n");
    1094:	8f828030 	lw	v0,-32720(gp)
    1098:	24442580 	addiu	a0,v0,9600
    109c:	8f8280e0 	lw	v0,-32544(gp)
    10a0:	0040c825 	move	t9,v0
    10a4:	0320f809 	jalr	t9
    10a8:	00000000 	nop
    10ac:	8fdc0010 	lw	gp,16(s8)
    printf("\t-h,\t--help\t\tPrint this information.\n");
    10b0:	8f828030 	lw	v0,-32720(gp)
    10b4:	244425a8 	addiu	a0,v0,9640
    10b8:	8f8280e0 	lw	v0,-32544(gp)
    10bc:	0040c825 	move	t9,v0
    10c0:	0320f809 	jalr	t9
    10c4:	00000000 	nop
    10c8:	8fdc0010 	lw	gp,16(s8)
    printf("\t-i,\t--input\t\tLocation of the input file.\n");
    10cc:	8f828030 	lw	v0,-32720(gp)
    10d0:	244425d0 	addiu	a0,v0,9680
    10d4:	8f8280e0 	lw	v0,-32544(gp)
    10d8:	0040c825 	move	t9,v0
    10dc:	0320f809 	jalr	t9
    10e0:	00000000 	nop
    10e4:	8fdc0010 	lw	gp,16(s8)
    printf("\t-o,\t--output\tLocation of the output file.\n");
    10e8:	8f828030 	lw	v0,-32720(gp)
    10ec:	244425fc 	addiu	a0,v0,9724
    10f0:	8f8280e0 	lw	v0,-32544(gp)
    10f4:	0040c825 	move	t9,v0
    10f8:	0320f809 	jalr	t9
    10fc:	00000000 	nop
    1100:	8fdc0010 	lw	gp,16(s8)
    printf("\t-d,\t--decode\tDecode a base64-encoded file (default is encode).\n");
    1104:	8f828030 	lw	v0,-32720(gp)
    1108:	24442628 	addiu	a0,v0,9768
    110c:	8f8280e0 	lw	v0,-32544(gp)
    1110:	0040c825 	move	t9,v0
    1114:	0320f809 	jalr	t9
    1118:	00000000 	nop
    111c:	8fdc0010 	lw	gp,16(s8)
    printf("Examples:\n");
    1120:	8f828030 	lw	v0,-32720(gp)
    1124:	24442668 	addiu	a0,v0,9832
    1128:	8f8280e0 	lw	v0,-32544(gp)
    112c:	0040c825 	move	t9,v0
    1130:	0320f809 	jalr	t9
    1134:	00000000 	nop
    1138:	8fdc0010 	lw	gp,16(s8)
    printf("\ttp0 -i ~/input -o ~/output\n");
    113c:	8f828030 	lw	v0,-32720(gp)
    1140:	24442674 	addiu	a0,v0,9844
    1144:	8f8280e0 	lw	v0,-32544(gp)
    1148:	0040c825 	move	t9,v0
    114c:	0320f809 	jalr	t9
    1150:	00000000 	nop
    1154:	8fdc0010 	lw	gp,16(s8)
    printf("\ttp0 --decode\n");
    1158:	8f828030 	lw	v0,-32720(gp)
    115c:	24442690 	addiu	a0,v0,9872
    1160:	8f8280e0 	lw	v0,-32544(gp)
    1164:	0040c825 	move	t9,v0
    1168:	0320f809 	jalr	t9
    116c:	00000000 	nop
    1170:	8fdc0010 	lw	gp,16(s8)
}
    1174:	00000000 	nop
    1178:	03c0e825 	move	sp,s8
    117c:	8fbf001c 	lw	ra,28(sp)
    1180:	8fbe0018 	lw	s8,24(sp)
    1184:	27bd0020 	addiu	sp,sp,32
    1188:	03e00008 	jr	ra
    118c:	00000000 	nop

00001190 <show_version>:

void show_version() {
    1190:	3c1c0002 	lui	gp,0x2
    1194:	279c96e0 	addiu	gp,gp,-26912
    1198:	0399e021 	addu	gp,gp,t9
    119c:	27bdffe0 	addiu	sp,sp,-32
    11a0:	afbf001c 	sw	ra,28(sp)
    11a4:	afbe0018 	sw	s8,24(sp)
    11a8:	03a0f025 	move	s8,sp
    11ac:	afbc0010 	sw	gp,16(sp)
    printf("Version: 1.0\n");
    11b0:	8f828030 	lw	v0,-32720(gp)
    11b4:	244426a0 	addiu	a0,v0,9888
    11b8:	8f8280e0 	lw	v0,-32544(gp)
    11bc:	0040c825 	move	t9,v0
    11c0:	0320f809 	jalr	t9
    11c4:	00000000 	nop
    11c8:	8fdc0010 	lw	gp,16(s8)
}
    11cc:	00000000 	nop
    11d0:	03c0e825 	move	sp,s8
    11d4:	8fbf001c 	lw	ra,28(sp)
    11d8:	8fbe0018 	lw	s8,24(sp)
    11dc:	27bd0020 	addiu	sp,sp,32
    11e0:	03e00008 	jr	ra
    11e4:	00000000 	nop

000011e8 <process>:

char process(command_options_st *opt) {
    11e8:	3c1c0002 	lui	gp,0x2
    11ec:	279c9688 	addiu	gp,gp,-27000
    11f0:	0399e021 	addu	gp,gp,t9
    11f4:	27bdffd8 	addiu	sp,sp,-40
    11f8:	afbf0024 	sw	ra,36(sp)
    11fc:	afbe0020 	sw	s8,32(sp)
    1200:	03a0f025 	move	s8,sp
    1204:	afbc0010 	sw	gp,16(sp)
    1208:	afc40028 	sw	a0,40(s8)
    char result = open_file_read(&opt->input_file, opt->input_path);
    120c:	8fc30028 	lw	v1,40(s8)
    1210:	8fc20028 	lw	v0,40(s8)
    1214:	8c420010 	lw	v0,16(v0)
    1218:	00402825 	move	a1,v0
    121c:	00602025 	move	a0,v1
    1220:	8f82803c 	lw	v0,-32708(gp)
    1224:	0040c825 	move	t9,v0
    1228:	04110253 	bal	1b78 <open_file_read>
    122c:	00000000 	nop
    1230:	8fdc0010 	lw	gp,16(s8)
    1234:	a3c20018 	sb	v0,24(s8)
    if (!result) {
    1238:	83c20018 	lb	v0,24(s8)
    123c:	1440000d 	bnez	v0,1274 <process+0x8c>
    1240:	00000000 	nop
        result = open_file_write(&opt->output_file, opt->output_path);
    1244:	8fc20028 	lw	v0,40(s8)
    1248:	24430008 	addiu	v1,v0,8
    124c:	8fc20028 	lw	v0,40(s8)
    1250:	8c420014 	lw	v0,20(v0)
    1254:	00402825 	move	a1,v0
    1258:	00602025 	move	a0,v1
    125c:	8f828040 	lw	v0,-32704(gp)
    1260:	0040c825 	move	t9,v0
    1264:	0411028a 	bal	1c90 <open_file_write>
    1268:	00000000 	nop
    126c:	8fdc0010 	lw	gp,16(s8)
    1270:	a3c20018 	sb	v0,24(s8)
    }

    if (!result) {
    1274:	83c20018 	lb	v0,24(s8)
    1278:	14400019 	bnez	v0,12e0 <process+0xf8>
    127c:	00000000 	nop
        result = _do_encode_decode(opt);
    1280:	8fc40028 	lw	a0,40(s8)
    1284:	8f828044 	lw	v0,-32700(gp)
    1288:	0040c825 	move	t9,v0
    128c:	04110022 	bal	1318 <_do_encode_decode>
    1290:	00000000 	nop
    1294:	8fdc0010 	lw	gp,16(s8)
    1298:	a3c20018 	sb	v0,24(s8)
        close_file(&opt->input_file);
    129c:	8fc20028 	lw	v0,40(s8)
    12a0:	00402025 	move	a0,v0
    12a4:	8f828048 	lw	v0,-32696(gp)
    12a8:	0040c825 	move	t9,v0
    12ac:	041102be 	bal	1da8 <close_file>
    12b0:	00000000 	nop
    12b4:	8fdc0010 	lw	gp,16(s8)
        close_file(&opt->output_file);
    12b8:	8fc20028 	lw	v0,40(s8)
    12bc:	24420008 	addiu	v0,v0,8
    12c0:	00402025 	move	a0,v0
    12c4:	8f828048 	lw	v0,-32696(gp)
    12c8:	0040c825 	move	t9,v0
    12cc:	041102b6 	bal	1da8 <close_file>
    12d0:	00000000 	nop
    12d4:	8fdc0010 	lw	gp,16(s8)
    12d8:	10000008 	b	12fc <process+0x114>
    12dc:	00000000 	nop
    } else {
        close_file(&opt->input_file);
    12e0:	8fc20028 	lw	v0,40(s8)
    12e4:	00402025 	move	a0,v0
    12e8:	8f828048 	lw	v0,-32696(gp)
    12ec:	0040c825 	move	t9,v0
    12f0:	041102ad 	bal	1da8 <close_file>
    12f4:	00000000 	nop
    12f8:	8fdc0010 	lw	gp,16(s8)
    }

    return result;
    12fc:	83c20018 	lb	v0,24(s8)
}
    1300:	03c0e825 	move	sp,s8
    1304:	8fbf0024 	lw	ra,36(sp)
    1308:	8fbe0020 	lw	s8,32(sp)
    130c:	27bd0028 	addiu	sp,sp,40
    1310:	03e00008 	jr	ra
    1314:	00000000 	nop

00001318 <_do_encode_decode>:

char _do_encode_decode(command_options_st *opt) {
    1318:	3c1c0002 	lui	gp,0x2
    131c:	279c9558 	addiu	gp,gp,-27304
    1320:	0399e021 	addu	gp,gp,t9
    1324:	27bdffc0 	addiu	sp,sp,-64
    1328:	afbf003c 	sw	ra,60(sp)
    132c:	afbe0038 	sw	s8,56(sp)
    1330:	03a0f025 	move	s8,sp
    1334:	afbc0010 	sw	gp,16(sp)
    1338:	afc40040 	sw	a0,64(s8)
    unsigned char buf_decoded[3];
    unsigned char buf_encoded[4];
    unsigned char count = 0;
    133c:	a3c00018 	sb	zero,24(s8)

    if (opt->encode_option == ENCODE) {
    1340:	8fc20040 	lw	v0,64(s8)
    1344:	80430018 	lb	v1,24(v0)
    1348:	24020001 	li	v0,1
    134c:	1462004b 	bne	v1,v0,147c <_do_encode_decode+0x164>
    1350:	00000000 	nop
        while (!file_eof(&opt->input_file)) {
    1354:	10000040 	b	1458 <_do_encode_decode+0x140>
    1358:	00000000 	nop
            memset(buf_decoded, 0, 3);
    135c:	27c20028 	addiu	v0,s8,40
    1360:	24060003 	li	a2,3
    1364:	00002825 	move	a1,zero
    1368:	00402025 	move	a0,v0
    136c:	8f8280c0 	lw	v0,-32576(gp)
    1370:	0040c825 	move	t9,v0
    1374:	0320f809 	jalr	t9
    1378:	00000000 	nop
    137c:	8fdc0010 	lw	gp,16(s8)
            unsigned int read = file_read(&opt->input_file, buf_decoded, 3);
    1380:	8fc20040 	lw	v0,64(s8)
    1384:	27c30028 	addiu	v1,s8,40
    1388:	24060003 	li	a2,3
    138c:	00602825 	move	a1,v1
    1390:	00402025 	move	a0,v0
    1394:	8f82804c 	lw	v0,-32692(gp)
    1398:	0040c825 	move	t9,v0
    139c:	041102cb 	bal	1ecc <file_read>
    13a0:	00000000 	nop
    13a4:	8fdc0010 	lw	gp,16(s8)
    13a8:	afc20020 	sw	v0,32(s8)
            if (read > 0) {
    13ac:	8fc20020 	lw	v0,32(s8)
    13b0:	10400029 	beqz	v0,1458 <_do_encode_decode+0x140>
    13b4:	00000000 	nop
                Encode(buf_decoded, read, buf_encoded);
    13b8:	27c3002c 	addiu	v1,s8,44
    13bc:	27c20028 	addiu	v0,s8,40
    13c0:	00603025 	move	a2,v1
    13c4:	8fc50020 	lw	a1,32(s8)
    13c8:	00402025 	move	a0,v0
    13cc:	8f828050 	lw	v0,-32688(gp)
    13d0:	0040c825 	move	t9,v0
    13d4:	041100ce 	bal	1710 <Encode>
    13d8:	00000000 	nop
    13dc:	8fdc0010 	lw	gp,16(s8)
                file_write(&opt->output_file, buf_encoded, 4);
    13e0:	8fc20040 	lw	v0,64(s8)
    13e4:	24420008 	addiu	v0,v0,8
    13e8:	27c3002c 	addiu	v1,s8,44
    13ec:	24060004 	li	a2,4
    13f0:	00602825 	move	a1,v1
    13f4:	00402025 	move	a0,v0
    13f8:	8f828054 	lw	v0,-32684(gp)
    13fc:	0040c825 	move	t9,v0
    1400:	041102e6 	bal	1f9c <file_write>
    1404:	00000000 	nop
    1408:	8fdc0010 	lw	gp,16(s8)
                ++count;
    140c:	93c20018 	lbu	v0,24(s8)
    1410:	24420001 	addiu	v0,v0,1
    1414:	a3c20018 	sb	v0,24(s8)
                if (count == 18) // 19 * 4 =  76 bytes
    1418:	93c30018 	lbu	v1,24(s8)
    141c:	24020012 	li	v0,18
    1420:	1462000d 	bne	v1,v0,1458 <_do_encode_decode+0x140>
    1424:	00000000 	nop
                {
                    file_write(&opt->output_file, (unsigned char *) "\n", 1);
    1428:	8fc20040 	lw	v0,64(s8)
    142c:	24430008 	addiu	v1,v0,8
    1430:	24060001 	li	a2,1
    1434:	8f828030 	lw	v0,-32720(gp)
    1438:	244526b0 	addiu	a1,v0,9904
    143c:	00602025 	move	a0,v1
    1440:	8f828054 	lw	v0,-32684(gp)
    1444:	0040c825 	move	t9,v0
    1448:	041102d4 	bal	1f9c <file_write>
    144c:	00000000 	nop
    1450:	8fdc0010 	lw	gp,16(s8)
                    count = 0;
    1454:	a3c00018 	sb	zero,24(s8)
        while (!file_eof(&opt->input_file)) {
    1458:	8fc20040 	lw	v0,64(s8)
    145c:	00402025 	move	a0,v0
    1460:	8f828058 	lw	v0,-32680(gp)
    1464:	0040c825 	move	t9,v0
    1468:	041102e9 	bal	2010 <file_eof>
    146c:	00000000 	nop
    1470:	8fdc0010 	lw	gp,16(s8)
    1474:	1040ffb9 	beqz	v0,135c <_do_encode_decode+0x44>
    1478:	00000000 	nop
                }
            }
        }
    }

    if (opt->encode_option == DECODE) {
    147c:	8fc20040 	lw	v0,64(s8)
    1480:	80420018 	lb	v0,24(v0)
    1484:	14400097 	bnez	v0,16e4 <_do_encode_decode+0x3cc>
    1488:	00000000 	nop
        while (!file_eof(&opt->input_file) && !has_errors(opt)) {
    148c:	10000084 	b	16a0 <_do_encode_decode+0x388>
    1490:	00000000 	nop
            unsigned int read = file_read(&opt->input_file, buf_encoded, 4);
    1494:	8fc20040 	lw	v0,64(s8)
    1498:	27c3002c 	addiu	v1,s8,44
    149c:	24060004 	li	a2,4
    14a0:	00602825 	move	a1,v1
    14a4:	00402025 	move	a0,v0
    14a8:	8f82804c 	lw	v0,-32692(gp)
    14ac:	0040c825 	move	t9,v0
    14b0:	04110286 	bal	1ecc <file_read>
    14b4:	00000000 	nop
    14b8:	8fdc0010 	lw	gp,16(s8)
    14bc:	afc20024 	sw	v0,36(s8)
            if (read > 0) {
    14c0:	8fc20024 	lw	v0,36(s8)
    14c4:	10400076 	beqz	v0,16a0 <_do_encode_decode+0x388>
    14c8:	00000000 	nop
                if (read != 4) {
    14cc:	8fc30024 	lw	v1,36(s8)
    14d0:	24020004 	li	v0,4
    14d4:	10620010 	beq	v1,v0,1518 <_do_encode_decode+0x200>
    14d8:	00000000 	nop
                    set_error(opt, INVALID_FILE_LENGTH);
    14dc:	2405fffc 	li	a1,-4
    14e0:	8fc40040 	lw	a0,64(s8)
    14e4:	8f82805c 	lw	v0,-32676(gp)
    14e8:	0040c825 	move	t9,v0
    14ec:	0411fe6d 	bal	ea4 <set_error>
    14f0:	00000000 	nop
    14f4:	8fdc0010 	lw	gp,16(s8)
                    show_error(opt);
    14f8:	8fc40040 	lw	a0,64(s8)
    14fc:	8f828060 	lw	v0,-32672(gp)
    1500:	0040c825 	move	t9,v0
    1504:	0411fe87 	bal	f24 <show_error>
    1508:	00000000 	nop
    150c:	8fdc0010 	lw	gp,16(s8)
    1510:	10000063 	b	16a0 <_do_encode_decode+0x388>
    1514:	00000000 	nop
                } else {
                    ++count;
    1518:	93c20018 	lbu	v0,24(s8)
    151c:	24420001 	addiu	v0,v0,1
    1520:	a3c20018 	sb	v0,24(s8)
                    if (count == 18) { // 19 * 4 =  76 bytes
    1524:	93c30018 	lbu	v1,24(s8)
    1528:	24020012 	li	v0,18
    152c:	1462000c 	bne	v1,v0,1560 <_do_encode_decode+0x248>
    1530:	00000000 	nop
                        unsigned char aux;
                        file_read(&opt->input_file, &aux, 1);
    1534:	8fc20040 	lw	v0,64(s8)
    1538:	27c30030 	addiu	v1,s8,48
    153c:	24060001 	li	a2,1
    1540:	00602825 	move	a1,v1
    1544:	00402025 	move	a0,v0
    1548:	8f82804c 	lw	v0,-32692(gp)
    154c:	0040c825 	move	t9,v0
    1550:	0411025e 	bal	1ecc <file_read>
    1554:	00000000 	nop
    1558:	8fdc0010 	lw	gp,16(s8)
                        count = 0;
    155c:	a3c00018 	sb	zero,24(s8)
                    }

                    if (Decode(buf_encoded, buf_decoded)) {
    1560:	27c30028 	addiu	v1,s8,40
    1564:	27c2002c 	addiu	v0,s8,44
    1568:	00602825 	move	a1,v1
    156c:	00402025 	move	a0,v0
    1570:	8f828064 	lw	v0,-32668(gp)
    1574:	0040c825 	move	t9,v0
    1578:	04110114 	bal	19cc <Decode>
    157c:	00000000 	nop
    1580:	8fdc0010 	lw	gp,16(s8)
    1584:	10400022 	beqz	v0,1610 <_do_encode_decode+0x2f8>
    1588:	00000000 	nop
                        char aux = 0;
    158c:	a3c00019 	sb	zero,25(s8)
                        if (buf_encoded[2] == '=') {
    1590:	93c3002e 	lbu	v1,46(s8)
    1594:	2402003d 	li	v0,61
    1598:	14620005 	bne	v1,v0,15b0 <_do_encode_decode+0x298>
    159c:	00000000 	nop
                            ++aux;
    15a0:	93c20019 	lbu	v0,25(s8)
    15a4:	24420001 	addiu	v0,v0,1
    15a8:	304200ff 	andi	v0,v0,0xff
    15ac:	a3c20019 	sb	v0,25(s8)
                        }
                        if (buf_encoded[3] == '=') {
    15b0:	93c3002f 	lbu	v1,47(s8)
    15b4:	2402003d 	li	v0,61
    15b8:	14620005 	bne	v1,v0,15d0 <_do_encode_decode+0x2b8>
    15bc:	00000000 	nop
                            ++aux;
    15c0:	93c20019 	lbu	v0,25(s8)
    15c4:	24420001 	addiu	v0,v0,1
    15c8:	304200ff 	andi	v0,v0,0xff
    15cc:	a3c20019 	sb	v0,25(s8)
                        }

                        file_write(&opt->output_file, buf_decoded, 3 - aux);
    15d0:	8fc20040 	lw	v0,64(s8)
    15d4:	24440008 	addiu	a0,v0,8
    15d8:	83c20019 	lb	v0,25(s8)
    15dc:	24030003 	li	v1,3
    15e0:	00621023 	subu	v0,v1,v0
    15e4:	00401825 	move	v1,v0
    15e8:	27c20028 	addiu	v0,s8,40
    15ec:	00603025 	move	a2,v1
    15f0:	00402825 	move	a1,v0
    15f4:	8f828054 	lw	v0,-32684(gp)
    15f8:	0040c825 	move	t9,v0
    15fc:	04110267 	bal	1f9c <file_write>
    1600:	00000000 	nop
    1604:	8fdc0010 	lw	gp,16(s8)
    1608:	10000025 	b	16a0 <_do_encode_decode+0x388>
    160c:	00000000 	nop
                    } else {
                        set_error(opt, INVALID_CHARS);
    1610:	2405fffb 	li	a1,-5
    1614:	8fc40040 	lw	a0,64(s8)
    1618:	8f82805c 	lw	v0,-32676(gp)
    161c:	0040c825 	move	t9,v0
    1620:	0411fe20 	bal	ea4 <set_error>
    1624:	00000000 	nop
    1628:	8fdc0010 	lw	gp,16(s8)
                        show_error(opt);
    162c:	8fc40040 	lw	a0,64(s8)
    1630:	8f828060 	lw	v0,-32672(gp)
    1634:	0040c825 	move	t9,v0
    1638:	0411fe3a 	bal	f24 <show_error>
    163c:	00000000 	nop
    1640:	8fdc0010 	lw	gp,16(s8)
                        unsigned int i;
                        for (i = 0; i < 4; ++i) {
    1644:	afc0001c 	sw	zero,28(s8)
    1648:	10000011 	b	1690 <_do_encode_decode+0x378>
    164c:	00000000 	nop
                            fprintf(stderr, "%c", buf_encoded[i]);
    1650:	8f8280f0 	lw	v0,-32528(gp)
    1654:	8c440000 	lw	a0,0(v0)
    1658:	8fc2001c 	lw	v0,28(s8)
    165c:	27c30018 	addiu	v1,s8,24
    1660:	00621021 	addu	v0,v1,v0
    1664:	90420014 	lbu	v0,20(v0)
    1668:	00802825 	move	a1,a0
    166c:	00402025 	move	a0,v0
    1670:	8f8280b4 	lw	v0,-32588(gp)
    1674:	0040c825 	move	t9,v0
    1678:	0320f809 	jalr	t9
    167c:	00000000 	nop
    1680:	8fdc0010 	lw	gp,16(s8)
                        for (i = 0; i < 4; ++i) {
    1684:	8fc2001c 	lw	v0,28(s8)
    1688:	24420001 	addiu	v0,v0,1
    168c:	afc2001c 	sw	v0,28(s8)
    1690:	8fc2001c 	lw	v0,28(s8)
    1694:	2c420004 	sltiu	v0,v0,4
    1698:	1440ffed 	bnez	v0,1650 <_do_encode_decode+0x338>
    169c:	00000000 	nop
        while (!file_eof(&opt->input_file) && !has_errors(opt)) {
    16a0:	8fc20040 	lw	v0,64(s8)
    16a4:	00402025 	move	a0,v0
    16a8:	8f828058 	lw	v0,-32680(gp)
    16ac:	0040c825 	move	t9,v0
    16b0:	04110257 	bal	2010 <file_eof>
    16b4:	00000000 	nop
    16b8:	8fdc0010 	lw	gp,16(s8)
    16bc:	14400009 	bnez	v0,16e4 <_do_encode_decode+0x3cc>
    16c0:	00000000 	nop
    16c4:	8fc40040 	lw	a0,64(s8)
    16c8:	8f828068 	lw	v0,-32664(gp)
    16cc:	0040c825 	move	t9,v0
    16d0:	0411fe03 	bal	ee0 <has_errors>
    16d4:	00000000 	nop
    16d8:	8fdc0010 	lw	gp,16(s8)
    16dc:	1040ff6d 	beqz	v0,1494 <_do_encode_decode+0x17c>
    16e0:	00000000 	nop

            }
        }
    }

    return opt->error_condition;
    16e4:	8fc20040 	lw	v0,64(s8)
    16e8:	80420019 	lb	v0,25(v0)
}
    16ec:	03c0e825 	move	sp,s8
    16f0:	8fbf003c 	lw	ra,60(sp)
    16f4:	8fbe0038 	lw	s8,56(sp)
    16f8:	27bd0040 	addiu	sp,sp,64
    16fc:	03e00008 	jr	ra
    1700:	00000000 	nop
	...

00001710 <Encode>:
                                         '4', '5', '6', '7', '8', '9', '+', '/'};

static int encoding_table_size = 64;


void Encode(const unsigned char *buffer, unsigned int length, unsigned char *output) {
    1710:	3c1c0002 	lui	gp,0x2
    1714:	279c9160 	addiu	gp,gp,-28320
    1718:	0399e021 	addu	gp,gp,t9
    171c:	27bdffe0 	addiu	sp,sp,-32
    1720:	afbe001c 	sw	s8,28(sp)
    1724:	03a0f025 	move	s8,sp
    1728:	afbc0000 	sw	gp,0(sp)
    172c:	afc40020 	sw	a0,32(s8)
    1730:	afc50024 	sw	a1,36(s8)
    1734:	afc60028 	sw	a2,40(s8)
    unsigned char b1 = buffer[0];
    1738:	8fc20020 	lw	v0,32(s8)
    173c:	90420000 	lbu	v0,0(v0)
    1740:	a3c20008 	sb	v0,8(s8)
    unsigned char b2 = buffer[1];
    1744:	8fc20020 	lw	v0,32(s8)
    1748:	90420001 	lbu	v0,1(v0)
    174c:	a3c20009 	sb	v0,9(s8)
    unsigned char b3 = buffer[2];
    1750:	8fc20020 	lw	v0,32(s8)
    1754:	90420002 	lbu	v0,2(v0)
    1758:	a3c2000a 	sb	v0,10(s8)
    //I retrieve the first 6 bits and operate..
    unsigned char b1aux = b1 >> 2;
    175c:	93c20008 	lbu	v0,8(s8)
    1760:	00021082 	srl	v0,v0,0x2
    1764:	a3c2000b 	sb	v0,11(s8)
    //Recovered the first 6 bits, I look into the encoding in the table.
    output[0] = encoding_table[(int) b1aux];
    1768:	93c3000b 	lbu	v1,11(s8)
    176c:	8f828028 	lw	v0,-32728(gp)
    1770:	244227d0 	addiu	v0,v0,10192
    1774:	00621021 	addu	v0,v1,v0
    1778:	90430000 	lbu	v1,0(v0)
    177c:	8fc20028 	lw	v0,40(s8)
    1780:	a0430000 	sb	v1,0(v0)
    //I retrieve the next 6 bits.
    unsigned char b2aux = b1 << 6;
    1784:	93c20008 	lbu	v0,8(s8)
    1788:	00021180 	sll	v0,v0,0x6
    178c:	a3c2000c 	sb	v0,12(s8)
    b2aux = b2aux >> 2;
    1790:	93c2000c 	lbu	v0,12(s8)
    1794:	00021082 	srl	v0,v0,0x2
    1798:	a3c2000c 	sb	v0,12(s8)
    b2aux = b2aux | (b2 >> 4);
    179c:	93c20009 	lbu	v0,9(s8)
    17a0:	00021102 	srl	v0,v0,0x4
    17a4:	304300ff 	andi	v1,v0,0xff
    17a8:	93c2000c 	lbu	v0,12(s8)
    17ac:	00621025 	or	v0,v1,v0
    17b0:	a3c2000c 	sb	v0,12(s8)
    //I take look into the encoding table
    output[1] = encoding_table[(int) b2aux];
    17b4:	8fc20028 	lw	v0,40(s8)
    17b8:	24420001 	addiu	v0,v0,1
    17bc:	93c4000c 	lbu	a0,12(s8)
    17c0:	8f838028 	lw	v1,-32728(gp)
    17c4:	246327d0 	addiu	v1,v1,10192
    17c8:	00831821 	addu	v1,a0,v1
    17cc:	90630000 	lbu	v1,0(v1)
    17d0:	a0430000 	sb	v1,0(v0)
    output[2] = BASE64_END;
    17d4:	8fc20028 	lw	v0,40(s8)
    17d8:	24420002 	addiu	v0,v0,2
    17dc:	2403003d 	li	v1,61
    17e0:	a0430000 	sb	v1,0(v0)
    output[3] = BASE64_END;
    17e4:	8fc20028 	lw	v0,40(s8)
    17e8:	24420003 	addiu	v0,v0,3
    17ec:	2403003d 	li	v1,61
    17f0:	a0430000 	sb	v1,0(v0)
    if (length == 3) {
    17f4:	8fc30024 	lw	v1,36(s8)
    17f8:	24020003 	li	v0,3
    17fc:	14620026 	bne	v1,v0,1898 <Encode+0x188>
    1800:	00000000 	nop
        /*
     * If I have 3 characters in the buffer I operate
     * with the last 2 characters.
     */
        unsigned char b3aux = b3 >> 6;
    1804:	93c2000a 	lbu	v0,10(s8)
    1808:	00021182 	srl	v0,v0,0x6
    180c:	a3c2000d 	sb	v0,13(s8)
        unsigned char b3aux2 = b2 << 4;
    1810:	93c20009 	lbu	v0,9(s8)
    1814:	00021100 	sll	v0,v0,0x4
    1818:	a3c2000e 	sb	v0,14(s8)
        b3aux2 = b3aux2 >> 2;
    181c:	93c2000e 	lbu	v0,14(s8)
    1820:	00021082 	srl	v0,v0,0x2
    1824:	a3c2000e 	sb	v0,14(s8)
        b3aux = b3aux | b3aux2;
    1828:	93c3000d 	lbu	v1,13(s8)
    182c:	93c2000e 	lbu	v0,14(s8)
    1830:	00621025 	or	v0,v1,v0
    1834:	a3c2000d 	sb	v0,13(s8)
        //I take look into the encoding table.
        output[2] = encoding_table[(int) b3aux];
    1838:	8fc20028 	lw	v0,40(s8)
    183c:	24420002 	addiu	v0,v0,2
    1840:	93c4000d 	lbu	a0,13(s8)
    1844:	8f838028 	lw	v1,-32728(gp)
    1848:	246327d0 	addiu	v1,v1,10192
    184c:	00831821 	addu	v1,a0,v1
    1850:	90630000 	lbu	v1,0(v1)
    1854:	a0430000 	sb	v1,0(v0)
        unsigned char b4aux = b3 << 2;
    1858:	93c2000a 	lbu	v0,10(s8)
    185c:	00021080 	sll	v0,v0,0x2
    1860:	a3c2000f 	sb	v0,15(s8)
        b4aux = b4aux >> 2;
    1864:	93c2000f 	lbu	v0,15(s8)
    1868:	00021082 	srl	v0,v0,0x2
    186c:	a3c2000f 	sb	v0,15(s8)
        //I take look into the encoding table.
        output[3] = encoding_table[(int) b4aux];
    1870:	8fc20028 	lw	v0,40(s8)
    1874:	24420003 	addiu	v0,v0,3
    1878:	93c4000f 	lbu	a0,15(s8)
    187c:	8f838028 	lw	v1,-32728(gp)
    1880:	246327d0 	addiu	v1,v1,10192
    1884:	00831821 	addu	v1,a0,v1
    1888:	90630000 	lbu	v1,0(v1)
    188c:	a0430000 	sb	v1,0(v0)
            b3aux2 = b3aux2 >> 2;
            b3aux = b3aux | b3aux2;
            output[2] = encoding_table[(int) b3aux];
        }
    }
}
    1890:	1000001a 	b	18fc <Encode+0x1ec>
    1894:	00000000 	nop
        if (length == 2) {
    1898:	8fc30024 	lw	v1,36(s8)
    189c:	24020002 	li	v0,2
    18a0:	14620016 	bne	v1,v0,18fc <Encode+0x1ec>
    18a4:	00000000 	nop
            unsigned char b3aux = b3 >> 6;
    18a8:	93c2000a 	lbu	v0,10(s8)
    18ac:	00021182 	srl	v0,v0,0x6
    18b0:	a3c20010 	sb	v0,16(s8)
            unsigned char b3aux2 = b2 << 4;
    18b4:	93c20009 	lbu	v0,9(s8)
    18b8:	00021100 	sll	v0,v0,0x4
    18bc:	a3c20011 	sb	v0,17(s8)
            b3aux2 = b3aux2 >> 2;
    18c0:	93c20011 	lbu	v0,17(s8)
    18c4:	00021082 	srl	v0,v0,0x2
    18c8:	a3c20011 	sb	v0,17(s8)
            b3aux = b3aux | b3aux2;
    18cc:	93c30010 	lbu	v1,16(s8)
    18d0:	93c20011 	lbu	v0,17(s8)
    18d4:	00621025 	or	v0,v1,v0
    18d8:	a3c20010 	sb	v0,16(s8)
            output[2] = encoding_table[(int) b3aux];
    18dc:	8fc20028 	lw	v0,40(s8)
    18e0:	24420002 	addiu	v0,v0,2
    18e4:	93c40010 	lbu	a0,16(s8)
    18e8:	8f838028 	lw	v1,-32728(gp)
    18ec:	246327d0 	addiu	v1,v1,10192
    18f0:	00831821 	addu	v1,a0,v1
    18f4:	90630000 	lbu	v1,0(v1)
    18f8:	a0430000 	sb	v1,0(v0)
}
    18fc:	00000000 	nop
    1900:	03c0e825 	move	sp,s8
    1904:	8fbe001c 	lw	s8,28(sp)
    1908:	27bd0020 	addiu	sp,sp,32
    190c:	03e00008 	jr	ra
    1910:	00000000 	nop

00001914 <DecodeChar>:
 * is the character '='.
 * post: returns the representation (int) of the character
 * in the encoding table.
 *
 */
unsigned char DecodeChar(char character) {
    1914:	3c1c0002 	lui	gp,0x2
    1918:	279c8f5c 	addiu	gp,gp,-28836
    191c:	0399e021 	addu	gp,gp,t9
    1920:	27bdffe8 	addiu	sp,sp,-24
    1924:	afbe0014 	sw	s8,20(sp)
    1928:	03a0f025 	move	s8,sp
    192c:	afbc0000 	sw	gp,0(sp)
    1930:	00801025 	move	v0,a0
    1934:	a3c20018 	sb	v0,24(s8)
    unsigned char i;
    for (i = 0; i < encoding_table_size; i++) {
    1938:	a3c00008 	sb	zero,8(s8)
    193c:	10000010 	b	1980 <DecodeChar+0x6c>
    1940:	00000000 	nop
        if (encoding_table[i] == character) {
    1944:	93c30008 	lbu	v1,8(s8)
    1948:	8f828028 	lw	v0,-32728(gp)
    194c:	244227d0 	addiu	v0,v0,10192
    1950:	00621021 	addu	v0,v1,v0
    1954:	90420000 	lbu	v0,0(v0)
    1958:	00401825 	move	v1,v0
    195c:	83c20018 	lb	v0,24(s8)
    1960:	14620004 	bne	v1,v0,1974 <DecodeChar+0x60>
    1964:	00000000 	nop
            return i;
    1968:	93c20008 	lbu	v0,8(s8)
    196c:	10000012 	b	19b8 <DecodeChar+0xa4>
    1970:	00000000 	nop
    for (i = 0; i < encoding_table_size; i++) {
    1974:	93c20008 	lbu	v0,8(s8)
    1978:	24420001 	addiu	v0,v0,1
    197c:	a3c20008 	sb	v0,8(s8)
    1980:	93c30008 	lbu	v1,8(s8)
    1984:	8f828028 	lw	v0,-32728(gp)
    1988:	8c422810 	lw	v0,10256(v0)
    198c:	0062102a 	slt	v0,v1,v0
    1990:	1440ffec 	bnez	v0,1944 <DecodeChar+0x30>
    1994:	00000000 	nop
        }
    }
    if (character == '=') {
    1998:	83c30018 	lb	v1,24(s8)
    199c:	2402003d 	li	v0,61
    19a0:	14620004 	bne	v1,v0,19b4 <DecodeChar+0xa0>
    19a4:	00000000 	nop
        return 0;
    19a8:	00001025 	move	v0,zero
    19ac:	10000002 	b	19b8 <DecodeChar+0xa4>
    19b0:	00000000 	nop
    }
    return DECODE_ERROR;
    19b4:	24020064 	li	v0,100
}
    19b8:	03c0e825 	move	sp,s8
    19bc:	8fbe0014 	lw	s8,20(sp)
    19c0:	27bd0018 	addiu	sp,sp,24
    19c4:	03e00008 	jr	ra
    19c8:	00000000 	nop

000019cc <Decode>:
/**
 * Returns a buffer with size 3 with the 4 character base64 decode.
 * Pre: the input buffer contains 4 characters. The output buffer has at least 3 characters
 * Post: returns a buffer with size 3 ASCII characters. returns 0 if error 1 if ok
 */
unsigned char Decode(unsigned char *buf_input, unsigned char *buf_output) {
    19cc:	3c1c0002 	lui	gp,0x2
    19d0:	279c8ea4 	addiu	gp,gp,-29020
    19d4:	0399e021 	addu	gp,gp,t9
    19d8:	27bdffd0 	addiu	sp,sp,-48
    19dc:	afbf002c 	sw	ra,44(sp)
    19e0:	afbe0028 	sw	s8,40(sp)
    19e4:	03a0f025 	move	s8,sp
    19e8:	afbc0010 	sw	gp,16(sp)
    19ec:	afc40030 	sw	a0,48(s8)
    19f0:	afc50034 	sw	a1,52(s8)
    unsigned char chars[4];
    unsigned int i;
    for (i = 0; i < 4; ++i) {
    19f4:	afc00018 	sw	zero,24(s8)
    19f8:	1000001e 	b	1a74 <Decode+0xa8>
    19fc:	00000000 	nop
        chars[i] = DecodeChar(buf_input[i]);
    1a00:	8fc30030 	lw	v1,48(s8)
    1a04:	8fc20018 	lw	v0,24(s8)
    1a08:	00621021 	addu	v0,v1,v0
    1a0c:	90420000 	lbu	v0,0(v0)
    1a10:	7c021420 	seb	v0,v0
    1a14:	00402025 	move	a0,v0
    1a18:	8f82806c 	lw	v0,-32660(gp)
    1a1c:	0040c825 	move	t9,v0
    1a20:	0411ffbc 	bal	1914 <DecodeChar>
    1a24:	00000000 	nop
    1a28:	8fdc0010 	lw	gp,16(s8)
    1a2c:	00402025 	move	a0,v0
    1a30:	8fc20018 	lw	v0,24(s8)
    1a34:	27c30018 	addiu	v1,s8,24
    1a38:	00621021 	addu	v0,v1,v0
    1a3c:	a0440008 	sb	a0,8(v0)
        if (chars[i] == DECODE_ERROR)
    1a40:	8fc20018 	lw	v0,24(s8)
    1a44:	27c30018 	addiu	v1,s8,24
    1a48:	00621021 	addu	v0,v1,v0
    1a4c:	90430008 	lbu	v1,8(v0)
    1a50:	24020064 	li	v0,100
    1a54:	14620004 	bne	v1,v0,1a68 <Decode+0x9c>
    1a58:	00000000 	nop
            return 0;
    1a5c:	00001025 	move	v0,zero
    1a60:	1000002e 	b	1b1c <Decode+0x150>
    1a64:	00000000 	nop
    for (i = 0; i < 4; ++i) {
    1a68:	8fc20018 	lw	v0,24(s8)
    1a6c:	24420001 	addiu	v0,v0,1
    1a70:	afc20018 	sw	v0,24(s8)
    1a74:	8fc20018 	lw	v0,24(s8)
    1a78:	2c420004 	sltiu	v0,v0,4
    1a7c:	1440ffe0 	bnez	v0,1a00 <Decode+0x34>
    1a80:	00000000 	nop
    }

    unsigned char char1_aux = chars[0] << 2;
    1a84:	93c20020 	lbu	v0,32(s8)
    1a88:	00021080 	sll	v0,v0,0x2
    1a8c:	a3c2001c 	sb	v0,28(s8)
    //Take the last 2 bits of char2
    unsigned char char2_aux = chars[1] >> 4;
    1a90:	93c20021 	lbu	v0,33(s8)
    1a94:	00021102 	srl	v0,v0,0x4
    1a98:	a3c2001d 	sb	v0,29(s8)
    char1_aux = char1_aux | char2_aux;
    1a9c:	93c3001c 	lbu	v1,28(s8)
    1aa0:	93c2001d 	lbu	v0,29(s8)
    1aa4:	00621025 	or	v0,v1,v0
    1aa8:	a3c2001c 	sb	v0,28(s8)
    buf_output[0] = char1_aux;
    1aac:	8fc20034 	lw	v0,52(s8)
    1ab0:	93c3001c 	lbu	v1,28(s8)
    1ab4:	a0430000 	sb	v1,0(v0)

    //Take the last 4b of char2 and the first 4b of char3
    char1_aux = chars[1] << 4;
    1ab8:	93c20021 	lbu	v0,33(s8)
    1abc:	00021100 	sll	v0,v0,0x4
    1ac0:	a3c2001c 	sb	v0,28(s8)
    char2_aux = chars[2] >> 2;
    1ac4:	93c20022 	lbu	v0,34(s8)
    1ac8:	00021082 	srl	v0,v0,0x2
    1acc:	a3c2001d 	sb	v0,29(s8)
    char2_aux = char1_aux | char2_aux;
    1ad0:	93c3001c 	lbu	v1,28(s8)
    1ad4:	93c2001d 	lbu	v0,29(s8)
    1ad8:	00621025 	or	v0,v1,v0
    1adc:	a3c2001d 	sb	v0,29(s8)
    buf_output[1] = char2_aux;
    1ae0:	8fc20034 	lw	v0,52(s8)
    1ae4:	24420001 	addiu	v0,v0,1
    1ae8:	93c3001d 	lbu	v1,29(s8)
    1aec:	a0430000 	sb	v1,0(v0)

    //Take the last 2b of char3 + the bits of char4
    char1_aux = chars[2] << 6;
    1af0:	93c20022 	lbu	v0,34(s8)
    1af4:	00021180 	sll	v0,v0,0x6
    1af8:	a3c2001c 	sb	v0,28(s8)
    buf_output[2] = char1_aux | chars[3];
    1afc:	8fc20034 	lw	v0,52(s8)
    1b00:	24420002 	addiu	v0,v0,2
    1b04:	93c40023 	lbu	a0,35(s8)
    1b08:	93c3001c 	lbu	v1,28(s8)
    1b0c:	00831825 	or	v1,a0,v1
    1b10:	306300ff 	andi	v1,v1,0xff
    1b14:	a0430000 	sb	v1,0(v0)
    return 1;
    1b18:	24020001 	li	v0,1
}
    1b1c:	03c0e825 	move	sp,s8
    1b20:	8fbf002c 	lw	ra,44(sp)
    1b24:	8fbe0028 	lw	s8,40(sp)
    1b28:	27bd0030 	addiu	sp,sp,48
    1b2c:	03e00008 	jr	ra
    1b30:	00000000 	nop
	...

00001b40 <create_file>:
#include "file.h"
#include <stdlib.h>
#include <string.h>
#include <errno.h>

void create_file(File *file) {
    1b40:	27bdfff8 	addiu	sp,sp,-8
    1b44:	afbe0004 	sw	s8,4(sp)
    1b48:	03a0f025 	move	s8,sp
    1b4c:	afc40008 	sw	a0,8(s8)
    file->file = 0;
    1b50:	8fc20008 	lw	v0,8(s8)
    1b54:	ac400000 	sw	zero,0(v0)
    file->eof = 0;
    1b58:	8fc20008 	lw	v0,8(s8)
    1b5c:	a0400004 	sb	zero,4(v0)
}
    1b60:	00000000 	nop
    1b64:	03c0e825 	move	sp,s8
    1b68:	8fbe0004 	lw	s8,4(sp)
    1b6c:	27bd0008 	addiu	sp,sp,8
    1b70:	03e00008 	jr	ra
    1b74:	00000000 	nop

00001b78 <open_file_read>:

char open_file_read(File *file, const char *route) {
    1b78:	3c1c0002 	lui	gp,0x2
    1b7c:	279c8cf8 	addiu	gp,gp,-29448
    1b80:	0399e021 	addu	gp,gp,t9
    1b84:	27bdffd0 	addiu	sp,sp,-48
    1b88:	afbf002c 	sw	ra,44(sp)
    1b8c:	afbe0028 	sw	s8,40(sp)
    1b90:	afb00024 	sw	s0,36(sp)
    1b94:	03a0f025 	move	s8,sp
    1b98:	afbc0010 	sw	gp,16(sp)
    1b9c:	afc40030 	sw	a0,48(s8)
    1ba0:	afc50034 	sw	a1,52(s8)
    if (route == NULL) {
    1ba4:	8fc20034 	lw	v0,52(s8)
    1ba8:	14400007 	bnez	v0,1bc8 <open_file_read+0x50>
    1bac:	00000000 	nop
        file->file = stdin;
    1bb0:	8f8280c4 	lw	v0,-32572(gp)
    1bb4:	8c430000 	lw	v1,0(v0)
    1bb8:	8fc20030 	lw	v0,48(s8)
    1bbc:	ac430000 	sw	v1,0(v0)
    1bc0:	1000002b 	b	1c70 <open_file_read+0xf8>
    1bc4:	00000000 	nop
    } else {
        file->file = fopen(route, "rb");
    1bc8:	8f828030 	lw	v0,-32720(gp)
    1bcc:	244526c0 	addiu	a1,v0,9920
    1bd0:	8fc40034 	lw	a0,52(s8)
    1bd4:	8f8280f4 	lw	v0,-32524(gp)
    1bd8:	0040c825 	move	t9,v0
    1bdc:	0320f809 	jalr	t9
    1be0:	00000000 	nop
    1be4:	8fdc0010 	lw	gp,16(s8)
    1be8:	00401825 	move	v1,v0
    1bec:	8fc20030 	lw	v0,48(s8)
    1bf0:	ac430000 	sw	v1,0(v0)
        if (file->file == NULL) {
    1bf4:	8fc20030 	lw	v0,48(s8)
    1bf8:	8c420000 	lw	v0,0(v0)
    1bfc:	1440001c 	bnez	v0,1c70 <open_file_read+0xf8>
    1c00:	00000000 	nop
            int err = errno;
    1c04:	8f8280bc 	lw	v0,-32580(gp)
    1c08:	0040c825 	move	t9,v0
    1c0c:	0320f809 	jalr	t9
    1c10:	00000000 	nop
    1c14:	8fdc0010 	lw	gp,16(s8)
    1c18:	8c420000 	lw	v0,0(v0)
    1c1c:	afc20018 	sw	v0,24(s8)
            fprintf(stderr, "Error al abrir archivo: %s\n", strerror(err));
    1c20:	8f8280f0 	lw	v0,-32528(gp)
    1c24:	8c500000 	lw	s0,0(v0)
    1c28:	8fc40018 	lw	a0,24(s8)
    1c2c:	8f8280dc 	lw	v0,-32548(gp)
    1c30:	0040c825 	move	t9,v0
    1c34:	0320f809 	jalr	t9
    1c38:	00000000 	nop
    1c3c:	8fdc0010 	lw	gp,16(s8)
    1c40:	00403025 	move	a2,v0
    1c44:	8f828030 	lw	v0,-32720(gp)
    1c48:	244526c4 	addiu	a1,v0,9924
    1c4c:	02002025 	move	a0,s0
    1c50:	8f8280c8 	lw	v0,-32568(gp)
    1c54:	0040c825 	move	t9,v0
    1c58:	0320f809 	jalr	t9
    1c5c:	00000000 	nop
    1c60:	8fdc0010 	lw	gp,16(s8)
            return ERROR;
    1c64:	24020001 	li	v0,1
    1c68:	10000002 	b	1c74 <open_file_read+0xfc>
    1c6c:	00000000 	nop
        }
    }
    return OK;
    1c70:	00001025 	move	v0,zero
}
    1c74:	03c0e825 	move	sp,s8
    1c78:	8fbf002c 	lw	ra,44(sp)
    1c7c:	8fbe0028 	lw	s8,40(sp)
    1c80:	8fb00024 	lw	s0,36(sp)
    1c84:	27bd0030 	addiu	sp,sp,48
    1c88:	03e00008 	jr	ra
    1c8c:	00000000 	nop

00001c90 <open_file_write>:


char open_file_write(File *file, const char *route) {
    1c90:	3c1c0002 	lui	gp,0x2
    1c94:	279c8be0 	addiu	gp,gp,-29728
    1c98:	0399e021 	addu	gp,gp,t9
    1c9c:	27bdffd0 	addiu	sp,sp,-48
    1ca0:	afbf002c 	sw	ra,44(sp)
    1ca4:	afbe0028 	sw	s8,40(sp)
    1ca8:	afb00024 	sw	s0,36(sp)
    1cac:	03a0f025 	move	s8,sp
    1cb0:	afbc0010 	sw	gp,16(sp)
    1cb4:	afc40030 	sw	a0,48(s8)
    1cb8:	afc50034 	sw	a1,52(s8)
    if (route == NULL) {
    1cbc:	8fc20034 	lw	v0,52(s8)
    1cc0:	14400007 	bnez	v0,1ce0 <open_file_write+0x50>
    1cc4:	00000000 	nop
        file->file = stdout;
    1cc8:	8f8280b8 	lw	v0,-32584(gp)
    1ccc:	8c430000 	lw	v1,0(v0)
    1cd0:	8fc20030 	lw	v0,48(s8)
    1cd4:	ac430000 	sw	v1,0(v0)
    1cd8:	1000002b 	b	1d88 <open_file_write+0xf8>
    1cdc:	00000000 	nop
    } else {
        file->file = fopen(route, "wb");
    1ce0:	8f828030 	lw	v0,-32720(gp)
    1ce4:	244526e0 	addiu	a1,v0,9952
    1ce8:	8fc40034 	lw	a0,52(s8)
    1cec:	8f8280f4 	lw	v0,-32524(gp)
    1cf0:	0040c825 	move	t9,v0
    1cf4:	0320f809 	jalr	t9
    1cf8:	00000000 	nop
    1cfc:	8fdc0010 	lw	gp,16(s8)
    1d00:	00401825 	move	v1,v0
    1d04:	8fc20030 	lw	v0,48(s8)
    1d08:	ac430000 	sw	v1,0(v0)
        if (file->file == NULL) {
    1d0c:	8fc20030 	lw	v0,48(s8)
    1d10:	8c420000 	lw	v0,0(v0)
    1d14:	1440001c 	bnez	v0,1d88 <open_file_write+0xf8>
    1d18:	00000000 	nop
            int err = errno;
    1d1c:	8f8280bc 	lw	v0,-32580(gp)
    1d20:	0040c825 	move	t9,v0
    1d24:	0320f809 	jalr	t9
    1d28:	00000000 	nop
    1d2c:	8fdc0010 	lw	gp,16(s8)
    1d30:	8c420000 	lw	v0,0(v0)
    1d34:	afc20018 	sw	v0,24(s8)
            fprintf(stderr, "Error al abrir archivo: %s\n", strerror(err));
    1d38:	8f8280f0 	lw	v0,-32528(gp)
    1d3c:	8c500000 	lw	s0,0(v0)
    1d40:	8fc40018 	lw	a0,24(s8)
    1d44:	8f8280dc 	lw	v0,-32548(gp)
    1d48:	0040c825 	move	t9,v0
    1d4c:	0320f809 	jalr	t9
    1d50:	00000000 	nop
    1d54:	8fdc0010 	lw	gp,16(s8)
    1d58:	00403025 	move	a2,v0
    1d5c:	8f828030 	lw	v0,-32720(gp)
    1d60:	244526c4 	addiu	a1,v0,9924
    1d64:	02002025 	move	a0,s0
    1d68:	8f8280c8 	lw	v0,-32568(gp)
    1d6c:	0040c825 	move	t9,v0
    1d70:	0320f809 	jalr	t9
    1d74:	00000000 	nop
    1d78:	8fdc0010 	lw	gp,16(s8)
            return ERROR;
    1d7c:	24020001 	li	v0,1
    1d80:	10000002 	b	1d8c <open_file_write+0xfc>
    1d84:	00000000 	nop
        }
    }
    return OK;
    1d88:	00001025 	move	v0,zero
}
    1d8c:	03c0e825 	move	sp,s8
    1d90:	8fbf002c 	lw	ra,44(sp)
    1d94:	8fbe0028 	lw	s8,40(sp)
    1d98:	8fb00024 	lw	s0,36(sp)
    1d9c:	27bd0030 	addiu	sp,sp,48
    1da0:	03e00008 	jr	ra
    1da4:	00000000 	nop

00001da8 <close_file>:


int close_file(File *file) {
    1da8:	3c1c0002 	lui	gp,0x2
    1dac:	279c8ac8 	addiu	gp,gp,-30008
    1db0:	0399e021 	addu	gp,gp,t9
    1db4:	27bdffd0 	addiu	sp,sp,-48
    1db8:	afbf002c 	sw	ra,44(sp)
    1dbc:	afbe0028 	sw	s8,40(sp)
    1dc0:	afb00024 	sw	s0,36(sp)
    1dc4:	03a0f025 	move	s8,sp
    1dc8:	afbc0010 	sw	gp,16(sp)
    1dcc:	afc40030 	sw	a0,48(s8)
    if (file->file == stdin || file->file == stdout) return OK;
    1dd0:	8fc20030 	lw	v0,48(s8)
    1dd4:	8c430000 	lw	v1,0(v0)
    1dd8:	8f8280c4 	lw	v0,-32572(gp)
    1ddc:	8c420000 	lw	v0,0(v0)
    1de0:	10620007 	beq	v1,v0,1e00 <close_file+0x58>
    1de4:	00000000 	nop
    1de8:	8fc20030 	lw	v0,48(s8)
    1dec:	8c430000 	lw	v1,0(v0)
    1df0:	8f8280b8 	lw	v0,-32584(gp)
    1df4:	8c420000 	lw	v0,0(v0)
    1df8:	14620004 	bne	v1,v0,1e0c <close_file+0x64>
    1dfc:	00000000 	nop
    1e00:	00001025 	move	v0,zero
    1e04:	1000002a 	b	1eb0 <close_file+0x108>
    1e08:	00000000 	nop

    int result = fclose(file->file);
    1e0c:	8fc20030 	lw	v0,48(s8)
    1e10:	8c420000 	lw	v0,0(v0)
    1e14:	00402025 	move	a0,v0
    1e18:	8f8280ac 	lw	v0,-32596(gp)
    1e1c:	0040c825 	move	t9,v0
    1e20:	0320f809 	jalr	t9
    1e24:	00000000 	nop
    1e28:	8fdc0010 	lw	gp,16(s8)
    1e2c:	afc20018 	sw	v0,24(s8)
    if (result == EOF) {
    1e30:	8fc30018 	lw	v1,24(s8)
    1e34:	2402ffff 	li	v0,-1
    1e38:	1462001c 	bne	v1,v0,1eac <close_file+0x104>
    1e3c:	00000000 	nop
        int err = errno;
    1e40:	8f8280bc 	lw	v0,-32580(gp)
    1e44:	0040c825 	move	t9,v0
    1e48:	0320f809 	jalr	t9
    1e4c:	00000000 	nop
    1e50:	8fdc0010 	lw	gp,16(s8)
    1e54:	8c420000 	lw	v0,0(v0)
    1e58:	afc2001c 	sw	v0,28(s8)
        fprintf(stderr, "Error al cerrar archivo: %s\n", strerror(err));
    1e5c:	8f8280f0 	lw	v0,-32528(gp)
    1e60:	8c500000 	lw	s0,0(v0)
    1e64:	8fc4001c 	lw	a0,28(s8)
    1e68:	8f8280dc 	lw	v0,-32548(gp)
    1e6c:	0040c825 	move	t9,v0
    1e70:	0320f809 	jalr	t9
    1e74:	00000000 	nop
    1e78:	8fdc0010 	lw	gp,16(s8)
    1e7c:	00403025 	move	a2,v0
    1e80:	8f828030 	lw	v0,-32720(gp)
    1e84:	244526e4 	addiu	a1,v0,9956
    1e88:	02002025 	move	a0,s0
    1e8c:	8f8280c8 	lw	v0,-32568(gp)
    1e90:	0040c825 	move	t9,v0
    1e94:	0320f809 	jalr	t9
    1e98:	00000000 	nop
    1e9c:	8fdc0010 	lw	gp,16(s8)
        return ERROR;
    1ea0:	24020001 	li	v0,1
    1ea4:	10000002 	b	1eb0 <close_file+0x108>
    1ea8:	00000000 	nop
    }
    return OK;
    1eac:	00001025 	move	v0,zero
}
    1eb0:	03c0e825 	move	sp,s8
    1eb4:	8fbf002c 	lw	ra,44(sp)
    1eb8:	8fbe0028 	lw	s8,40(sp)
    1ebc:	8fb00024 	lw	s0,36(sp)
    1ec0:	27bd0030 	addiu	sp,sp,48
    1ec4:	03e00008 	jr	ra
    1ec8:	00000000 	nop

00001ecc <file_read>:


unsigned int file_read(File *file, unsigned char *buffer, unsigned int length) {
    1ecc:	3c1c0002 	lui	gp,0x2
    1ed0:	279c89a4 	addiu	gp,gp,-30300
    1ed4:	0399e021 	addu	gp,gp,t9
    1ed8:	27bdffd8 	addiu	sp,sp,-40
    1edc:	afbf0024 	sw	ra,36(sp)
    1ee0:	afbe0020 	sw	s8,32(sp)
    1ee4:	03a0f025 	move	s8,sp
    1ee8:	afbc0010 	sw	gp,16(sp)
    1eec:	afc40028 	sw	a0,40(s8)
    1ef0:	afc5002c 	sw	a1,44(s8)
    1ef4:	afc60030 	sw	a2,48(s8)
    unsigned int result = 0;
    1ef8:	afc00018 	sw	zero,24(s8)
    if (!file_eof(file)) {
    1efc:	8fc40028 	lw	a0,40(s8)
    1f00:	8f828058 	lw	v0,-32680(gp)
    1f04:	0040c825 	move	t9,v0
    1f08:	04110041 	bal	2010 <file_eof>
    1f0c:	00000000 	nop
    1f10:	8fdc0010 	lw	gp,16(s8)
    1f14:	1440001a 	bnez	v0,1f80 <file_read+0xb4>
    1f18:	00000000 	nop
        result = (unsigned int) fread(buffer, sizeof(char), length, file->file);
    1f1c:	8fc20028 	lw	v0,40(s8)
    1f20:	8c420000 	lw	v0,0(v0)
    1f24:	00403825 	move	a3,v0
    1f28:	8fc60030 	lw	a2,48(s8)
    1f2c:	24050001 	li	a1,1
    1f30:	8fc4002c 	lw	a0,44(s8)
    1f34:	8f8280e4 	lw	v0,-32540(gp)
    1f38:	0040c825 	move	t9,v0
    1f3c:	0320f809 	jalr	t9
    1f40:	00000000 	nop
    1f44:	8fdc0010 	lw	gp,16(s8)
    1f48:	afc20018 	sw	v0,24(s8)
        if (feof(file->file)) {
    1f4c:	8fc20028 	lw	v0,40(s8)
    1f50:	8c420000 	lw	v0,0(v0)
    1f54:	00402025 	move	a0,v0
    1f58:	8f8280d4 	lw	v0,-32556(gp)
    1f5c:	0040c825 	move	t9,v0
    1f60:	0320f809 	jalr	t9
    1f64:	00000000 	nop
    1f68:	8fdc0010 	lw	gp,16(s8)
    1f6c:	10400004 	beqz	v0,1f80 <file_read+0xb4>
    1f70:	00000000 	nop
            file->eof = 1;
    1f74:	8fc20028 	lw	v0,40(s8)
    1f78:	24030001 	li	v1,1
    1f7c:	a0430004 	sb	v1,4(v0)
        }
    }

    return result;
    1f80:	8fc20018 	lw	v0,24(s8)
}
    1f84:	03c0e825 	move	sp,s8
    1f88:	8fbf0024 	lw	ra,36(sp)
    1f8c:	8fbe0020 	lw	s8,32(sp)
    1f90:	27bd0028 	addiu	sp,sp,40
    1f94:	03e00008 	jr	ra
    1f98:	00000000 	nop

00001f9c <file_write>:


void file_write(File *file, unsigned char *buffer, unsigned int length) {
    1f9c:	3c1c0002 	lui	gp,0x2
    1fa0:	279c88d4 	addiu	gp,gp,-30508
    1fa4:	0399e021 	addu	gp,gp,t9
    1fa8:	27bdffe0 	addiu	sp,sp,-32
    1fac:	afbf001c 	sw	ra,28(sp)
    1fb0:	afbe0018 	sw	s8,24(sp)
    1fb4:	03a0f025 	move	s8,sp
    1fb8:	afbc0010 	sw	gp,16(sp)
    1fbc:	afc40020 	sw	a0,32(s8)
    1fc0:	afc50024 	sw	a1,36(s8)
    1fc4:	afc60028 	sw	a2,40(s8)
    fwrite(buffer, sizeof(char), length, file->file);
    1fc8:	8fc20020 	lw	v0,32(s8)
    1fcc:	8c420000 	lw	v0,0(v0)
    1fd0:	00403825 	move	a3,v0
    1fd4:	8fc60028 	lw	a2,40(s8)
    1fd8:	24050001 	li	a1,1
    1fdc:	8fc40024 	lw	a0,36(s8)
    1fe0:	8f8280e8 	lw	v0,-32536(gp)
    1fe4:	0040c825 	move	t9,v0
    1fe8:	0320f809 	jalr	t9
    1fec:	00000000 	nop
    1ff0:	8fdc0010 	lw	gp,16(s8)
}
    1ff4:	00000000 	nop
    1ff8:	03c0e825 	move	sp,s8
    1ffc:	8fbf001c 	lw	ra,28(sp)
    2000:	8fbe0018 	lw	s8,24(sp)
    2004:	27bd0020 	addiu	sp,sp,32
    2008:	03e00008 	jr	ra
    200c:	00000000 	nop

00002010 <file_eof>:


int file_eof(File *file) {
    2010:	27bdfff8 	addiu	sp,sp,-8
    2014:	afbe0004 	sw	s8,4(sp)
    2018:	03a0f025 	move	s8,sp
    201c:	afc40008 	sw	a0,8(s8)
    return file->eof;
    2020:	8fc20008 	lw	v0,8(s8)
    2024:	80420004 	lb	v0,4(v0)
}
    2028:	03c0e825 	move	sp,s8
    202c:	8fbe0004 	lw	s8,4(sp)
    2030:	27bd0008 	addiu	sp,sp,8
    2034:	03e00008 	jr	ra
    2038:	00000000 	nop
    203c:	00000000 	nop

00002040 <main>:
#include <stddef.h>
#include <getopt.h>
#include "constants.h"
#include "command.h"

int main(int argc, char **argv) {
    2040:	3c1c0002 	lui	gp,0x2
    2044:	279c8830 	addiu	gp,gp,-30672
    2048:	0399e021 	addu	gp,gp,t9
    204c:	27bdff58 	addiu	sp,sp,-168
    2050:	afbf00a4 	sw	ra,164(sp)
    2054:	afbe00a0 	sw	s8,160(sp)
    2058:	03a0f025 	move	s8,sp
    205c:	afbc0018 	sw	gp,24(sp)
    2060:	afc400a8 	sw	a0,168(s8)
    2064:	afc500ac 	sw	a1,172(s8)
    struct option arg_long[] = {
    2068:	8f828028 	lw	v0,-32728(gp)
    206c:	27c30028 	addiu	v1,s8,40
    2070:	24422820 	addiu	v0,v0,10272
    2074:	24040050 	li	a0,80
    2078:	00803025 	move	a2,a0
    207c:	00402825 	move	a1,v0
    2080:	00602025 	move	a0,v1
    2084:	8f8280ec 	lw	v0,-32532(gp)
    2088:	0040c825 	move	t9,v0
    208c:	0320f809 	jalr	t9
    2090:	00000000 	nop
    2094:	8fdc0018 	lw	gp,24(s8)
            {"decode",  no_argument, NULL, 'd'},
            {"help",    no_argument, NULL, 'h'},
            {"version", no_argument, NULL, 'V'},
    };

    char arg_opt_str[] = "i:o:dhV";
    2098:	8f828030 	lw	v0,-32720(gp)
    209c:	8c432738 	lw	v1,10040(v0)
    20a0:	24422738 	addiu	v0,v0,10040
    20a4:	8c420004 	lw	v0,4(v0)
    20a8:	afc30078 	sw	v1,120(s8)
    20ac:	afc2007c 	sw	v0,124(s8)
    int arg_opt;
    int arg_opt_idx = 0;
    20b0:	afc00080 	sw	zero,128(s8)

    command_options_st cmd_options;
    // Default Values: encode, stdin as input, stdout as output, stderr as error output
    command_create(&cmd_options);
    20b4:	27c20084 	addiu	v0,s8,132
    20b8:	00402025 	move	a0,v0
    20bc:	8f828070 	lw	v0,-32656(gp)
    20c0:	0040c825 	move	t9,v0
    20c4:	0411fb1a 	bal	d30 <command_create>
    20c8:	00000000 	nop
    20cc:	8fdc0018 	lw	gp,24(s8)

    char should_process = TRUE;
    20d0:	24020001 	li	v0,1
    20d4:	a3c20020 	sb	v0,32(s8)
    while ((arg_opt = getopt_long(argc, argv, arg_opt_str, arg_long, &arg_opt_idx)) != -1
    20d8:	10000048 	b	21fc <main+0x1bc>
    20dc:	00000000 	nop
           &&
           should_process) {

        switch (arg_opt) {
    20e0:	8fc20024 	lw	v0,36(s8)
    20e4:	2442ffaa 	addiu	v0,v0,-86
    20e8:	2c43001a 	sltiu	v1,v0,26
    20ec:	1060003a 	beqz	v1,21d8 <main+0x198>
    20f0:	00000000 	nop
    20f4:	00021880 	sll	v1,v0,0x2
    20f8:	8f828030 	lw	v0,-32720(gp)
    20fc:	24422740 	addiu	v0,v0,10048
    2100:	00621021 	addu	v0,v1,v0
    2104:	8c420000 	lw	v0,0(v0)
    2108:	005c1021 	addu	v0,v0,gp
    210c:	00400008 	jr	v0
    2110:	00000000 	nop
            case 'i': {
                // Set Input File
                set_input_file(&cmd_options, optarg);
    2114:	8f8280a4 	lw	v0,-32604(gp)
    2118:	8c430000 	lw	v1,0(v0)
    211c:	27c20084 	addiu	v0,s8,132
    2120:	00602825 	move	a1,v1
    2124:	00402025 	move	a0,v0
    2128:	8f828074 	lw	v0,-32652(gp)
    212c:	0040c825 	move	t9,v0
    2130:	0411fb27 	bal	dd0 <set_input_file>
    2134:	00000000 	nop
    2138:	8fdc0018 	lw	gp,24(s8)
            }
                break;
    213c:	1000002f 	b	21fc <main+0x1bc>
    2140:	00000000 	nop
            case 'o': {
                // Set Output File
                set_output_file(&cmd_options, optarg);
    2144:	8f8280a4 	lw	v0,-32604(gp)
    2148:	8c430000 	lw	v1,0(v0)
    214c:	27c20084 	addiu	v0,s8,132
    2150:	00602825 	move	a1,v1
    2154:	00402025 	move	a0,v0
    2158:	8f828078 	lw	v0,-32648(gp)
    215c:	0040c825 	move	t9,v0
    2160:	0411fb29 	bal	e08 <set_output_file>
    2164:	00000000 	nop
    2168:	8fdc0018 	lw	gp,24(s8)
            }
                break;
    216c:	10000023 	b	21fc <main+0x1bc>
    2170:	00000000 	nop
            case 'h': {
                // Show Options
                show_help();
    2174:	8f828038 	lw	v0,-32712(gp)
    2178:	0040c825 	move	t9,v0
    217c:	0411fbb6 	bal	1058 <show_help>
    2180:	00000000 	nop
    2184:	8fdc0018 	lw	gp,24(s8)
                should_process = FALSE;
    2188:	a3c00020 	sb	zero,32(s8)
            }
                break;
    218c:	1000001b 	b	21fc <main+0x1bc>
    2190:	00000000 	nop
            case 'V': {
                // Show Version
                show_version();
    2194:	8f82807c 	lw	v0,-32644(gp)
    2198:	0040c825 	move	t9,v0
    219c:	0411fbfc 	bal	1190 <show_version>
    21a0:	00000000 	nop
    21a4:	8fdc0018 	lw	gp,24(s8)
                should_process = FALSE;
    21a8:	a3c00020 	sb	zero,32(s8)
            }
                break;
    21ac:	10000013 	b	21fc <main+0x1bc>
    21b0:	00000000 	nop
            case 'd': {
                // Set Decode option
                set_decode(&cmd_options);
    21b4:	27c20084 	addiu	v0,s8,132
    21b8:	00402025 	move	a0,v0
    21bc:	8f828080 	lw	v0,-32640(gp)
    21c0:	0040c825 	move	t9,v0
    21c4:	0411fb2b 	bal	e74 <set_decode>
    21c8:	00000000 	nop
    21cc:	8fdc0018 	lw	gp,24(s8)
            }
                break;
    21d0:	1000000a 	b	21fc <main+0x1bc>
    21d4:	00000000 	nop
            default: {
                // Set Error Condition = INVALID_ARGUMENT
                // [Gonzalo: We analize only valid arguments values here: i, o, h, V, d]
                set_error(&cmd_options, INVALID_ARGUMENT);
    21d8:	27c20084 	addiu	v0,s8,132
    21dc:	2405ffff 	li	a1,-1
    21e0:	00402025 	move	a0,v0
    21e4:	8f82805c 	lw	v0,-32676(gp)
    21e8:	0040c825 	move	t9,v0
    21ec:	0411fb2d 	bal	ea4 <set_error>
    21f0:	00000000 	nop
    21f4:	8fdc0018 	lw	gp,24(s8)
            }
                break;
    21f8:	00000000 	nop
    while ((arg_opt = getopt_long(argc, argv, arg_opt_str, arg_long, &arg_opt_idx)) != -1
    21fc:	27c40028 	addiu	a0,s8,40
    2200:	27c30078 	addiu	v1,s8,120
    2204:	27c20080 	addiu	v0,s8,128
    2208:	afa20010 	sw	v0,16(sp)
    220c:	00803825 	move	a3,a0
    2210:	00603025 	move	a2,v1
    2214:	8fc500ac 	lw	a1,172(s8)
    2218:	8fc400a8 	lw	a0,168(s8)
    221c:	8f8280d0 	lw	v0,-32560(gp)
    2220:	0040c825 	move	t9,v0
    2224:	0320f809 	jalr	t9
    2228:	00000000 	nop
    222c:	8fdc0018 	lw	gp,24(s8)
    2230:	afc20024 	sw	v0,36(s8)
    2234:	8fc30024 	lw	v1,36(s8)
    2238:	2402ffff 	li	v0,-1
    223c:	10620004 	beq	v1,v0,2250 <main+0x210>
    2240:	00000000 	nop
           &&
    2244:	83c20020 	lb	v0,32(s8)
    2248:	1440ffa5 	bnez	v0,20e0 <main+0xa0>
    224c:	00000000 	nop
        }
    }

    // Help or Version arguments, no processing
    if (!should_process) {
    2250:	83c20020 	lb	v0,32(s8)
    2254:	14400004 	bnez	v0,2268 <main+0x228>
    2258:	00000000 	nop
        return 0;
    225c:	00001025 	move	v0,zero
    2260:	1000001b 	b	22d0 <main+0x290>
    2264:	00000000 	nop
    }

    // Processs Encode/Decode if no errors found, otherwise show error message
    if (has_errors(&cmd_options)) {
    2268:	27c20084 	addiu	v0,s8,132
    226c:	00402025 	move	a0,v0
    2270:	8f828068 	lw	v0,-32664(gp)
    2274:	0040c825 	move	t9,v0
    2278:	0411fb19 	bal	ee0 <has_errors>
    227c:	00000000 	nop
    2280:	8fdc0018 	lw	gp,24(s8)
    2284:	1040000b 	beqz	v0,22b4 <main+0x274>
    2288:	00000000 	nop
        show_error(&cmd_options);
    228c:	27c20084 	addiu	v0,s8,132
    2290:	00402025 	move	a0,v0
    2294:	8f828060 	lw	v0,-32672(gp)
    2298:	0040c825 	move	t9,v0
    229c:	0411fb21 	bal	f24 <show_error>
    22a0:	00000000 	nop
    22a4:	8fdc0018 	lw	gp,24(s8)
        return 1;
    22a8:	24020001 	li	v0,1
    22ac:	10000008 	b	22d0 <main+0x290>
    22b0:	00000000 	nop
    }

    return process(&cmd_options);
    22b4:	27c20084 	addiu	v0,s8,132
    22b8:	00402025 	move	a0,v0
    22bc:	8f828084 	lw	v0,-32636(gp)
    22c0:	0040c825 	move	t9,v0
    22c4:	0411fbc8 	bal	11e8 <process>
    22c8:	00000000 	nop
    22cc:	8fdc0018 	lw	gp,24(s8)
}
    22d0:	03c0e825 	move	sp,s8
    22d4:	8fbf00a4 	lw	ra,164(sp)
    22d8:	8fbe00a0 	lw	s8,160(sp)
    22dc:	27bd00a8 	addiu	sp,sp,168
    22e0:	03e00008 	jr	ra
    22e4:	00000000 	nop
	...

000022f0 <__libc_csu_init>:
    22f0:	3c1c0002 	lui	gp,0x2
    22f4:	279c8580 	addiu	gp,gp,-31360
    22f8:	0399e021 	addu	gp,gp,t9
    22fc:	27bdffc8 	addiu	sp,sp,-56
    2300:	8f998088 	lw	t9,-32632(gp)
    2304:	afbc0010 	sw	gp,16(sp)
    2308:	afb50030 	sw	s5,48(sp)
    230c:	00c0a825 	move	s5,a2
    2310:	afb4002c 	sw	s4,44(sp)
    2314:	00a0a025 	move	s4,a1
    2318:	afb30028 	sw	s3,40(sp)
    231c:	00809825 	move	s3,a0
    2320:	afb20024 	sw	s2,36(sp)
    2324:	afb0001c 	sw	s0,28(sp)
    2328:	afbf0034 	sw	ra,52(sp)
    232c:	0411f9fe 	bal	b28 <_init>
    2330:	afb10020 	sw	s1,32(sp)
    2334:	8fbc0010 	lw	gp,16(sp)
    2338:	8f90808c 	lw	s0,-32628(gp)
    233c:	8f928090 	lw	s2,-32624(gp)
    2340:	02509023 	subu	s2,s2,s0
    2344:	00129083 	sra	s2,s2,0x2
    2348:	12400009 	beqz	s2,2370 <__libc_csu_init+0x80>
    234c:	00008825 	move	s1,zero
    2350:	8e190000 	lw	t9,0(s0)
    2354:	26310001 	addiu	s1,s1,1
    2358:	02a03025 	move	a2,s5
    235c:	02802825 	move	a1,s4
    2360:	0320f809 	jalr	t9
    2364:	02602025 	move	a0,s3
    2368:	1651fff9 	bne	s2,s1,2350 <__libc_csu_init+0x60>
    236c:	26100004 	addiu	s0,s0,4
    2370:	8fbf0034 	lw	ra,52(sp)
    2374:	8fb50030 	lw	s5,48(sp)
    2378:	8fb4002c 	lw	s4,44(sp)
    237c:	8fb30028 	lw	s3,40(sp)
    2380:	8fb20024 	lw	s2,36(sp)
    2384:	8fb10020 	lw	s1,32(sp)
    2388:	8fb0001c 	lw	s0,28(sp)
    238c:	03e00008 	jr	ra
    2390:	27bd0038 	addiu	sp,sp,56

00002394 <__libc_csu_fini>:
    2394:	03e00008 	jr	ra
    2398:	00000000 	nop
    239c:	00000000 	nop

Disassembly of section .MIPS.stubs:

000023a0 <_MIPS_STUBS_>:
    23a0:	8f998010 	lw	t9,-32752(gp)
    23a4:	03e07825 	move	t7,ra
    23a8:	0320f809 	jalr	t9
    23ac:	24180033 	li	t8,51
    23b0:	8f998010 	lw	t9,-32752(gp)
    23b4:	03e07825 	move	t7,ra
    23b8:	0320f809 	jalr	t9
    23bc:	24180031 	li	t8,49
    23c0:	8f998010 	lw	t9,-32752(gp)
    23c4:	03e07825 	move	t7,ra
    23c8:	0320f809 	jalr	t9
    23cc:	24180030 	li	t8,48
    23d0:	8f998010 	lw	t9,-32752(gp)
    23d4:	03e07825 	move	t7,ra
    23d8:	0320f809 	jalr	t9
    23dc:	2418002f 	li	t8,47
    23e0:	8f998010 	lw	t9,-32752(gp)
    23e4:	03e07825 	move	t7,ra
    23e8:	0320f809 	jalr	t9
    23ec:	2418002e 	li	t8,46
    23f0:	8f998010 	lw	t9,-32752(gp)
    23f4:	03e07825 	move	t7,ra
    23f8:	0320f809 	jalr	t9
    23fc:	2418002d 	li	t8,45
    2400:	8f998010 	lw	t9,-32752(gp)
    2404:	03e07825 	move	t7,ra
    2408:	0320f809 	jalr	t9
    240c:	2418002b 	li	t8,43
    2410:	8f998010 	lw	t9,-32752(gp)
    2414:	03e07825 	move	t7,ra
    2418:	0320f809 	jalr	t9
    241c:	2418002a 	li	t8,42
    2420:	8f998010 	lw	t9,-32752(gp)
    2424:	03e07825 	move	t7,ra
    2428:	0320f809 	jalr	t9
    242c:	24180029 	li	t8,41
    2430:	8f998010 	lw	t9,-32752(gp)
    2434:	03e07825 	move	t7,ra
    2438:	0320f809 	jalr	t9
    243c:	24180028 	li	t8,40
    2440:	8f998010 	lw	t9,-32752(gp)
    2444:	03e07825 	move	t7,ra
    2448:	0320f809 	jalr	t9
    244c:	24180026 	li	t8,38
    2450:	8f998010 	lw	t9,-32752(gp)
    2454:	03e07825 	move	t7,ra
    2458:	0320f809 	jalr	t9
    245c:	24180025 	li	t8,37
    2460:	8f998010 	lw	t9,-32752(gp)
    2464:	03e07825 	move	t7,ra
    2468:	0320f809 	jalr	t9
    246c:	24180023 	li	t8,35
    2470:	8f998010 	lw	t9,-32752(gp)
    2474:	03e07825 	move	t7,ra
    2478:	0320f809 	jalr	t9
    247c:	24180021 	li	t8,33
    2480:	8f998010 	lw	t9,-32752(gp)
    2484:	03e07825 	move	t7,ra
    2488:	0320f809 	jalr	t9
    248c:	2418001e 	li	t8,30
	...

Disassembly of section .fini:

000024a0 <_fini>:
    24a0:	3c1c0002 	lui	gp,0x2
    24a4:	279c83d0 	addiu	gp,gp,-31792
    24a8:	0399e021 	addu	gp,gp,t9
    24ac:	27bdffe0 	addiu	sp,sp,-32
    24b0:	afbc0010 	sw	gp,16(sp)
    24b4:	afbf001c 	sw	ra,28(sp)
    24b8:	8fbf001c 	lw	ra,28(sp)
    24bc:	03e00008 	jr	ra
    24c0:	27bd0020 	addiu	sp,sp,32
