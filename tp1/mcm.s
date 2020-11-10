0000112c <_mcm>:

// mínimo común múltiplo
int _mcm(int m, int n) {
lui	gp,0x2
addiu	gp,gp,-28860
addu	gp,gp,t9
addiu	sp,sp,-32
sw	ra,28(sp)
sw	s8,24(sp)
move	s8,sp
sw	gp,16(sp)
sw	a0,32(s8)
sw	a1,36(s8)
return (m / _mcm_rec(m, n)) * n;
lw	a1,36(s8)
lw	a0,32(s8)
lw	v0,-32708(gp)
move	t9,v0
bal	10a4 <_mcm_rec>
nop
lw	gp,16(s8)
move	v1,v0
lw	v0,32(s8)
teq	v1,zero,0x7
div	zero,v0,v1
mfhi	v0
mflo	v1
lw	v0,36(s8)
mul	v0,v1,v0
}
move	sp,s8
lw	ra,28(sp)
lw	s8,24(sp)
addiu	sp,sp,32
jr	ra
