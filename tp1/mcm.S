#include <sys/regdef.h>

.text
.abicalls
.align  2
.globl  mcm
.ent  mcm

# Pipeline magic.
.set        noreorder
.cpload     t9
.set        reorder

/* STACK DESIGN - SIZE: 48
      ==========
  52  |   a1   |
      ---------- ABA CALLER (8)
  48  |   a0   |
      ==========
  44  | PADDING|
      ----------
  40  |   ra   |
      ---------- SRA (16)
  36  |   gp   |
      ----------
  32  |   fp   |
      ==========
  28  |   b    |
      ----------
  24  |   a    |
      ---------- LTA(16)
  20  | mcd_v  |
      ----------
  16  |  mcm_v |
      ==========
  12  |   a3   |
      ----------
  8   |   a2   |
      ---------- ABA CALLEE(16)
  4   |   a1   |
      ----------
  0   |   a0   |
      ==========
*/


#  Argument-building area callee (ABA callee).
#define A0_CALLEE 0
#define A1_CALLEE 4
#define A2_CALLEE 8
#define A3_CALLEE 12

# Local and Temporary Area (LTA).
#define MCM_V 16
#define MCD_V 20
#define A_LTA 24
#define B_LTA 28

# Saved-registers area (SRA).
#define FP 32
#define GP 36
#define RA 40
#define PADDING 44

#  Argument-building area caller (ABA caller).
#define M_A0 48
#define N_A1 52


#define SIZE_SF PADDING + 4


# Debugger metadata.
  .frame  fp,SIZE_SF,ra
  
# Allocate memory for the stack. 
subu  sp,sp,SIZE_SF
  
# SRA beginning area.
.cprestore GP

# Save the callee-saved registers used by the caller in the SRA.
sw  fp,FP(sp)
sw  gp,GP(sp)
sw  ra,RA(sp)
# We must set the $fp to the beginning of the stack.
move fp,sp

# Now we save the arguments that were loaded by the caller
# in the area reserved by the caller.
sw  a0,M_A0(fp)
sw  a1,N_A1(fp)

// mcm(unsigned int m, unsigned int n) 
mcm:
	li       t0, 0
	sw	t0,MCM_V(fp)
	li       t1, 0
	sw	t1,MCD_V(fp)
	lw	t0,M_A0(fp)
	sw	t0,A_LTA(fp)    # a = m
	lw	t1,N_A1(fp)
	sw	t1,B_LTA(fp)   # b = n
	lw	t3,N_A1(fp)
	lw	t4,M_A0(fp)
	sltu	t4,t4,t3       # m < n
	beqz	t4,m_high_n

	lw	t2,N_A1(fp) 
	sw	t2,A_LTA(fp)   # a = n
	lw	t3,M_A0(fp)
	sw	t3,B_LTA(fp)   # b = m
m_high_n:
	lw	a1,B_LTA(fp)
	lw	a0,A_LTA(fp)
	jal	mcd

	move	t0, v0        # t0 = mcd(a, b)
	sw	t0,MCD_V(fp)  # mcd_v = mcd(a, b)
	lw	t1,A_LTA(fp)  # t1 = a
	lw	t2,MCD_V(fp)
	divu	t0,t1,t2      # div: a / mcd_v 
	mfhi	t5
	mflo	t3
	lw	t4,B_LTA(fp)
	mul	t4,t3,t4      # ( a / mcd_v ) * b
	sw	t4,MCM_V(fp)  # mcm_v = ( a / mcd_v ) * b
	move 	v0,t4         # Return mcm_v value

stack_unwinding:

	lw        ra, RA(sp)
	lw        fp, FP(sp)
	lw        gp, GP(sp)
	addu      sp, sp, SIZE_SF
	jr        ra

.end        mcm
