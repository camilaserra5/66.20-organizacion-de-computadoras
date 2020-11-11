#include <sys/regdef.h>

.text
.abicalls
.align  2
.globl  mcd
.ent  mcd

# Pipeline magic.
.set        noreorder
.cpload     t9
.set        reorder

/* STACK DESIGN - SIZE: 32
      ==========
  36  |   a1   |
      ---------- ABA CALLER (8)
  32  |   a0   |
      ==========
  28  | PADDING|
      ----------
  24  |   ra   |
      ---------- SRA (16)
  20  |   gp   |
      ----------
  16  |   fp   |
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

# Saved-registers area (SRA).
#define FP 16
#define GP 20
#define RA 24
#define PADDING 28

#  Argument-building area caller (ABA caller).
#define M_A0 32
#define N_A1 36


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
# We must set the $fp to the beginning of the stack.
move $fp,sp

# Now we save the arguments that were loaded by the caller
# in the area reserved by the caller.
sw  a0,M_A0(fp)
sw  a1,N_A1(fp)

// mcd(unsigned int m, unsigned int n) 
mcd:
	# case if (m == 0)
	lw	t0,M_A0(fp)
	bnez	t0,case_n_0

	# return m;
	lw	v0,M_A0(fp)
	b	stack_unwinding

case_n_0:
	# case  if (n == 0)
	lw	t0,N_A1(fp)
	bnez	t0,case_equal

	# return n;
	lw	v0,N_A1(fp)
	b	stack_unwinding

case_equal:
	# case  if (m == n)
	lw	t0,M_A0(fp)
	lw	t1,N_A1(fp)
	bne	t1,t0,m_high_n

	# return m;
	lw	v0,M_A0(fp)
	b	stack_unwinding

m_high_n:
	# case if (m > n)
	lw	t0,M_A0(fp)
	lw	t1,N_A1(fp)
	slt	t0,t0,t1
	beqz	v0,other_case
	
	# return _mcd(m - n, n);
	lw	t0,M_A0(fp)
	lw	t1,N_A1(fp)
	subu	t0,t0,t1
	lw	a1,N_A1(fp)
	move	a0,t0
	jal      mcd

other_case:	
	# return _mcd(m, n - m);
	lw	t0,M_A1(fp)
	lw	t1,N_A1(fp)
	subu	t0,t1,t0
	move	a0,t0
	move	a1,t1
	jal      mcd
	
stack_unwinding:
	lw        a1, (SIZE_SF + 4)(sp)
	lw        a0, (SIZE_SF)(sp)
  
	lw        ra, RA(sp)
	lw        fp, FP(sp)
	lw        gp, GP(sp)
	addu      sp, sp, SIZE_SF
	jr        ra

.end        mcd
	
