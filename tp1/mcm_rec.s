int _mcm_rec(int m, int n) {
lui	gp,0x2
addiu	gp,gp,-28724
addu	gp,gp,t9
addiu	sp,sp,-32
sw	ra,28(sp)
sw	s8,24(sp)
move	s8,sp
sw	gp,16(sp)
sw	a0,32(s8)
sw	a1,36(s8)
if (m == 0)
lw	v0,32(s8)
bnez	v0,10e4 <_mcm_rec+0x40>

return n;
lw	v0,36(s8)
b	1114 <_mcm_rec+0x70>
nop
return _mcm_rec(n % m, m);
lw	v1,36(s8)
lw	v0,32(s8)
teq	v0,zero,0x7
div	zero,v1,v0
mfhi	v0
lw	a1,32(s8)
move	a0,v0
lw	v0,-32708(gp)
move	t9,v0
bal	10a4 <_mcm_rec>

lw	gp,16(s8)
}
move	sp,s8
lw	ra,28(sp)
lw	s8,24(sp)
addiu	sp,sp,32
jr	ra

