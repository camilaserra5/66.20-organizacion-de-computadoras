	.file	1 "mcd.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.abicalls
	.text
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
	bne	$2,$0,$L2
	nop

	lw	$2,32($fp)
	b	$L3
	nop

$L2:
	lw	$2,36($fp)
	bne	$2,$0,$L4
	nop

	lw	$2,36($fp)
	b	$L3
	nop

$L4:
	lw	$3,32($fp)
	lw	$2,36($fp)
	bne	$3,$2,$L5
	nop

	lw	$2,32($fp)
	b	$L3
	nop

$L5:
	lw	$2,32($fp)
	sw	$2,8($fp)
	lw	$2,36($fp)
	sw	$2,12($fp)
	sw	$0,16($fp)
	lw	$3,36($fp)
	lw	$2,32($fp)
	sltu	$2,$2,$3
	beq	$2,$0,$L6
	nop

	lw	$2,36($fp)
	sw	$2,8($fp)
	lw	$2,32($fp)
	sw	$2,12($fp)
$L6:
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
	bne	$2,$0,$L6
	nop

	lw	$2,16($fp)
$L3:
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
