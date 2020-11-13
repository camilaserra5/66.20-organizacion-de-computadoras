	.file	1 "euclid.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.abicalls
	.text
	.align	2
	.globl	mcm
	.set	nomips16
	.set	nomicromips
	.ent	mcm
	.type	mcm, @function
mcm:
	.frame	$fp,48,$31		# vars= 16, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	nomacro
	addiu	$sp,$sp,-48
	sw	$31,44($sp)
	sw	$fp,40($sp)
	move	$fp,$sp
	.cprestore	16
	sw	$4,48($fp)
	sw	$5,52($fp)
	sw	$0,32($fp)
	sw	$0,36($fp)
	lw	$2,48($fp)
	sw	$2,24($fp)
	lw	$2,52($fp)
	sw	$2,28($fp)
	lw	$3,52($fp)
	lw	$2,48($fp)
	sltu	$2,$2,$3
	beq	$2,$0,$L2
	nop

	lw	$2,52($fp)
	sw	$2,24($fp)
	lw	$2,48($fp)
	sw	$2,28($fp)
$L2:
	lw	$5,28($fp)
	lw	$4,24($fp)
	lw	$2,%got(mcd)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,mcd
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$2,36($fp)
	lw	$3,24($fp)
	lw	$2,36($fp)
	teq	$2,$0,7
	divu	$0,$3,$2
	mfhi	$2
	mflo	$3
	lw	$2,28($fp)
	mul	$2,$3,$2
	sw	$2,32($fp)
	lw	$2,32($fp)
	move	$sp,$fp
	lw	$31,44($sp)
	lw	$fp,40($sp)
	addiu	$sp,$sp,48
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	mcm
	.size	mcm, .-mcm
	.align	2
	.globl	mcd
	.set	nomips16
	.set	nomicromips
	.ent	mcd
	.type	mcd, @function
mcd:
	.frame	$fp,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$fp,28($sp)
	move	$fp,$sp
	sw	$4,32($fp)
	sw	$5,36($fp)
	lw	$2,32($fp)
	bne	$2,$0,$L5
	nop

	lw	$2,32($fp)
	b	$L6
	nop

$L5:
	lw	$2,36($fp)
	bne	$2,$0,$L7
	nop

	lw	$2,36($fp)
	b	$L6
	nop

$L7:
	lw	$3,32($fp)
	lw	$2,36($fp)
	bne	$3,$2,$L8
	nop

	lw	$2,32($fp)
	b	$L6
	nop

$L8:
	lw	$2,32($fp)
	sw	$2,8($fp)
	lw	$2,36($fp)
	sw	$2,12($fp)
	sw	$0,16($fp)
	lw	$3,36($fp)
	lw	$2,32($fp)
	sltu	$2,$2,$3
	beq	$2,$0,$L9
	nop

	lw	$2,36($fp)
	sw	$2,8($fp)
	lw	$2,32($fp)
	sw	$2,12($fp)
$L9:
	lw	$2,12($fp)
	sw	$2,16($fp)
	lw	$3,8($fp)
	lw	$2,12($fp)
	teq	$2,$0,7
	divu	$0,$3,$2
	mfhi	$2
	sw	$2,12($fp)
	lw	$2,16($fp)
	sw	$2,8($fp)
	lw	$2,12($fp)
	bne	$2,$0,$L9
	nop

	lw	$2,16($fp)
$L6:
	move	$sp,$fp
	lw	$fp,28($sp)
	addiu	$sp,$sp,32
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	mcd
	.size	mcd, .-mcd
	.ident	"GCC: (Debian 6.3.0-18+deb9u1) 6.3.0 20170516"
