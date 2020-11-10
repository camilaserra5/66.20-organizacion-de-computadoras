000011a8 <_mcd>:

// máximo común divisor
int _mcd(int m, int n) {
lui	gp,0x2
addiu	gp,gp,-28984
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
bnez	v0,11e8 <_mcd+0x40>

return m;
lw	v0,32(s8)
b	1288 <_mcd+0xe0>

if (n == 0)
lw	v0,36(s8)
bnez	v0,1200 <_mcd+0x58>

return n;
lw	v0,36(s8)
b	1288 <_mcd+0xe0>


if (m == n)
lw	v1,32(s8)
lw	v0,36(s8)
bne	v1,v0,121c <_mcd+0x74>
nop
return m;
lw	v0,32(s8)
b	1288 <_mcd+0xe0>


if (m > n)
lw	v1,32(s8)
lw	v0,36(s8)
slt	v0,v0,v1
beqz	v0,1260 <_mcd+0xb8>
return _mcd(m - n, n);
lw	v1,32(s8)
lw	v0,36(s8)
subu	v0,v1,v0
lw	a1,36(s8)
move	a0,v0
lw	v0,-32704(gp)
move	t9,v0
bal	11a8 <_mcd>
lw	gp,16(s8)
b	1288 <_mcd+0xe0>
nop
return _mcd(m, n - m);
lw	v1,36(s8)
lw	v0,32(s8)
subu	v0,v1,v0
move	a1,v0
