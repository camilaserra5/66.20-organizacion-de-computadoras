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

// _mcm_rec(unsigned int m, unsigned int n)
_mcm_rec:
	
	# case if (m == 0)
	lw	t0,M_A0(fp)
	bnez	t0,mcm_rec_recursive

	# return n
	lw	v0,N_A1(fp)
	b	stack_unwinding

mcm_rec_recursive:
	// return _mcm_rec(n % m, m);
	lw	t0,M_A0(fp)
	lw	t1,N_A0(fp)
	div	t1,t0
	mfhi	t2           # t2 = n % m
	move	a1,t0
	move	a0,t2
	jal	_mcm_rec


// mcm(unsigned int m, unsigned int n) 
// return (m / _mcm_rec(m, n)) * n;
mcm:
	lw	t0,M_A0(fp) # t0 = m
	lw	t1,N_A0(fp) # t1 = n
	move 	a0,t0 	   # a0 = t0
	move 	a1,t1       # a1 = t1
	b	_mcm_rec
	
	move	t2,v0       # t2 =_mcm_rec(m, n)
	lw	t0,M_A0(fp) # t0 = m
	div	t0,t2       
	mfhi	t3
	mflo	t4 	   # t4 = m / _mcm_rec(m, n)
	lw	t0,N_A0(fp) # t0 = n
	mul	t0,t4,t0    # t0 = t4 * t0 
	move 	v0,t0       # Return mcm value
	b	stack_unwinding


stack_unwinding:
	lw        a1, (SIZE_SF + 4)(sp)
	lw        a0, (SIZE_SF)(sp)
  
	lw        ra, RA(sp)
	lw        fp, FP(sp)
	lw        gp, GP(sp)
	addu      sp, sp, SIZE_SF
	jr        ra

.end        mcm

