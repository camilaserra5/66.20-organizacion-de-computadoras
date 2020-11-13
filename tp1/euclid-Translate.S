#include <sys/regdef.h>	
	
	.text	
	.abicalls
	.align	2
	.globl	mcm	
	.ent	mcm	
	
	# Pipeline magic
	.set	noreorder
	.cpload t9
	.set	reorder		# replace: .set nomacro
	
	/* STACK DESIGN - SIZE: 48
		========
	   52	|  a1	|
	   	--------  ABA CALLER (8)
	   48	|  a0	|
	   	========
	   	
	   	....
	   	
	*/   	
	
	# Argument-Building Area Calle (ABA Callee)
	#define A0_CALLEE 0
	#define A1_CALLEE 4
	#define A2_CALLEE 8
	#define A3_CALLEE 12
	
	# Local and Temporary Area (LTA)
	#define MCM_V 16
	#define MCD_V 20
	#define A_LTA 24
	#define B_LTA 28
	
	# Saved-Registers area (SRA)
	#define FP 32
	#define GP 36
	#define RA 40
	#define PADDING 44
	
	# Argument-Building Area Caller (ABA Caller)
	#define M_A0 48
	#define N_A1 52
	
	#define SIZE_SF PADDING + 4
	
	# Debugger metadata
	.frame	fp,SIZE_SF,ra		
	
	# Allocate memory for the stack
	subu    sp,sp,SIZE_F

	# SRA Beggining Area
	.cprestore	GP
	
	# Save the Callee-Saved Registers used by the Caller in the SRA
	sw	fp,FP(sp)
	sw	gp,GP(sp)
	sw	ra,RA(sp)
	# We must set the fp to the beginning of the stack
	move	fp,sp
	

	sw	a0,M_A0(fp)
	sw	a1,N_A1(fp)
	
mcm:		
	li	t0, 0
	sw	t0,MCM_V(fp)
	li	t1, 0
	sw	t1,MCD_V(fp)
	
	lw	t2,M_A0(fp)
	sw	t2,A_LTA(fp)	# a = m
	lw	t2,N_A1(fp)
	sw	t2,B_LTA(fp)	# b = n
	lw	t3,N_A1(fp)
	lw	t4,M_A0(fp)
	sltu	t4,t4,t3	# m < n
	beqz	t4,m_high_n
	nop

	lw	t2,N_A1(fp)
	sw	t2,A_LTA(fp)	# a = n
	lw	t3,M_A0(fp)
	sw	t3,B_LTA(fp)	# b = m
m_high_n:
	lw	a1,B_LTA(fp)
	lw	a0,A_LTA(fp)
	lw	t2,%got(mcd)($28)
	move	t9,t2
	.reloc	1f,R_MIPS_JALR,mcd
1:	jalr	t9
	nop

	lw	$28,MCD_V($fp)
	sw	$2,36($fp)
	lw	t1,A_LTA(fp)
	lw	t2,36(fp)
	teq	$2,$0,7
	divu	t0,t1,t2
	mfhi	t5
	mflo	t3
	lw	t4,B_LTA(fp)
	mul	t4,t3,t4
	sw	$2,32($fp)
	lw	$2,32($fp)
	move	$sp,$fp
	lw	ra,RA(sp)
	lw	fp,FP(sp)
	
	addiu	sp,sp,SIZE_SF
	jr	ra
	nop

	.set	macro
	.set	reorder
	.end	mcm
	.size	mcm, .-mcm
	
	.align	2
	.globl	mcd
	.ent	mcd

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
