extern unsigned int mcd(unsigned int m, unsigned int n);

/*
  Mínimo Comun Multiplo
*/
#ifdef MIPS
extern unsigned int mcm(unsigned int m, unsigned int n);
#else
unsigned int mcm(unsigned int m, unsigned int n)
{
    unsigned int mcm_v = 0;        
    unsigned int mcd_v = 0;
    
    unsigned int a = m;
    unsigned int b = n;    
    if( n > m ) {
    	a = n;
    	b = m;
    }
    
    mcd_v = mcd(a, b);    
    mcm_v = ( a / mcd_v ) * b;
    
    return mcm_v;
}
#endif
