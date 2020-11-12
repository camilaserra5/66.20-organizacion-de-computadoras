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

/* STACK DESIGN - SIZE: 24
      ===========
  28  |   a1    |
      ---------- ABA CALLER (8)
  24  |   a0    |
      ===========
  20  |   gp    |
      ----------  SRA(8)
  16  |   fp    |
      ===========
  12  |PADDING_0|
      ----------
  8   |  mcd_v  |
      ---------- LTA(16)
  4   |   b     |
      ----------
  0   |   a     |
      ===========
*/



# Local and Temporary Area (LTA).
#define TEMP_0 0
#define TEMP_1 4
#define TEMP_2 8
#define PADDING_0 12

# Saved-registers area (SRA).
#define FP 16
#define GP 20

#  Argument-building area caller (ABA caller).
#define M_A0 24
#define N_A1 28


#define SIZE_SF 24
  
# Allocate memory for the stack. 
subu  sp,sp,SIZE_SF
  
# SRA beginning area.
.cprestore GP

# Save the callee-saved registers used by the caller in the SRA.
sw  fp,FP(sp)
sw  gp,GP(sp)
# We must set the $fp to the beginning of the stack.
move fp,sp

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
	bne	t1,t0,next_line

	# return m;
	lw	v0,M_A0(fp)
	b	stack_unwinding
	nop

next_line:
	lw	t0,M_A0(fp)    # t0 = m
	sw	t0,TEMP_0(fp)  # a  = m
	lw	t1,N_A1(fp)    # t1 = n
	sw	t1,TEMP_1(fp)  # b = n
	lw	t0,M_A0(fp)
	lw	t1,N_A1(fp)
	sltu	t0,t0,t1   # m < n 
	beqz	t0,cont_do


	lw	t2,N_A1(fp) 
	sw	t2,TEMP_0(fp)   # a = n
	lw	t3,M_A0(fp)
	sw	t3,TEMP_1(fp)   # b = m
cont_do:
	lw	t0,TEMP_1(fp)
	sw	t0,TEMP_2(fp)   # mcd_v = b
	lw	t1,TEMP_0(fp)   # t1 = a
	lw	t2,TEMP_1(fp)   # t2 = b
	divu	t0,t1,t2
	mfhi	t3
	sw	t3,TEMP_1(fp)  # b = a % b
	lw	t0,TEMP_2(fp)    
	sw	t0,TEMP_0(fp)  # a = mcd_v
	lw	t4,TEMP_1(fp)
	bnez	t4,cont_do     # continue loop with b != 0

	lw	t0,TEMP_2(fp)
	move     v0,t0
stack_unwinding:

	lw        fp, FP(sp)
	lw        gp, GP(sp)
	addu      sp, sp, SIZE_SF
	jr        ra

.end        mcd
