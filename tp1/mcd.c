/*
  Máximo Comun Divisor
*/
unsigned int mcd(unsigned int m, unsigned int n) 
{
    if (m == 0)
        return m;
        
    if (n == 0)
        return n;

    if (m == n)
        return m;

    if (m > n)
        return mcd(m - n, n);
        
    return mcd(m, n - m);
}
