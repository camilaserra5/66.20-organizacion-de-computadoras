extern unsigned int _mcm_rec(unsigned int m, unsigned int n);

/*
  Mínimo Comun Multiplo
*/
unsigned int mcm(unsigned int m, unsigned int n) 
{
    return (m / _mcm_rec(m, n)) * n;
}

unsigned int _mcm_rec(unsigned int m, unsigned int n)
{
    if (m == 0)
        return n;
        
    return _mcm_rec(n % m, m);
}
