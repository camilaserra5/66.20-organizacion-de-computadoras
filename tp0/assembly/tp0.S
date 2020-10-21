
tp0:     file format elf32-tradbigmips


Disassembly of section .init:

00000b28 <_init>:
 b28:	3c1c0002 	lui	gp,0x2
 b2c:	279c9d58 	addiu	gp,gp,-25256
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
     b80:	279c9d04 	addiu	gp,gp,-25340
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
     bd4:	279c9cb0 	addiu	gp,gp,-25424
     bd8:	0399e021 	addu	gp,gp,t9
     bdc:	8f848028 	lw	a0,-32728(gp)
     be0:	8f828024 	lw	v0,-32732(gp)
     be4:	24842884 	addiu	a0,a0,10372
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
     c18:	279c9c6c 	addiu	gp,gp,-25492
     c1c:	0399e021 	addu	gp,gp,t9
     c20:	8f848028 	lw	a0,-32728(gp)
     c24:	8f858024 	lw	a1,-32732(gp)
     c28:	24842884 	addiu	a0,a0,10372
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
     c64:	279c9c20 	addiu	gp,gp,-25568
     c68:	0399e021 	addu	gp,gp,t9
     c6c:	27bdffe0 	addiu	sp,sp,-32
     c70:	afb00018 	sw	s0,24(sp)
     c74:	8f908028 	lw	s0,-32728(gp)
     c78:	afbc0010 	sw	gp,16(sp)
     c7c:	afbf001c 	sw	ra,28(sp)
     c80:	92022990 	lbu	v0,10640(s0)
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
     cb8:	a2022990 	sb	v0,10640(s0)
     cbc:	8fbf001c 	lw	ra,28(sp)
     cc0:	8fb00018 	lw	s0,24(sp)
     cc4:	03e00008 	jr	ra
     cc8:	27bd0020 	addiu	sp,sp,32

00000ccc <frame_dummy>:
     ccc:	3c1c0002 	lui	gp,0x2
     cd0:	279c9bb4 	addiu	gp,gp,-25676
     cd4:	0399e021 	addu	gp,gp,t9
     cd8:	8f828028 	lw	v0,-32728(gp)
     cdc:	27bdffe0 	addiu	sp,sp,-32
     ce0:	244427cc 	addiu	a0,v0,10188
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
     d34:	279c9b50 	addiu	gp,gp,-25776
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
     d64:	0411037a 	bal	1b50 <create_file>
     d68:	00000000 	nop
     d6c:	8fdc0010 	lw	gp,16(s8)
    create_file(&opt->output_file);
     d70:	8fc20020 	lw	v0,32(s8)
     d74:	24420008 	addiu	v0,v0,8
     d78:	00402025 	move	a0,v0
     d7c:	8f828034 	lw	v0,-32716(gp)
     d80:	0040c825 	move	t9,v0
     d84:	04110372 	bal	1b50 <create_file>
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
     f28:	279c995c 	addiu	gp,gp,-26276
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
     f68:	244224f0 	addiu	v0,v0,9456
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
     f98:	24422508 	addiu	v0,v0,9480
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
     fc8:	24422528 	addiu	v0,v0,9512
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
     ff0:	24422554 	addiu	v0,v0,9556
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
    105c:	279c9828 	addiu	gp,gp,-26584
    1060:	0399e021 	addu	gp,gp,t9
    1064:	27bdffe0 	addiu	sp,sp,-32
    1068:	afbf001c 	sw	ra,28(sp)
    106c:	afbe0018 	sw	s8,24(sp)
    1070:	03a0f025 	move	s8,sp
    1074:	afbc0010 	sw	gp,16(sp)
    printf("Options:\n");
    1078:	8f828030 	lw	v0,-32720(gp)
    107c:	24442584 	addiu	a0,v0,9604
    1080:	8f8280e0 	lw	v0,-32544(gp)
    1084:	0040c825 	move	t9,v0
    1088:	0320f809 	jalr	t9
    108c:	00000000 	nop
    1090:	8fdc0010 	lw	gp,16(s8)
    printf("\t-V,\t--version\tPrint version and quit.\n");
    1094:	8f828030 	lw	v0,-32720(gp)
    1098:	24442590 	addiu	a0,v0,9616
    109c:	8f8280e0 	lw	v0,-32544(gp)
    10a0:	0040c825 	move	t9,v0
    10a4:	0320f809 	jalr	t9
    10a8:	00000000 	nop
    10ac:	8fdc0010 	lw	gp,16(s8)
    printf("\t-h,\t--help\t\tPrint this information.\n");
    10b0:	8f828030 	lw	v0,-32720(gp)
    10b4:	244425b8 	addiu	a0,v0,9656
    10b8:	8f8280e0 	lw	v0,-32544(gp)
    10bc:	0040c825 	move	t9,v0
    10c0:	0320f809 	jalr	t9
    10c4:	00000000 	nop
    10c8:	8fdc0010 	lw	gp,16(s8)
    printf("\t-i,\t--input\t\tLocation of the input file.\n");
    10cc:	8f828030 	lw	v0,-32720(gp)
    10d0:	244425e0 	addiu	a0,v0,9696
    10d4:	8f8280e0 	lw	v0,-32544(gp)
    10d8:	0040c825 	move	t9,v0
    10dc:	0320f809 	jalr	t9
    10e0:	00000000 	nop
    10e4:	8fdc0010 	lw	gp,16(s8)
    printf("\t-o,\t--output\tLocation of the output file.\n");
    10e8:	8f828030 	lw	v0,-32720(gp)
    10ec:	2444260c 	addiu	a0,v0,9740
    10f0:	8f8280e0 	lw	v0,-32544(gp)
    10f4:	0040c825 	move	t9,v0
    10f8:	0320f809 	jalr	t9
    10fc:	00000000 	nop
    1100:	8fdc0010 	lw	gp,16(s8)
    printf("\t-d,\t--decode\tDecode a base64-encoded file (default is encode).\n");
    1104:	8f828030 	lw	v0,-32720(gp)
    1108:	24442638 	addiu	a0,v0,9784
    110c:	8f8280e0 	lw	v0,-32544(gp)
    1110:	0040c825 	move	t9,v0
    1114:	0320f809 	jalr	t9
    1118:	00000000 	nop
    111c:	8fdc0010 	lw	gp,16(s8)
    printf("Examples:\n");
    1120:	8f828030 	lw	v0,-32720(gp)
    1124:	24442678 	addiu	a0,v0,9848
    1128:	8f8280e0 	lw	v0,-32544(gp)
    112c:	0040c825 	move	t9,v0
    1130:	0320f809 	jalr	t9
    1134:	00000000 	nop
    1138:	8fdc0010 	lw	gp,16(s8)
    printf("\ttp0 -i ~/input -o ~/output\n");
    113c:	8f828030 	lw	v0,-32720(gp)
    1140:	24442684 	addiu	a0,v0,9860
    1144:	8f8280e0 	lw	v0,-32544(gp)
    1148:	0040c825 	move	t9,v0
    114c:	0320f809 	jalr	t9
    1150:	00000000 	nop
    1154:	8fdc0010 	lw	gp,16(s8)
    printf("\ttp0 --decode\n");
    1158:	8f828030 	lw	v0,-32720(gp)
    115c:	244426a0 	addiu	a0,v0,9888
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
    1194:	279c96f0 	addiu	gp,gp,-26896
    1198:	0399e021 	addu	gp,gp,t9
    119c:	27bdffe0 	addiu	sp,sp,-32
    11a0:	afbf001c 	sw	ra,28(sp)
    11a4:	afbe0018 	sw	s8,24(sp)
    11a8:	03a0f025 	move	s8,sp
    11ac:	afbc0010 	sw	gp,16(sp)
    printf("Version: 1.0\n");
    11b0:	8f828030 	lw	v0,-32720(gp)
    11b4:	244426b0 	addiu	a0,v0,9904
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
    11ec:	279c9698 	addiu	gp,gp,-26984
    11f0:	0399e021 	addu	gp,gp,t9
    11f4:	27bdffd8 	addiu	sp,sp,-40
    11f8:	afbf0024 	sw	ra,36(sp)
    11fc:	afbe0020 	sw	s8,32(sp)
    1200:	03a0f025 	move	s8,sp
    1204:	afbc0010 	sw	gp,16(sp)
    1208:	afc40028 	sw	a0,40(s8)
    if (open_file_read(&opt->input_file, opt->input_path) == ERROR) {
    120c:	8fc30028 	lw	v1,40(s8)
    1210:	8fc20028 	lw	v0,40(s8)
    1214:	8c420010 	lw	v0,16(v0)
    1218:	00402825 	move	a1,v0
    121c:	00602025 	move	a0,v1
    1220:	8f82803c 	lw	v0,-32708(gp)
    1224:	0040c825 	move	t9,v0
    1228:	04110257 	bal	1b88 <open_file_read>
    122c:	00000000 	nop
    1230:	8fdc0010 	lw	gp,16(s8)
    1234:	00401825 	move	v1,v0
    1238:	24020001 	li	v0,1
    123c:	14620004 	bne	v1,v0,1250 <process+0x68>
    1240:	00000000 	nop
        return ERROR;
    1244:	24020001 	li	v0,1
    1248:	10000031 	b	1310 <process+0x128>
    124c:	00000000 	nop
    }
    if (open_file_write(&opt->output_file, opt->output_path) == ERROR) {
    1250:	8fc20028 	lw	v0,40(s8)
    1254:	24430008 	addiu	v1,v0,8
    1258:	8fc20028 	lw	v0,40(s8)
    125c:	8c420014 	lw	v0,20(v0)
    1260:	00402825 	move	a1,v0
    1264:	00602025 	move	a0,v1
    1268:	8f828040 	lw	v0,-32704(gp)
    126c:	0040c825 	move	t9,v0
    1270:	0411028b 	bal	1ca0 <open_file_write>
    1274:	00000000 	nop
    1278:	8fdc0010 	lw	gp,16(s8)
    127c:	00401825 	move	v1,v0
    1280:	24020001 	li	v0,1
    1284:	1462000b 	bne	v1,v0,12b4 <process+0xcc>
    1288:	00000000 	nop
        close_file(&opt->input_file);
    128c:	8fc20028 	lw	v0,40(s8)
    1290:	00402025 	move	a0,v0
    1294:	8f828044 	lw	v0,-32700(gp)
    1298:	0040c825 	move	t9,v0
    129c:	041102c6 	bal	1db8 <close_file>
    12a0:	00000000 	nop
    12a4:	8fdc0010 	lw	gp,16(s8)
        return ERROR;
    12a8:	24020001 	li	v0,1
    12ac:	10000018 	b	1310 <process+0x128>
    12b0:	00000000 	nop
    }

    char result = _do_encode_decode(opt);
    12b4:	8fc40028 	lw	a0,40(s8)
    12b8:	8f828048 	lw	v0,-32696(gp)
    12bc:	0040c825 	move	t9,v0
    12c0:	04110019 	bal	1328 <_do_encode_decode>
    12c4:	00000000 	nop
    12c8:	8fdc0010 	lw	gp,16(s8)
    12cc:	a3c20018 	sb	v0,24(s8)
    close_file(&opt->input_file);
    12d0:	8fc20028 	lw	v0,40(s8)
    12d4:	00402025 	move	a0,v0
    12d8:	8f828044 	lw	v0,-32700(gp)
    12dc:	0040c825 	move	t9,v0
    12e0:	041102b5 	bal	1db8 <close_file>
    12e4:	00000000 	nop
    12e8:	8fdc0010 	lw	gp,16(s8)
    close_file(&opt->output_file);
    12ec:	8fc20028 	lw	v0,40(s8)
    12f0:	24420008 	addiu	v0,v0,8
    12f4:	00402025 	move	a0,v0
    12f8:	8f828044 	lw	v0,-32700(gp)
    12fc:	0040c825 	move	t9,v0
    1300:	041102ad 	bal	1db8 <close_file>
    1304:	00000000 	nop
    1308:	8fdc0010 	lw	gp,16(s8)
    return result;
    130c:	83c20018 	lb	v0,24(s8)
}
    1310:	03c0e825 	move	sp,s8
    1314:	8fbf0024 	lw	ra,36(sp)
    1318:	8fbe0020 	lw	s8,32(sp)
    131c:	27bd0028 	addiu	sp,sp,40
    1320:	03e00008 	jr	ra
    1324:	00000000 	nop

00001328 <_do_encode_decode>:

char _do_encode_decode(command_options_st *opt) {
    1328:	3c1c0002 	lui	gp,0x2
    132c:	279c9558 	addiu	gp,gp,-27304
    1330:	0399e021 	addu	gp,gp,t9
    1334:	27bdffc0 	addiu	sp,sp,-64
    1338:	afbf003c 	sw	ra,60(sp)
    133c:	afbe0038 	sw	s8,56(sp)
    1340:	03a0f025 	move	s8,sp
    1344:	afbc0010 	sw	gp,16(sp)
    1348:	afc40040 	sw	a0,64(s8)
    unsigned char buf_decoded[3];
    unsigned char buf_encoded[4];
    unsigned char count = 0;
    134c:	a3c00018 	sb	zero,24(s8)

    if (opt->encode_option == ENCODE) {
    1350:	8fc20040 	lw	v0,64(s8)
    1354:	80430018 	lb	v1,24(v0)
    1358:	24020001 	li	v0,1
    135c:	1462004b 	bne	v1,v0,148c <_do_encode_decode+0x164>
    1360:	00000000 	nop
        while (!file_eof(&opt->input_file)) {
    1364:	10000040 	b	1468 <_do_encode_decode+0x140>
    1368:	00000000 	nop
            memset(buf_decoded, 0, 3);
    136c:	27c20028 	addiu	v0,s8,40
    1370:	24060003 	li	a2,3
    1374:	00002825 	move	a1,zero
    1378:	00402025 	move	a0,v0
    137c:	8f8280c0 	lw	v0,-32576(gp)
    1380:	0040c825 	move	t9,v0
    1384:	0320f809 	jalr	t9
    1388:	00000000 	nop
    138c:	8fdc0010 	lw	gp,16(s8)
            unsigned int read = file_read(&opt->input_file, buf_decoded, 3);
    1390:	8fc20040 	lw	v0,64(s8)
    1394:	27c30028 	addiu	v1,s8,40
    1398:	24060003 	li	a2,3
    139c:	00602825 	move	a1,v1
    13a0:	00402025 	move	a0,v0
    13a4:	8f82804c 	lw	v0,-32692(gp)
    13a8:	0040c825 	move	t9,v0
    13ac:	041102cb 	bal	1edc <file_read>
    13b0:	00000000 	nop
    13b4:	8fdc0010 	lw	gp,16(s8)
    13b8:	afc20020 	sw	v0,32(s8)
            if (read > 0) {
    13bc:	8fc20020 	lw	v0,32(s8)
    13c0:	10400029 	beqz	v0,1468 <_do_encode_decode+0x140>
    13c4:	00000000 	nop
                Encode(buf_decoded, read, buf_encoded);
    13c8:	27c3002c 	addiu	v1,s8,44
    13cc:	27c20028 	addiu	v0,s8,40
    13d0:	00603025 	move	a2,v1
    13d4:	8fc50020 	lw	a1,32(s8)
    13d8:	00402025 	move	a0,v0
    13dc:	8f828050 	lw	v0,-32688(gp)
    13e0:	0040c825 	move	t9,v0
    13e4:	041100ce 	bal	1720 <Encode>
    13e8:	00000000 	nop
    13ec:	8fdc0010 	lw	gp,16(s8)
                file_write(&opt->output_file, buf_encoded, 4);
    13f0:	8fc20040 	lw	v0,64(s8)
    13f4:	24420008 	addiu	v0,v0,8
    13f8:	27c3002c 	addiu	v1,s8,44
    13fc:	24060004 	li	a2,4
    1400:	00602825 	move	a1,v1
    1404:	00402025 	move	a0,v0
    1408:	8f828054 	lw	v0,-32684(gp)
    140c:	0040c825 	move	t9,v0
    1410:	041102e6 	bal	1fac <file_write>
    1414:	00000000 	nop
    1418:	8fdc0010 	lw	gp,16(s8)
                ++count;
    141c:	93c20018 	lbu	v0,24(s8)
    1420:	24420001 	addiu	v0,v0,1
    1424:	a3c20018 	sb	v0,24(s8)
                if (count == 18) // 19 * 4 =  76 bytes
    1428:	93c30018 	lbu	v1,24(s8)
    142c:	24020012 	li	v0,18
    1430:	1462000d 	bne	v1,v0,1468 <_do_encode_decode+0x140>
    1434:	00000000 	nop
                {
                    file_write(&opt->output_file, (unsigned char *) "\n", 1);
    1438:	8fc20040 	lw	v0,64(s8)
    143c:	24430008 	addiu	v1,v0,8
    1440:	24060001 	li	a2,1
    1444:	8f828030 	lw	v0,-32720(gp)
    1448:	244526c0 	addiu	a1,v0,9920
    144c:	00602025 	move	a0,v1
    1450:	8f828054 	lw	v0,-32684(gp)
    1454:	0040c825 	move	t9,v0
    1458:	041102d4 	bal	1fac <file_write>
    145c:	00000000 	nop
    1460:	8fdc0010 	lw	gp,16(s8)
                    count = 0;
    1464:	a3c00018 	sb	zero,24(s8)
        while (!file_eof(&opt->input_file)) {
    1468:	8fc20040 	lw	v0,64(s8)
    146c:	00402025 	move	a0,v0
    1470:	8f828058 	lw	v0,-32680(gp)
    1474:	0040c825 	move	t9,v0
    1478:	041102e9 	bal	2020 <file_eof>
    147c:	00000000 	nop
    1480:	8fdc0010 	lw	gp,16(s8)
    1484:	1040ffb9 	beqz	v0,136c <_do_encode_decode+0x44>
    1488:	00000000 	nop
                }
            }
        }
    }

    if (opt->encode_option == DECODE) {
    148c:	8fc20040 	lw	v0,64(s8)
    1490:	80420018 	lb	v0,24(v0)
    1494:	14400097 	bnez	v0,16f4 <_do_encode_decode+0x3cc>
    1498:	00000000 	nop
        while (!file_eof(&opt->input_file) && !has_errors(opt)) {
    149c:	10000084 	b	16b0 <_do_encode_decode+0x388>
    14a0:	00000000 	nop
            unsigned int read = file_read(&opt->input_file, buf_encoded, 4);
    14a4:	8fc20040 	lw	v0,64(s8)
    14a8:	27c3002c 	addiu	v1,s8,44
    14ac:	24060004 	li	a2,4
    14b0:	00602825 	move	a1,v1
    14b4:	00402025 	move	a0,v0
    14b8:	8f82804c 	lw	v0,-32692(gp)
    14bc:	0040c825 	move	t9,v0
    14c0:	04110286 	bal	1edc <file_read>
    14c4:	00000000 	nop
    14c8:	8fdc0010 	lw	gp,16(s8)
    14cc:	afc20024 	sw	v0,36(s8)
            if (read > 0) {
    14d0:	8fc20024 	lw	v0,36(s8)
    14d4:	10400076 	beqz	v0,16b0 <_do_encode_decode+0x388>
    14d8:	00000000 	nop
                if (read != 4) {
    14dc:	8fc30024 	lw	v1,36(s8)
    14e0:	24020004 	li	v0,4
    14e4:	10620010 	beq	v1,v0,1528 <_do_encode_decode+0x200>
    14e8:	00000000 	nop
                    set_error(opt, INVALID_FILE_LENGTH);
    14ec:	2405fffc 	li	a1,-4
    14f0:	8fc40040 	lw	a0,64(s8)
    14f4:	8f82805c 	lw	v0,-32676(gp)
    14f8:	0040c825 	move	t9,v0
    14fc:	0411fe69 	bal	ea4 <set_error>
    1500:	00000000 	nop
    1504:	8fdc0010 	lw	gp,16(s8)
                    show_error(opt);
    1508:	8fc40040 	lw	a0,64(s8)
    150c:	8f828060 	lw	v0,-32672(gp)
    1510:	0040c825 	move	t9,v0
    1514:	0411fe83 	bal	f24 <show_error>
    1518:	00000000 	nop
    151c:	8fdc0010 	lw	gp,16(s8)
    1520:	10000063 	b	16b0 <_do_encode_decode+0x388>
    1524:	00000000 	nop
                } else {
                    ++count;
    1528:	93c20018 	lbu	v0,24(s8)
    152c:	24420001 	addiu	v0,v0,1
    1530:	a3c20018 	sb	v0,24(s8)
                    if (count == 18) { // 19 * 4 =  76 bytes
    1534:	93c30018 	lbu	v1,24(s8)
    1538:	24020012 	li	v0,18
    153c:	1462000c 	bne	v1,v0,1570 <_do_encode_decode+0x248>
    1540:	00000000 	nop
                        unsigned char aux;
                        file_read(&opt->input_file, &aux, 1);
    1544:	8fc20040 	lw	v0,64(s8)
    1548:	27c30030 	addiu	v1,s8,48
    154c:	24060001 	li	a2,1
    1550:	00602825 	move	a1,v1
    1554:	00402025 	move	a0,v0
    1558:	8f82804c 	lw	v0,-32692(gp)
    155c:	0040c825 	move	t9,v0
    1560:	0411025e 	bal	1edc <file_read>
    1564:	00000000 	nop
    1568:	8fdc0010 	lw	gp,16(s8)
                        count = 0;
    156c:	a3c00018 	sb	zero,24(s8)
                    }

                    if (Decode(buf_encoded, buf_decoded)) {
    1570:	27c30028 	addiu	v1,s8,40
    1574:	27c2002c 	addiu	v0,s8,44
    1578:	00602825 	move	a1,v1
    157c:	00402025 	move	a0,v0
    1580:	8f828064 	lw	v0,-32668(gp)
    1584:	0040c825 	move	t9,v0
    1588:	04110114 	bal	19dc <Decode>
    158c:	00000000 	nop
    1590:	8fdc0010 	lw	gp,16(s8)
    1594:	10400022 	beqz	v0,1620 <_do_encode_decode+0x2f8>
    1598:	00000000 	nop
                        char aux = 0;
    159c:	a3c00019 	sb	zero,25(s8)
                        if (buf_encoded[2] == '=') {
    15a0:	93c3002e 	lbu	v1,46(s8)
    15a4:	2402003d 	li	v0,61
    15a8:	14620005 	bne	v1,v0,15c0 <_do_encode_decode+0x298>
    15ac:	00000000 	nop
                            ++aux;
    15b0:	93c20019 	lbu	v0,25(s8)
    15b4:	24420001 	addiu	v0,v0,1
    15b8:	304200ff 	andi	v0,v0,0xff
    15bc:	a3c20019 	sb	v0,25(s8)
                        }
                        if (buf_encoded[3] == '=') {
    15c0:	93c3002f 	lbu	v1,47(s8)
    15c4:	2402003d 	li	v0,61
    15c8:	14620005 	bne	v1,v0,15e0 <_do_encode_decode+0x2b8>
    15cc:	00000000 	nop
                            ++aux;
    15d0:	93c20019 	lbu	v0,25(s8)
    15d4:	24420001 	addiu	v0,v0,1
    15d8:	304200ff 	andi	v0,v0,0xff
    15dc:	a3c20019 	sb	v0,25(s8)
                        }

                        file_write(&opt->output_file, buf_decoded, 3 - aux);
    15e0:	8fc20040 	lw	v0,64(s8)
    15e4:	24440008 	addiu	a0,v0,8
    15e8:	83c20019 	lb	v0,25(s8)
    15ec:	24030003 	li	v1,3
    15f0:	00621023 	subu	v0,v1,v0
    15f4:	00401825 	move	v1,v0
    15f8:	27c20028 	addiu	v0,s8,40
    15fc:	00603025 	move	a2,v1
    1600:	00402825 	move	a1,v0
    1604:	8f828054 	lw	v0,-32684(gp)
    1608:	0040c825 	move	t9,v0
    160c:	04110267 	bal	1fac <file_write>
    1610:	00000000 	nop
    1614:	8fdc0010 	lw	gp,16(s8)
    1618:	10000025 	b	16b0 <_do_encode_decode+0x388>
    161c:	00000000 	nop
                    } else {
                        set_error(opt, INVALID_CHARS);
    1620:	2405fffb 	li	a1,-5
    1624:	8fc40040 	lw	a0,64(s8)
    1628:	8f82805c 	lw	v0,-32676(gp)
    162c:	0040c825 	move	t9,v0
    1630:	0411fe1c 	bal	ea4 <set_error>
    1634:	00000000 	nop
    1638:	8fdc0010 	lw	gp,16(s8)
                        show_error(opt);
    163c:	8fc40040 	lw	a0,64(s8)
    1640:	8f828060 	lw	v0,-32672(gp)
    1644:	0040c825 	move	t9,v0
    1648:	0411fe36 	bal	f24 <show_error>
    164c:	00000000 	nop
    1650:	8fdc0010 	lw	gp,16(s8)
                        unsigned int i;
                        for (i = 0; i < 4; ++i) {
    1654:	afc0001c 	sw	zero,28(s8)
    1658:	10000011 	b	16a0 <_do_encode_decode+0x378>
    165c:	00000000 	nop
                            fprintf(stderr, "%c", buf_encoded[i]);
    1660:	8f8280f0 	lw	v0,-32528(gp)
    1664:	8c440000 	lw	a0,0(v0)
    1668:	8fc2001c 	lw	v0,28(s8)
    166c:	27c30018 	addiu	v1,s8,24
    1670:	00621021 	addu	v0,v1,v0
    1674:	90420014 	lbu	v0,20(v0)
    1678:	00802825 	move	a1,a0
    167c:	00402025 	move	a0,v0
    1680:	8f8280b4 	lw	v0,-32588(gp)
    1684:	0040c825 	move	t9,v0
    1688:	0320f809 	jalr	t9
    168c:	00000000 	nop
    1690:	8fdc0010 	lw	gp,16(s8)
                        for (i = 0; i < 4; ++i) {
    1694:	8fc2001c 	lw	v0,28(s8)
    1698:	24420001 	addiu	v0,v0,1
    169c:	afc2001c 	sw	v0,28(s8)
    16a0:	8fc2001c 	lw	v0,28(s8)
    16a4:	2c420004 	sltiu	v0,v0,4
    16a8:	1440ffed 	bnez	v0,1660 <_do_encode_decode+0x338>
    16ac:	00000000 	nop
        while (!file_eof(&opt->input_file) && !has_errors(opt)) {
    16b0:	8fc20040 	lw	v0,64(s8)
    16b4:	00402025 	move	a0,v0
    16b8:	8f828058 	lw	v0,-32680(gp)
    16bc:	0040c825 	move	t9,v0
    16c0:	04110257 	bal	2020 <file_eof>
    16c4:	00000000 	nop
    16c8:	8fdc0010 	lw	gp,16(s8)
    16cc:	14400009 	bnez	v0,16f4 <_do_encode_decode+0x3cc>
    16d0:	00000000 	nop
    16d4:	8fc40040 	lw	a0,64(s8)
    16d8:	8f828068 	lw	v0,-32664(gp)
    16dc:	0040c825 	move	t9,v0
    16e0:	0411fdff 	bal	ee0 <has_errors>
    16e4:	00000000 	nop
    16e8:	8fdc0010 	lw	gp,16(s8)
    16ec:	1040ff6d 	beqz	v0,14a4 <_do_encode_decode+0x17c>
    16f0:	00000000 	nop

            }
        }
    }

    return opt->error_condition;
    16f4:	8fc20040 	lw	v0,64(s8)
    16f8:	80420019 	lb	v0,25(v0)
}
    16fc:	03c0e825 	move	sp,s8
    1700:	8fbf003c 	lw	ra,60(sp)
    1704:	8fbe0038 	lw	s8,56(sp)
    1708:	27bd0040 	addiu	sp,sp,64
    170c:	03e00008 	jr	ra
    1710:	00000000 	nop
	...

00001720 <Encode>:
                                         '4', '5', '6', '7', '8', '9', '+', '/'};

static int encoding_table_size = 64;


void Encode(const unsigned char *buffer, unsigned int length, unsigned char *output) {
    1720:	3c1c0002 	lui	gp,0x2
    1724:	279c9160 	addiu	gp,gp,-28320
    1728:	0399e021 	addu	gp,gp,t9
    172c:	27bdffe0 	addiu	sp,sp,-32
    1730:	afbe001c 	sw	s8,28(sp)
    1734:	03a0f025 	move	s8,sp
    1738:	afbc0000 	sw	gp,0(sp)
    173c:	afc40020 	sw	a0,32(s8)
    1740:	afc50024 	sw	a1,36(s8)
    1744:	afc60028 	sw	a2,40(s8)
    unsigned char b1 = buffer[0];
    1748:	8fc20020 	lw	v0,32(s8)
    174c:	90420000 	lbu	v0,0(v0)
    1750:	a3c20008 	sb	v0,8(s8)
    unsigned char b2 = buffer[1];
    1754:	8fc20020 	lw	v0,32(s8)
    1758:	90420001 	lbu	v0,1(v0)
    175c:	a3c20009 	sb	v0,9(s8)
    unsigned char b3 = buffer[2];
    1760:	8fc20020 	lw	v0,32(s8)
    1764:	90420002 	lbu	v0,2(v0)
    1768:	a3c2000a 	sb	v0,10(s8)
    //I retrieve the first 6 bits and operate..
    unsigned char b1aux = b1 >> 2;
    176c:	93c20008 	lbu	v0,8(s8)
    1770:	00021082 	srl	v0,v0,0x2
    1774:	a3c2000b 	sb	v0,11(s8)
    //Recovered the first 6 bits, I look into the encoding in the table.
    output[0] = encoding_table[(int) b1aux];
    1778:	93c3000b 	lbu	v1,11(s8)
    177c:	8f828028 	lw	v0,-32728(gp)
    1780:	244227e0 	addiu	v0,v0,10208
    1784:	00621021 	addu	v0,v1,v0
    1788:	90430000 	lbu	v1,0(v0)
    178c:	8fc20028 	lw	v0,40(s8)
    1790:	a0430000 	sb	v1,0(v0)
    //I retrieve the next 6 bits.
    unsigned char b2aux = b1 << 6;
    1794:	93c20008 	lbu	v0,8(s8)
    1798:	00021180 	sll	v0,v0,0x6
    179c:	a3c2000c 	sb	v0,12(s8)
    b2aux = b2aux >> 2;
    17a0:	93c2000c 	lbu	v0,12(s8)
    17a4:	00021082 	srl	v0,v0,0x2
    17a8:	a3c2000c 	sb	v0,12(s8)
    b2aux = b2aux | (b2 >> 4);
    17ac:	93c20009 	lbu	v0,9(s8)
    17b0:	00021102 	srl	v0,v0,0x4
    17b4:	304300ff 	andi	v1,v0,0xff
    17b8:	93c2000c 	lbu	v0,12(s8)
    17bc:	00621025 	or	v0,v1,v0
    17c0:	a3c2000c 	sb	v0,12(s8)
    //I take look into the encoding table
    output[1] = encoding_table[(int) b2aux];
    17c4:	8fc20028 	lw	v0,40(s8)
    17c8:	24420001 	addiu	v0,v0,1
    17cc:	93c4000c 	lbu	a0,12(s8)
    17d0:	8f838028 	lw	v1,-32728(gp)
    17d4:	246327e0 	addiu	v1,v1,10208
    17d8:	00831821 	addu	v1,a0,v1
    17dc:	90630000 	lbu	v1,0(v1)
    17e0:	a0430000 	sb	v1,0(v0)
    output[2] = BASE64_END;
    17e4:	8fc20028 	lw	v0,40(s8)
    17e8:	24420002 	addiu	v0,v0,2
    17ec:	2403003d 	li	v1,61
    17f0:	a0430000 	sb	v1,0(v0)
    output[3] = BASE64_END;
    17f4:	8fc20028 	lw	v0,40(s8)
    17f8:	24420003 	addiu	v0,v0,3
    17fc:	2403003d 	li	v1,61
    1800:	a0430000 	sb	v1,0(v0)
    if (length == 3) {
    1804:	8fc30024 	lw	v1,36(s8)
    1808:	24020003 	li	v0,3
    180c:	14620026 	bne	v1,v0,18a8 <Encode+0x188>
    1810:	00000000 	nop
        /*
     * If I have 3 characters in the buffer I operate
     * with the last 2 characters.
     */
        unsigned char b3aux = b3 >> 6;
    1814:	93c2000a 	lbu	v0,10(s8)
    1818:	00021182 	srl	v0,v0,0x6
    181c:	a3c2000d 	sb	v0,13(s8)
        unsigned char b3aux2 = b2 << 4;
    1820:	93c20009 	lbu	v0,9(s8)
    1824:	00021100 	sll	v0,v0,0x4
    1828:	a3c2000e 	sb	v0,14(s8)
        b3aux2 = b3aux2 >> 2;
    182c:	93c2000e 	lbu	v0,14(s8)
    1830:	00021082 	srl	v0,v0,0x2
    1834:	a3c2000e 	sb	v0,14(s8)
        b3aux = b3aux | b3aux2;
    1838:	93c3000d 	lbu	v1,13(s8)
    183c:	93c2000e 	lbu	v0,14(s8)
    1840:	00621025 	or	v0,v1,v0
    1844:	a3c2000d 	sb	v0,13(s8)
        //I take look into the encoding table.
        output[2] = encoding_table[(int) b3aux];
    1848:	8fc20028 	lw	v0,40(s8)
    184c:	24420002 	addiu	v0,v0,2
    1850:	93c4000d 	lbu	a0,13(s8)
    1854:	8f838028 	lw	v1,-32728(gp)
    1858:	246327e0 	addiu	v1,v1,10208
    185c:	00831821 	addu	v1,a0,v1
    1860:	90630000 	lbu	v1,0(v1)
    1864:	a0430000 	sb	v1,0(v0)
        unsigned char b4aux = b3 << 2;
    1868:	93c2000a 	lbu	v0,10(s8)
    186c:	00021080 	sll	v0,v0,0x2
    1870:	a3c2000f 	sb	v0,15(s8)
        b4aux = b4aux >> 2;
    1874:	93c2000f 	lbu	v0,15(s8)
    1878:	00021082 	srl	v0,v0,0x2
    187c:	a3c2000f 	sb	v0,15(s8)
        //I take look into the encoding table.
        output[3] = encoding_table[(int) b4aux];
    1880:	8fc20028 	lw	v0,40(s8)
    1884:	24420003 	addiu	v0,v0,3
    1888:	93c4000f 	lbu	a0,15(s8)
    188c:	8f838028 	lw	v1,-32728(gp)
    1890:	246327e0 	addiu	v1,v1,10208
    1894:	00831821 	addu	v1,a0,v1
    1898:	90630000 	lbu	v1,0(v1)
    189c:	a0430000 	sb	v1,0(v0)
            b3aux2 = b3aux2 >> 2;
            b3aux = b3aux | b3aux2;
            output[2] = encoding_table[(int) b3aux];
        }
    }
}
    18a0:	1000001a 	b	190c <Encode+0x1ec>
    18a4:	00000000 	nop
        if (length == 2) {
    18a8:	8fc30024 	lw	v1,36(s8)
    18ac:	24020002 	li	v0,2
    18b0:	14620016 	bne	v1,v0,190c <Encode+0x1ec>
    18b4:	00000000 	nop
            unsigned char b3aux = b3 >> 6;
    18b8:	93c2000a 	lbu	v0,10(s8)
    18bc:	00021182 	srl	v0,v0,0x6
    18c0:	a3c20010 	sb	v0,16(s8)
            unsigned char b3aux2 = b2 << 4;
    18c4:	93c20009 	lbu	v0,9(s8)
    18c8:	00021100 	sll	v0,v0,0x4
    18cc:	a3c20011 	sb	v0,17(s8)
            b3aux2 = b3aux2 >> 2;
    18d0:	93c20011 	lbu	v0,17(s8)
    18d4:	00021082 	srl	v0,v0,0x2
    18d8:	a3c20011 	sb	v0,17(s8)
            b3aux = b3aux | b3aux2;
    18dc:	93c30010 	lbu	v1,16(s8)
    18e0:	93c20011 	lbu	v0,17(s8)
    18e4:	00621025 	or	v0,v1,v0
    18e8:	a3c20010 	sb	v0,16(s8)
            output[2] = encoding_table[(int) b3aux];
    18ec:	8fc20028 	lw	v0,40(s8)
    18f0:	24420002 	addiu	v0,v0,2
    18f4:	93c40010 	lbu	a0,16(s8)
    18f8:	8f838028 	lw	v1,-32728(gp)
    18fc:	246327e0 	addiu	v1,v1,10208
    1900:	00831821 	addu	v1,a0,v1
    1904:	90630000 	lbu	v1,0(v1)
    1908:	a0430000 	sb	v1,0(v0)
}
    190c:	00000000 	nop
    1910:	03c0e825 	move	sp,s8
    1914:	8fbe001c 	lw	s8,28(sp)
    1918:	27bd0020 	addiu	sp,sp,32
    191c:	03e00008 	jr	ra
    1920:	00000000 	nop

00001924 <DecodeChar>:
 * is the character '='.
 * post: returns the representation (int) of the character
 * in the encoding table.
 *
 */
unsigned char DecodeChar(char character) {
    1924:	3c1c0002 	lui	gp,0x2
    1928:	279c8f5c 	addiu	gp,gp,-28836
    192c:	0399e021 	addu	gp,gp,t9
    1930:	27bdffe8 	addiu	sp,sp,-24
    1934:	afbe0014 	sw	s8,20(sp)
    1938:	03a0f025 	move	s8,sp
    193c:	afbc0000 	sw	gp,0(sp)
    1940:	00801025 	move	v0,a0
    1944:	a3c20018 	sb	v0,24(s8)
    unsigned char i;
    for (i = 0; i < encoding_table_size; i++) {
    1948:	a3c00008 	sb	zero,8(s8)
    194c:	10000010 	b	1990 <DecodeChar+0x6c>
    1950:	00000000 	nop
        if (encoding_table[i] == character) {
    1954:	93c30008 	lbu	v1,8(s8)
    1958:	8f828028 	lw	v0,-32728(gp)
    195c:	244227e0 	addiu	v0,v0,10208
    1960:	00621021 	addu	v0,v1,v0
    1964:	90420000 	lbu	v0,0(v0)
    1968:	00401825 	move	v1,v0
    196c:	83c20018 	lb	v0,24(s8)
    1970:	14620004 	bne	v1,v0,1984 <DecodeChar+0x60>
    1974:	00000000 	nop
            return i;
    1978:	93c20008 	lbu	v0,8(s8)
    197c:	10000012 	b	19c8 <DecodeChar+0xa4>
    1980:	00000000 	nop
    for (i = 0; i < encoding_table_size; i++) {
    1984:	93c20008 	lbu	v0,8(s8)
    1988:	24420001 	addiu	v0,v0,1
    198c:	a3c20008 	sb	v0,8(s8)
    1990:	93c30008 	lbu	v1,8(s8)
    1994:	8f828028 	lw	v0,-32728(gp)
    1998:	8c422820 	lw	v0,10272(v0)
    199c:	0062102a 	slt	v0,v1,v0
    19a0:	1440ffec 	bnez	v0,1954 <DecodeChar+0x30>
    19a4:	00000000 	nop
        }
    }
    if (character == '=') {
    19a8:	83c30018 	lb	v1,24(s8)
    19ac:	2402003d 	li	v0,61
    19b0:	14620004 	bne	v1,v0,19c4 <DecodeChar+0xa0>
    19b4:	00000000 	nop
        return 0;
    19b8:	00001025 	move	v0,zero
    19bc:	10000002 	b	19c8 <DecodeChar+0xa4>
    19c0:	00000000 	nop
    }
    return DECODE_ERROR;
    19c4:	24020064 	li	v0,100
}
    19c8:	03c0e825 	move	sp,s8
    19cc:	8fbe0014 	lw	s8,20(sp)
    19d0:	27bd0018 	addiu	sp,sp,24
    19d4:	03e00008 	jr	ra
    19d8:	00000000 	nop

000019dc <Decode>:
/**
 * Returns a buffer with size 3 with the 4 character base64 decode.
 * Pre: the input buffer contains 4 characters. The output buffer has at least 3 characters
 * Post: returns a buffer with size 3 ASCII characters. returns 0 if error 1 if ok
 */
unsigned char Decode(unsigned char *buf_input, unsigned char *buf_output) {
    19dc:	3c1c0002 	lui	gp,0x2
    19e0:	279c8ea4 	addiu	gp,gp,-29020
    19e4:	0399e021 	addu	gp,gp,t9
    19e8:	27bdffd0 	addiu	sp,sp,-48
    19ec:	afbf002c 	sw	ra,44(sp)
    19f0:	afbe0028 	sw	s8,40(sp)
    19f4:	03a0f025 	move	s8,sp
    19f8:	afbc0010 	sw	gp,16(sp)
    19fc:	afc40030 	sw	a0,48(s8)
    1a00:	afc50034 	sw	a1,52(s8)
    unsigned char chars[4];
    unsigned int i;
    for (i = 0; i < 4; ++i) {
    1a04:	afc00018 	sw	zero,24(s8)
    1a08:	1000001e 	b	1a84 <Decode+0xa8>
    1a0c:	00000000 	nop
        chars[i] = DecodeChar(buf_input[i]);
    1a10:	8fc30030 	lw	v1,48(s8)
    1a14:	8fc20018 	lw	v0,24(s8)
    1a18:	00621021 	addu	v0,v1,v0
    1a1c:	90420000 	lbu	v0,0(v0)
    1a20:	7c021420 	seb	v0,v0
    1a24:	00402025 	move	a0,v0
    1a28:	8f82806c 	lw	v0,-32660(gp)
    1a2c:	0040c825 	move	t9,v0
    1a30:	0411ffbc 	bal	1924 <DecodeChar>
    1a34:	00000000 	nop
    1a38:	8fdc0010 	lw	gp,16(s8)
    1a3c:	00402025 	move	a0,v0
    1a40:	8fc20018 	lw	v0,24(s8)
    1a44:	27c30018 	addiu	v1,s8,24
    1a48:	00621021 	addu	v0,v1,v0
    1a4c:	a0440008 	sb	a0,8(v0)
        if (chars[i] == DECODE_ERROR)
    1a50:	8fc20018 	lw	v0,24(s8)
    1a54:	27c30018 	addiu	v1,s8,24
    1a58:	00621021 	addu	v0,v1,v0
    1a5c:	90430008 	lbu	v1,8(v0)
    1a60:	24020064 	li	v0,100
    1a64:	14620004 	bne	v1,v0,1a78 <Decode+0x9c>
    1a68:	00000000 	nop
            return 0;
    1a6c:	00001025 	move	v0,zero
    1a70:	1000002e 	b	1b2c <Decode+0x150>
    1a74:	00000000 	nop
    for (i = 0; i < 4; ++i) {
    1a78:	8fc20018 	lw	v0,24(s8)
    1a7c:	24420001 	addiu	v0,v0,1
    1a80:	afc20018 	sw	v0,24(s8)
    1a84:	8fc20018 	lw	v0,24(s8)
    1a88:	2c420004 	sltiu	v0,v0,4
    1a8c:	1440ffe0 	bnez	v0,1a10 <Decode+0x34>
    1a90:	00000000 	nop
    }

    unsigned char char1_aux = chars[0] << 2;
    1a94:	93c20020 	lbu	v0,32(s8)
    1a98:	00021080 	sll	v0,v0,0x2
    1a9c:	a3c2001c 	sb	v0,28(s8)
    //Take the last 2 bits of char2
    unsigned char char2_aux = chars[1] >> 4;
    1aa0:	93c20021 	lbu	v0,33(s8)
    1aa4:	00021102 	srl	v0,v0,0x4
    1aa8:	a3c2001d 	sb	v0,29(s8)
    char1_aux = char1_aux | char2_aux;
    1aac:	93c3001c 	lbu	v1,28(s8)
    1ab0:	93c2001d 	lbu	v0,29(s8)
    1ab4:	00621025 	or	v0,v1,v0
    1ab8:	a3c2001c 	sb	v0,28(s8)
    buf_output[0] = char1_aux;
    1abc:	8fc20034 	lw	v0,52(s8)
    1ac0:	93c3001c 	lbu	v1,28(s8)
    1ac4:	a0430000 	sb	v1,0(v0)

    //Take the last 4b of char2 and the first 4b of char3
    char1_aux = chars[1] << 4;
    1ac8:	93c20021 	lbu	v0,33(s8)
    1acc:	00021100 	sll	v0,v0,0x4
    1ad0:	a3c2001c 	sb	v0,28(s8)
    char2_aux = chars[2] >> 2;
    1ad4:	93c20022 	lbu	v0,34(s8)
    1ad8:	00021082 	srl	v0,v0,0x2
    1adc:	a3c2001d 	sb	v0,29(s8)
    char2_aux = char1_aux | char2_aux;
    1ae0:	93c3001c 	lbu	v1,28(s8)
    1ae4:	93c2001d 	lbu	v0,29(s8)
    1ae8:	00621025 	or	v0,v1,v0
    1aec:	a3c2001d 	sb	v0,29(s8)
    buf_output[1] = char2_aux;
    1af0:	8fc20034 	lw	v0,52(s8)
    1af4:	24420001 	addiu	v0,v0,1
    1af8:	93c3001d 	lbu	v1,29(s8)
    1afc:	a0430000 	sb	v1,0(v0)

    //Take the last 2b of char3 + the bits of char4
    char1_aux = chars[2] << 6;
    1b00:	93c20022 	lbu	v0,34(s8)
    1b04:	00021180 	sll	v0,v0,0x6
    1b08:	a3c2001c 	sb	v0,28(s8)
    buf_output[2] = char1_aux | chars[3];
    1b0c:	8fc20034 	lw	v0,52(s8)
    1b10:	24420002 	addiu	v0,v0,2
    1b14:	93c40023 	lbu	a0,35(s8)
    1b18:	93c3001c 	lbu	v1,28(s8)
    1b1c:	00831825 	or	v1,a0,v1
    1b20:	306300ff 	andi	v1,v1,0xff
    1b24:	a0430000 	sb	v1,0(v0)
    return 1;
    1b28:	24020001 	li	v0,1
}
    1b2c:	03c0e825 	move	sp,s8
    1b30:	8fbf002c 	lw	ra,44(sp)
    1b34:	8fbe0028 	lw	s8,40(sp)
    1b38:	27bd0030 	addiu	sp,sp,48
    1b3c:	03e00008 	jr	ra
    1b40:	00000000 	nop
	...

00001b50 <create_file>:
#include "file.h"
#include <stdlib.h>
#include <string.h>
#include <errno.h>

void create_file(File *file) {
    1b50:	27bdfff8 	addiu	sp,sp,-8
    1b54:	afbe0004 	sw	s8,4(sp)
    1b58:	03a0f025 	move	s8,sp
    1b5c:	afc40008 	sw	a0,8(s8)
    file->file = 0;
    1b60:	8fc20008 	lw	v0,8(s8)
    1b64:	ac400000 	sw	zero,0(v0)
    file->eof = 0;
    1b68:	8fc20008 	lw	v0,8(s8)
    1b6c:	a0400004 	sb	zero,4(v0)
}
    1b70:	00000000 	nop
    1b74:	03c0e825 	move	sp,s8
    1b78:	8fbe0004 	lw	s8,4(sp)
    1b7c:	27bd0008 	addiu	sp,sp,8
    1b80:	03e00008 	jr	ra
    1b84:	00000000 	nop

00001b88 <open_file_read>:

char open_file_read(File *file, const char *route) {
    1b88:	3c1c0002 	lui	gp,0x2
    1b8c:	279c8cf8 	addiu	gp,gp,-29448
    1b90:	0399e021 	addu	gp,gp,t9
    1b94:	27bdffd0 	addiu	sp,sp,-48
    1b98:	afbf002c 	sw	ra,44(sp)
    1b9c:	afbe0028 	sw	s8,40(sp)
    1ba0:	afb00024 	sw	s0,36(sp)
    1ba4:	03a0f025 	move	s8,sp
    1ba8:	afbc0010 	sw	gp,16(sp)
    1bac:	afc40030 	sw	a0,48(s8)
    1bb0:	afc50034 	sw	a1,52(s8)
    if (route == NULL) {
    1bb4:	8fc20034 	lw	v0,52(s8)
    1bb8:	14400007 	bnez	v0,1bd8 <open_file_read+0x50>
    1bbc:	00000000 	nop
        file->file = stdin;
    1bc0:	8f8280c4 	lw	v0,-32572(gp)
    1bc4:	8c430000 	lw	v1,0(v0)
    1bc8:	8fc20030 	lw	v0,48(s8)
    1bcc:	ac430000 	sw	v1,0(v0)
    1bd0:	1000002b 	b	1c80 <open_file_read+0xf8>
    1bd4:	00000000 	nop
    } else {
        file->file = fopen(route, "rb");
    1bd8:	8f828030 	lw	v0,-32720(gp)
    1bdc:	244526d0 	addiu	a1,v0,9936
    1be0:	8fc40034 	lw	a0,52(s8)
    1be4:	8f8280f4 	lw	v0,-32524(gp)
    1be8:	0040c825 	move	t9,v0
    1bec:	0320f809 	jalr	t9
    1bf0:	00000000 	nop
    1bf4:	8fdc0010 	lw	gp,16(s8)
    1bf8:	00401825 	move	v1,v0
    1bfc:	8fc20030 	lw	v0,48(s8)
    1c00:	ac430000 	sw	v1,0(v0)
        if (file->file == NULL) {
    1c04:	8fc20030 	lw	v0,48(s8)
    1c08:	8c420000 	lw	v0,0(v0)
    1c0c:	1440001c 	bnez	v0,1c80 <open_file_read+0xf8>
    1c10:	00000000 	nop
            int err = errno;
    1c14:	8f8280bc 	lw	v0,-32580(gp)
    1c18:	0040c825 	move	t9,v0
    1c1c:	0320f809 	jalr	t9
    1c20:	00000000 	nop
    1c24:	8fdc0010 	lw	gp,16(s8)
    1c28:	8c420000 	lw	v0,0(v0)
    1c2c:	afc20018 	sw	v0,24(s8)
            fprintf(stderr, "Error al abrir archivo: %s\n", strerror(err));
    1c30:	8f8280f0 	lw	v0,-32528(gp)
    1c34:	8c500000 	lw	s0,0(v0)
    1c38:	8fc40018 	lw	a0,24(s8)
    1c3c:	8f8280dc 	lw	v0,-32548(gp)
    1c40:	0040c825 	move	t9,v0
    1c44:	0320f809 	jalr	t9
    1c48:	00000000 	nop
    1c4c:	8fdc0010 	lw	gp,16(s8)
    1c50:	00403025 	move	a2,v0
    1c54:	8f828030 	lw	v0,-32720(gp)
    1c58:	244526d4 	addiu	a1,v0,9940
    1c5c:	02002025 	move	a0,s0
    1c60:	8f8280c8 	lw	v0,-32568(gp)
    1c64:	0040c825 	move	t9,v0
    1c68:	0320f809 	jalr	t9
    1c6c:	00000000 	nop
    1c70:	8fdc0010 	lw	gp,16(s8)
            return ERROR;
    1c74:	24020001 	li	v0,1
    1c78:	10000002 	b	1c84 <open_file_read+0xfc>
    1c7c:	00000000 	nop
        }
    }
    return OK;
    1c80:	00001025 	move	v0,zero
}
    1c84:	03c0e825 	move	sp,s8
    1c88:	8fbf002c 	lw	ra,44(sp)
    1c8c:	8fbe0028 	lw	s8,40(sp)
    1c90:	8fb00024 	lw	s0,36(sp)
    1c94:	27bd0030 	addiu	sp,sp,48
    1c98:	03e00008 	jr	ra
    1c9c:	00000000 	nop

00001ca0 <open_file_write>:


char open_file_write(File *file, const char *route) {
    1ca0:	3c1c0002 	lui	gp,0x2
    1ca4:	279c8be0 	addiu	gp,gp,-29728
    1ca8:	0399e021 	addu	gp,gp,t9
    1cac:	27bdffd0 	addiu	sp,sp,-48
    1cb0:	afbf002c 	sw	ra,44(sp)
    1cb4:	afbe0028 	sw	s8,40(sp)
    1cb8:	afb00024 	sw	s0,36(sp)
    1cbc:	03a0f025 	move	s8,sp
    1cc0:	afbc0010 	sw	gp,16(sp)
    1cc4:	afc40030 	sw	a0,48(s8)
    1cc8:	afc50034 	sw	a1,52(s8)
    if (route == NULL) {
    1ccc:	8fc20034 	lw	v0,52(s8)
    1cd0:	14400007 	bnez	v0,1cf0 <open_file_write+0x50>
    1cd4:	00000000 	nop
        file->file = stdout;
    1cd8:	8f8280b8 	lw	v0,-32584(gp)
    1cdc:	8c430000 	lw	v1,0(v0)
    1ce0:	8fc20030 	lw	v0,48(s8)
    1ce4:	ac430000 	sw	v1,0(v0)
    1ce8:	1000002b 	b	1d98 <open_file_write+0xf8>
    1cec:	00000000 	nop
    } else {
        file->file = fopen(route, "wb");
    1cf0:	8f828030 	lw	v0,-32720(gp)
    1cf4:	244526f0 	addiu	a1,v0,9968
    1cf8:	8fc40034 	lw	a0,52(s8)
    1cfc:	8f8280f4 	lw	v0,-32524(gp)
    1d00:	0040c825 	move	t9,v0
    1d04:	0320f809 	jalr	t9
    1d08:	00000000 	nop
    1d0c:	8fdc0010 	lw	gp,16(s8)
    1d10:	00401825 	move	v1,v0
    1d14:	8fc20030 	lw	v0,48(s8)
    1d18:	ac430000 	sw	v1,0(v0)
        if (file->file == NULL) {
    1d1c:	8fc20030 	lw	v0,48(s8)
    1d20:	8c420000 	lw	v0,0(v0)
    1d24:	1440001c 	bnez	v0,1d98 <open_file_write+0xf8>
    1d28:	00000000 	nop
            int err = errno;
    1d2c:	8f8280bc 	lw	v0,-32580(gp)
    1d30:	0040c825 	move	t9,v0
    1d34:	0320f809 	jalr	t9
    1d38:	00000000 	nop
    1d3c:	8fdc0010 	lw	gp,16(s8)
    1d40:	8c420000 	lw	v0,0(v0)
    1d44:	afc20018 	sw	v0,24(s8)
            fprintf(stderr, "Error al abrir archivo: %s\n", strerror(err));
    1d48:	8f8280f0 	lw	v0,-32528(gp)
    1d4c:	8c500000 	lw	s0,0(v0)
    1d50:	8fc40018 	lw	a0,24(s8)
    1d54:	8f8280dc 	lw	v0,-32548(gp)
    1d58:	0040c825 	move	t9,v0
    1d5c:	0320f809 	jalr	t9
    1d60:	00000000 	nop
    1d64:	8fdc0010 	lw	gp,16(s8)
    1d68:	00403025 	move	a2,v0
    1d6c:	8f828030 	lw	v0,-32720(gp)
    1d70:	244526d4 	addiu	a1,v0,9940
    1d74:	02002025 	move	a0,s0
    1d78:	8f8280c8 	lw	v0,-32568(gp)
    1d7c:	0040c825 	move	t9,v0
    1d80:	0320f809 	jalr	t9
    1d84:	00000000 	nop
    1d88:	8fdc0010 	lw	gp,16(s8)
            return ERROR;
    1d8c:	24020001 	li	v0,1
    1d90:	10000002 	b	1d9c <open_file_write+0xfc>
    1d94:	00000000 	nop
        }
    }
    return OK;
    1d98:	00001025 	move	v0,zero
}
    1d9c:	03c0e825 	move	sp,s8
    1da0:	8fbf002c 	lw	ra,44(sp)
    1da4:	8fbe0028 	lw	s8,40(sp)
    1da8:	8fb00024 	lw	s0,36(sp)
    1dac:	27bd0030 	addiu	sp,sp,48
    1db0:	03e00008 	jr	ra
    1db4:	00000000 	nop

00001db8 <close_file>:


int close_file(File *file) {
    1db8:	3c1c0002 	lui	gp,0x2
    1dbc:	279c8ac8 	addiu	gp,gp,-30008
    1dc0:	0399e021 	addu	gp,gp,t9
    1dc4:	27bdffd0 	addiu	sp,sp,-48
    1dc8:	afbf002c 	sw	ra,44(sp)
    1dcc:	afbe0028 	sw	s8,40(sp)
    1dd0:	afb00024 	sw	s0,36(sp)
    1dd4:	03a0f025 	move	s8,sp
    1dd8:	afbc0010 	sw	gp,16(sp)
    1ddc:	afc40030 	sw	a0,48(s8)
    if (file->file == stdin || file->file == stdout) return OK;
    1de0:	8fc20030 	lw	v0,48(s8)
    1de4:	8c430000 	lw	v1,0(v0)
    1de8:	8f8280c4 	lw	v0,-32572(gp)
    1dec:	8c420000 	lw	v0,0(v0)
    1df0:	10620007 	beq	v1,v0,1e10 <close_file+0x58>
    1df4:	00000000 	nop
    1df8:	8fc20030 	lw	v0,48(s8)
    1dfc:	8c430000 	lw	v1,0(v0)
    1e00:	8f8280b8 	lw	v0,-32584(gp)
    1e04:	8c420000 	lw	v0,0(v0)
    1e08:	14620004 	bne	v1,v0,1e1c <close_file+0x64>
    1e0c:	00000000 	nop
    1e10:	00001025 	move	v0,zero
    1e14:	1000002a 	b	1ec0 <close_file+0x108>
    1e18:	00000000 	nop

    int result = fclose(file->file);
    1e1c:	8fc20030 	lw	v0,48(s8)
    1e20:	8c420000 	lw	v0,0(v0)
    1e24:	00402025 	move	a0,v0
    1e28:	8f8280ac 	lw	v0,-32596(gp)
    1e2c:	0040c825 	move	t9,v0
    1e30:	0320f809 	jalr	t9
    1e34:	00000000 	nop
    1e38:	8fdc0010 	lw	gp,16(s8)
    1e3c:	afc20018 	sw	v0,24(s8)
    if (result == EOF) {
    1e40:	8fc30018 	lw	v1,24(s8)
    1e44:	2402ffff 	li	v0,-1
    1e48:	1462001c 	bne	v1,v0,1ebc <close_file+0x104>
    1e4c:	00000000 	nop
        int err = errno;
    1e50:	8f8280bc 	lw	v0,-32580(gp)
    1e54:	0040c825 	move	t9,v0
    1e58:	0320f809 	jalr	t9
    1e5c:	00000000 	nop
    1e60:	8fdc0010 	lw	gp,16(s8)
    1e64:	8c420000 	lw	v0,0(v0)
    1e68:	afc2001c 	sw	v0,28(s8)
        fprintf(stderr, "Error al cerrar archivo: %s\n", strerror(err));
    1e6c:	8f8280f0 	lw	v0,-32528(gp)
    1e70:	8c500000 	lw	s0,0(v0)
    1e74:	8fc4001c 	lw	a0,28(s8)
    1e78:	8f8280dc 	lw	v0,-32548(gp)
    1e7c:	0040c825 	move	t9,v0
    1e80:	0320f809 	jalr	t9
    1e84:	00000000 	nop
    1e88:	8fdc0010 	lw	gp,16(s8)
    1e8c:	00403025 	move	a2,v0
    1e90:	8f828030 	lw	v0,-32720(gp)
    1e94:	244526f4 	addiu	a1,v0,9972
    1e98:	02002025 	move	a0,s0
    1e9c:	8f8280c8 	lw	v0,-32568(gp)
    1ea0:	0040c825 	move	t9,v0
    1ea4:	0320f809 	jalr	t9
    1ea8:	00000000 	nop
    1eac:	8fdc0010 	lw	gp,16(s8)
        return ERROR;
    1eb0:	24020001 	li	v0,1
    1eb4:	10000002 	b	1ec0 <close_file+0x108>
    1eb8:	00000000 	nop
    }
    return OK;
    1ebc:	00001025 	move	v0,zero
}
    1ec0:	03c0e825 	move	sp,s8
    1ec4:	8fbf002c 	lw	ra,44(sp)
    1ec8:	8fbe0028 	lw	s8,40(sp)
    1ecc:	8fb00024 	lw	s0,36(sp)
    1ed0:	27bd0030 	addiu	sp,sp,48
    1ed4:	03e00008 	jr	ra
    1ed8:	00000000 	nop

00001edc <file_read>:


unsigned int file_read(File *file, unsigned char *buffer, unsigned int length) {
    1edc:	3c1c0002 	lui	gp,0x2
    1ee0:	279c89a4 	addiu	gp,gp,-30300
    1ee4:	0399e021 	addu	gp,gp,t9
    1ee8:	27bdffd8 	addiu	sp,sp,-40
    1eec:	afbf0024 	sw	ra,36(sp)
    1ef0:	afbe0020 	sw	s8,32(sp)
    1ef4:	03a0f025 	move	s8,sp
    1ef8:	afbc0010 	sw	gp,16(sp)
    1efc:	afc40028 	sw	a0,40(s8)
    1f00:	afc5002c 	sw	a1,44(s8)
    1f04:	afc60030 	sw	a2,48(s8)
    unsigned int result = 0;
    1f08:	afc00018 	sw	zero,24(s8)
    if (!file_eof(file)) {
    1f0c:	8fc40028 	lw	a0,40(s8)
    1f10:	8f828058 	lw	v0,-32680(gp)
    1f14:	0040c825 	move	t9,v0
    1f18:	04110041 	bal	2020 <file_eof>
    1f1c:	00000000 	nop
    1f20:	8fdc0010 	lw	gp,16(s8)
    1f24:	1440001a 	bnez	v0,1f90 <file_read+0xb4>
    1f28:	00000000 	nop
        result = (unsigned int) fread(buffer, sizeof(char), length, file->file);
    1f2c:	8fc20028 	lw	v0,40(s8)
    1f30:	8c420000 	lw	v0,0(v0)
    1f34:	00403825 	move	a3,v0
    1f38:	8fc60030 	lw	a2,48(s8)
    1f3c:	24050001 	li	a1,1
    1f40:	8fc4002c 	lw	a0,44(s8)
    1f44:	8f8280e4 	lw	v0,-32540(gp)
    1f48:	0040c825 	move	t9,v0
    1f4c:	0320f809 	jalr	t9
    1f50:	00000000 	nop
    1f54:	8fdc0010 	lw	gp,16(s8)
    1f58:	afc20018 	sw	v0,24(s8)
        if (feof(file->file)) {
    1f5c:	8fc20028 	lw	v0,40(s8)
    1f60:	8c420000 	lw	v0,0(v0)
    1f64:	00402025 	move	a0,v0
    1f68:	8f8280d4 	lw	v0,-32556(gp)
    1f6c:	0040c825 	move	t9,v0
    1f70:	0320f809 	jalr	t9
    1f74:	00000000 	nop
    1f78:	8fdc0010 	lw	gp,16(s8)
    1f7c:	10400004 	beqz	v0,1f90 <file_read+0xb4>
    1f80:	00000000 	nop
            file->eof = 1;
    1f84:	8fc20028 	lw	v0,40(s8)
    1f88:	24030001 	li	v1,1
    1f8c:	a0430004 	sb	v1,4(v0)
        }
    }

    return result;
    1f90:	8fc20018 	lw	v0,24(s8)
}
    1f94:	03c0e825 	move	sp,s8
    1f98:	8fbf0024 	lw	ra,36(sp)
    1f9c:	8fbe0020 	lw	s8,32(sp)
    1fa0:	27bd0028 	addiu	sp,sp,40
    1fa4:	03e00008 	jr	ra
    1fa8:	00000000 	nop

00001fac <file_write>:


void file_write(File *file, unsigned char *buffer, unsigned int length) {
    1fac:	3c1c0002 	lui	gp,0x2
    1fb0:	279c88d4 	addiu	gp,gp,-30508
    1fb4:	0399e021 	addu	gp,gp,t9
    1fb8:	27bdffe0 	addiu	sp,sp,-32
    1fbc:	afbf001c 	sw	ra,28(sp)
    1fc0:	afbe0018 	sw	s8,24(sp)
    1fc4:	03a0f025 	move	s8,sp
    1fc8:	afbc0010 	sw	gp,16(sp)
    1fcc:	afc40020 	sw	a0,32(s8)
    1fd0:	afc50024 	sw	a1,36(s8)
    1fd4:	afc60028 	sw	a2,40(s8)
    fwrite(buffer, sizeof(char), length, file->file);
    1fd8:	8fc20020 	lw	v0,32(s8)
    1fdc:	8c420000 	lw	v0,0(v0)
    1fe0:	00403825 	move	a3,v0
    1fe4:	8fc60028 	lw	a2,40(s8)
    1fe8:	24050001 	li	a1,1
    1fec:	8fc40024 	lw	a0,36(s8)
    1ff0:	8f8280e8 	lw	v0,-32536(gp)
    1ff4:	0040c825 	move	t9,v0
    1ff8:	0320f809 	jalr	t9
    1ffc:	00000000 	nop
    2000:	8fdc0010 	lw	gp,16(s8)
}
    2004:	00000000 	nop
    2008:	03c0e825 	move	sp,s8
    200c:	8fbf001c 	lw	ra,28(sp)
    2010:	8fbe0018 	lw	s8,24(sp)
    2014:	27bd0020 	addiu	sp,sp,32
    2018:	03e00008 	jr	ra
    201c:	00000000 	nop

00002020 <file_eof>:


int file_eof(File *file) {
    2020:	27bdfff8 	addiu	sp,sp,-8
    2024:	afbe0004 	sw	s8,4(sp)
    2028:	03a0f025 	move	s8,sp
    202c:	afc40008 	sw	a0,8(s8)
    return file->eof;
    2030:	8fc20008 	lw	v0,8(s8)
    2034:	80420004 	lb	v0,4(v0)
}
    2038:	03c0e825 	move	sp,s8
    203c:	8fbe0004 	lw	s8,4(sp)
    2040:	27bd0008 	addiu	sp,sp,8
    2044:	03e00008 	jr	ra
    2048:	00000000 	nop
    204c:	00000000 	nop

00002050 <main>:
#include <stddef.h>
#include <getopt.h>
#include "constants.h"
#include "command.h"

int main(int argc, char **argv) {
    2050:	3c1c0002 	lui	gp,0x2
    2054:	279c8830 	addiu	gp,gp,-30672
    2058:	0399e021 	addu	gp,gp,t9
    205c:	27bdff58 	addiu	sp,sp,-168
    2060:	afbf00a4 	sw	ra,164(sp)
    2064:	afbe00a0 	sw	s8,160(sp)
    2068:	03a0f025 	move	s8,sp
    206c:	afbc0018 	sw	gp,24(sp)
    2070:	afc400a8 	sw	a0,168(s8)
    2074:	afc500ac 	sw	a1,172(s8)
    struct option arg_long[] = {
    2078:	8f828028 	lw	v0,-32728(gp)
    207c:	27c30028 	addiu	v1,s8,40
    2080:	24422830 	addiu	v0,v0,10288
    2084:	24040050 	li	a0,80
    2088:	00803025 	move	a2,a0
    208c:	00402825 	move	a1,v0
    2090:	00602025 	move	a0,v1
    2094:	8f8280ec 	lw	v0,-32532(gp)
    2098:	0040c825 	move	t9,v0
    209c:	0320f809 	jalr	t9
    20a0:	00000000 	nop
    20a4:	8fdc0018 	lw	gp,24(s8)
            {"decode",  no_argument, NULL, 'd'},
            {"help",    no_argument, NULL, 'h'},
            {"version", no_argument, NULL, 'V'},
    };

    char arg_opt_str[] = "i:o:dhV";
    20a8:	8f828030 	lw	v0,-32720(gp)
    20ac:	8c432748 	lw	v1,10056(v0)
    20b0:	24422748 	addiu	v0,v0,10056
    20b4:	8c420004 	lw	v0,4(v0)
    20b8:	afc30078 	sw	v1,120(s8)
    20bc:	afc2007c 	sw	v0,124(s8)
    int arg_opt;
    int arg_opt_idx = 0;
    20c0:	afc00080 	sw	zero,128(s8)

    command_options_st cmd_options;
    // Default Values: encode, stdin as input, stdout as output, stderr as error output
    command_create(&cmd_options);
    20c4:	27c20084 	addiu	v0,s8,132
    20c8:	00402025 	move	a0,v0
    20cc:	8f828070 	lw	v0,-32656(gp)
    20d0:	0040c825 	move	t9,v0
    20d4:	0411fb16 	bal	d30 <command_create>
    20d8:	00000000 	nop
    20dc:	8fdc0018 	lw	gp,24(s8)

    char should_process = TRUE;
    20e0:	24020001 	li	v0,1
    20e4:	a3c20020 	sb	v0,32(s8)
    while ((arg_opt = getopt_long(argc, argv, arg_opt_str, arg_long, &arg_opt_idx)) != -1
    20e8:	10000048 	b	220c <main+0x1bc>
    20ec:	00000000 	nop
           &&
           should_process) {

        switch (arg_opt) {
    20f0:	8fc20024 	lw	v0,36(s8)
    20f4:	2442ffaa 	addiu	v0,v0,-86
    20f8:	2c43001a 	sltiu	v1,v0,26
    20fc:	1060003a 	beqz	v1,21e8 <main+0x198>
    2100:	00000000 	nop
    2104:	00021880 	sll	v1,v0,0x2
    2108:	8f828030 	lw	v0,-32720(gp)
    210c:	24422750 	addiu	v0,v0,10064
    2110:	00621021 	addu	v0,v1,v0
    2114:	8c420000 	lw	v0,0(v0)
    2118:	005c1021 	addu	v0,v0,gp
    211c:	00400008 	jr	v0
    2120:	00000000 	nop
            case 'i': {
                // Set Input File
                set_input_file(&cmd_options, optarg);
    2124:	8f8280a4 	lw	v0,-32604(gp)
    2128:	8c430000 	lw	v1,0(v0)
    212c:	27c20084 	addiu	v0,s8,132
    2130:	00602825 	move	a1,v1
    2134:	00402025 	move	a0,v0
    2138:	8f828074 	lw	v0,-32652(gp)
    213c:	0040c825 	move	t9,v0
    2140:	0411fb23 	bal	dd0 <set_input_file>
    2144:	00000000 	nop
    2148:	8fdc0018 	lw	gp,24(s8)
            }
                break;
    214c:	1000002f 	b	220c <main+0x1bc>
    2150:	00000000 	nop
            case 'o': {
                // Set Output File
                set_output_file(&cmd_options, optarg);
    2154:	8f8280a4 	lw	v0,-32604(gp)
    2158:	8c430000 	lw	v1,0(v0)
    215c:	27c20084 	addiu	v0,s8,132
    2160:	00602825 	move	a1,v1
    2164:	00402025 	move	a0,v0
    2168:	8f828078 	lw	v0,-32648(gp)
    216c:	0040c825 	move	t9,v0
    2170:	0411fb25 	bal	e08 <set_output_file>
    2174:	00000000 	nop
    2178:	8fdc0018 	lw	gp,24(s8)
            }
                break;
    217c:	10000023 	b	220c <main+0x1bc>
    2180:	00000000 	nop
            case 'h': {
                // Show Options
                show_help();
    2184:	8f828038 	lw	v0,-32712(gp)
    2188:	0040c825 	move	t9,v0
    218c:	0411fbb2 	bal	1058 <show_help>
    2190:	00000000 	nop
    2194:	8fdc0018 	lw	gp,24(s8)
                should_process = FALSE;
    2198:	a3c00020 	sb	zero,32(s8)
            }
                break;
    219c:	1000001b 	b	220c <main+0x1bc>
    21a0:	00000000 	nop
            case 'V': {
                // Show Version
                show_version();
    21a4:	8f82807c 	lw	v0,-32644(gp)
    21a8:	0040c825 	move	t9,v0
    21ac:	0411fbf8 	bal	1190 <show_version>
    21b0:	00000000 	nop
    21b4:	8fdc0018 	lw	gp,24(s8)
                should_process = FALSE;
    21b8:	a3c00020 	sb	zero,32(s8)
            }
                break;
    21bc:	10000013 	b	220c <main+0x1bc>
    21c0:	00000000 	nop
            case 'd': {
                // Set Decode option
                set_decode(&cmd_options);
    21c4:	27c20084 	addiu	v0,s8,132
    21c8:	00402025 	move	a0,v0
    21cc:	8f828080 	lw	v0,-32640(gp)
    21d0:	0040c825 	move	t9,v0
    21d4:	0411fb27 	bal	e74 <set_decode>
    21d8:	00000000 	nop
    21dc:	8fdc0018 	lw	gp,24(s8)
            }
                break;
    21e0:	1000000a 	b	220c <main+0x1bc>
    21e4:	00000000 	nop
            default: {
                // Set Error Condition = INVALID_ARGUMENT
                // [Gonzalo: We analize only valid arguments values here: i, o, h, V, d]
                set_error(&cmd_options, INVALID_ARGUMENT);
    21e8:	27c20084 	addiu	v0,s8,132
    21ec:	2405ffff 	li	a1,-1
    21f0:	00402025 	move	a0,v0
    21f4:	8f82805c 	lw	v0,-32676(gp)
    21f8:	0040c825 	move	t9,v0
    21fc:	0411fb29 	bal	ea4 <set_error>
    2200:	00000000 	nop
    2204:	8fdc0018 	lw	gp,24(s8)
            }
                break;
    2208:	00000000 	nop
    while ((arg_opt = getopt_long(argc, argv, arg_opt_str, arg_long, &arg_opt_idx)) != -1
    220c:	27c40028 	addiu	a0,s8,40
    2210:	27c30078 	addiu	v1,s8,120
    2214:	27c20080 	addiu	v0,s8,128
    2218:	afa20010 	sw	v0,16(sp)
    221c:	00803825 	move	a3,a0
    2220:	00603025 	move	a2,v1
    2224:	8fc500ac 	lw	a1,172(s8)
    2228:	8fc400a8 	lw	a0,168(s8)
    222c:	8f8280d0 	lw	v0,-32560(gp)
    2230:	0040c825 	move	t9,v0
    2234:	0320f809 	jalr	t9
    2238:	00000000 	nop
    223c:	8fdc0018 	lw	gp,24(s8)
    2240:	afc20024 	sw	v0,36(s8)
    2244:	8fc30024 	lw	v1,36(s8)
    2248:	2402ffff 	li	v0,-1
    224c:	10620004 	beq	v1,v0,2260 <main+0x210>
    2250:	00000000 	nop
           &&
    2254:	83c20020 	lb	v0,32(s8)
    2258:	1440ffa5 	bnez	v0,20f0 <main+0xa0>
    225c:	00000000 	nop
        }
    }

    // Help or Version arguments, no processing
    if (!should_process) {
    2260:	83c20020 	lb	v0,32(s8)
    2264:	14400004 	bnez	v0,2278 <main+0x228>
    2268:	00000000 	nop
        return 0;
    226c:	00001025 	move	v0,zero
    2270:	1000001b 	b	22e0 <main+0x290>
    2274:	00000000 	nop
    }

    // Processs Encode/Decode if no errors found, otherwise show error message
    if (has_errors(&cmd_options)) {
    2278:	27c20084 	addiu	v0,s8,132
    227c:	00402025 	move	a0,v0
    2280:	8f828068 	lw	v0,-32664(gp)
    2284:	0040c825 	move	t9,v0
    2288:	0411fb15 	bal	ee0 <has_errors>
    228c:	00000000 	nop
    2290:	8fdc0018 	lw	gp,24(s8)
    2294:	1040000b 	beqz	v0,22c4 <main+0x274>
    2298:	00000000 	nop
        show_error(&cmd_options);
    229c:	27c20084 	addiu	v0,s8,132
    22a0:	00402025 	move	a0,v0
    22a4:	8f828060 	lw	v0,-32672(gp)
    22a8:	0040c825 	move	t9,v0
    22ac:	0411fb1d 	bal	f24 <show_error>
    22b0:	00000000 	nop
    22b4:	8fdc0018 	lw	gp,24(s8)
        return 1;
    22b8:	24020001 	li	v0,1
    22bc:	10000008 	b	22e0 <main+0x290>
    22c0:	00000000 	nop
    }

    return process(&cmd_options);
    22c4:	27c20084 	addiu	v0,s8,132
    22c8:	00402025 	move	a0,v0
    22cc:	8f828084 	lw	v0,-32636(gp)
    22d0:	0040c825 	move	t9,v0
    22d4:	0411fbc4 	bal	11e8 <process>
    22d8:	00000000 	nop
    22dc:	8fdc0018 	lw	gp,24(s8)
}
    22e0:	03c0e825 	move	sp,s8
    22e4:	8fbf00a4 	lw	ra,164(sp)
    22e8:	8fbe00a0 	lw	s8,160(sp)
    22ec:	27bd00a8 	addiu	sp,sp,168
    22f0:	03e00008 	jr	ra
    22f4:	00000000 	nop
	...

00002300 <__libc_csu_init>:
    2300:	3c1c0002 	lui	gp,0x2
    2304:	279c8580 	addiu	gp,gp,-31360
    2308:	0399e021 	addu	gp,gp,t9
    230c:	27bdffc8 	addiu	sp,sp,-56
    2310:	8f998088 	lw	t9,-32632(gp)
    2314:	afbc0010 	sw	gp,16(sp)
    2318:	afb50030 	sw	s5,48(sp)
    231c:	00c0a825 	move	s5,a2
    2320:	afb4002c 	sw	s4,44(sp)
    2324:	00a0a025 	move	s4,a1
    2328:	afb30028 	sw	s3,40(sp)
    232c:	00809825 	move	s3,a0
    2330:	afb20024 	sw	s2,36(sp)
    2334:	afb0001c 	sw	s0,28(sp)
    2338:	afbf0034 	sw	ra,52(sp)
    233c:	0411f9fa 	bal	b28 <_init>
    2340:	afb10020 	sw	s1,32(sp)
    2344:	8fbc0010 	lw	gp,16(sp)
    2348:	8f90808c 	lw	s0,-32628(gp)
    234c:	8f928090 	lw	s2,-32624(gp)
    2350:	02509023 	subu	s2,s2,s0
    2354:	00129083 	sra	s2,s2,0x2
    2358:	12400009 	beqz	s2,2380 <__libc_csu_init+0x80>
    235c:	00008825 	move	s1,zero
    2360:	8e190000 	lw	t9,0(s0)
    2364:	26310001 	addiu	s1,s1,1
    2368:	02a03025 	move	a2,s5
    236c:	02802825 	move	a1,s4
    2370:	0320f809 	jalr	t9
    2374:	02602025 	move	a0,s3
    2378:	1651fff9 	bne	s2,s1,2360 <__libc_csu_init+0x60>
    237c:	26100004 	addiu	s0,s0,4
    2380:	8fbf0034 	lw	ra,52(sp)
    2384:	8fb50030 	lw	s5,48(sp)
    2388:	8fb4002c 	lw	s4,44(sp)
    238c:	8fb30028 	lw	s3,40(sp)
    2390:	8fb20024 	lw	s2,36(sp)
    2394:	8fb10020 	lw	s1,32(sp)
    2398:	8fb0001c 	lw	s0,28(sp)
    239c:	03e00008 	jr	ra
    23a0:	27bd0038 	addiu	sp,sp,56

000023a4 <__libc_csu_fini>:
    23a4:	03e00008 	jr	ra
    23a8:	00000000 	nop
    23ac:	00000000 	nop

Disassembly of section .MIPS.stubs:

000023b0 <_MIPS_STUBS_>:
    23b0:	8f998010 	lw	t9,-32752(gp)
    23b4:	03e07825 	move	t7,ra
    23b8:	0320f809 	jalr	t9
    23bc:	24180033 	li	t8,51
    23c0:	8f998010 	lw	t9,-32752(gp)
    23c4:	03e07825 	move	t7,ra
    23c8:	0320f809 	jalr	t9
    23cc:	24180031 	li	t8,49
    23d0:	8f998010 	lw	t9,-32752(gp)
    23d4:	03e07825 	move	t7,ra
    23d8:	0320f809 	jalr	t9
    23dc:	24180030 	li	t8,48
    23e0:	8f998010 	lw	t9,-32752(gp)
    23e4:	03e07825 	move	t7,ra
    23e8:	0320f809 	jalr	t9
    23ec:	2418002f 	li	t8,47
    23f0:	8f998010 	lw	t9,-32752(gp)
    23f4:	03e07825 	move	t7,ra
    23f8:	0320f809 	jalr	t9
    23fc:	2418002e 	li	t8,46
    2400:	8f998010 	lw	t9,-32752(gp)
    2404:	03e07825 	move	t7,ra
    2408:	0320f809 	jalr	t9
    240c:	2418002d 	li	t8,45
    2410:	8f998010 	lw	t9,-32752(gp)
    2414:	03e07825 	move	t7,ra
    2418:	0320f809 	jalr	t9
    241c:	2418002b 	li	t8,43
    2420:	8f998010 	lw	t9,-32752(gp)
    2424:	03e07825 	move	t7,ra
    2428:	0320f809 	jalr	t9
    242c:	2418002a 	li	t8,42
    2430:	8f998010 	lw	t9,-32752(gp)
    2434:	03e07825 	move	t7,ra
    2438:	0320f809 	jalr	t9
    243c:	24180029 	li	t8,41
    2440:	8f998010 	lw	t9,-32752(gp)
    2444:	03e07825 	move	t7,ra
    2448:	0320f809 	jalr	t9
    244c:	24180028 	li	t8,40
    2450:	8f998010 	lw	t9,-32752(gp)
    2454:	03e07825 	move	t7,ra
    2458:	0320f809 	jalr	t9
    245c:	24180026 	li	t8,38
    2460:	8f998010 	lw	t9,-32752(gp)
    2464:	03e07825 	move	t7,ra
    2468:	0320f809 	jalr	t9
    246c:	24180025 	li	t8,37
    2470:	8f998010 	lw	t9,-32752(gp)
    2474:	03e07825 	move	t7,ra
    2478:	0320f809 	jalr	t9
    247c:	24180023 	li	t8,35
    2480:	8f998010 	lw	t9,-32752(gp)
    2484:	03e07825 	move	t7,ra
    2488:	0320f809 	jalr	t9
    248c:	24180021 	li	t8,33
    2490:	8f998010 	lw	t9,-32752(gp)
    2494:	03e07825 	move	t7,ra
    2498:	0320f809 	jalr	t9
    249c:	2418001e 	li	t8,30
	...

Disassembly of section .fini:

000024b0 <_fini>:
    24b0:	3c1c0002 	lui	gp,0x2
    24b4:	279c83d0 	addiu	gp,gp,-31792
    24b8:	0399e021 	addu	gp,gp,t9
    24bc:	27bdffe0 	addiu	sp,sp,-32
    24c0:	afbc0010 	sw	gp,16(sp)
    24c4:	afbf001c 	sw	ra,28(sp)
    24c8:	8fbf001c 	lw	ra,28(sp)
    24cc:	03e00008 	jr	ra
    24d0:	27bd0020 	addiu	sp,sp,32
