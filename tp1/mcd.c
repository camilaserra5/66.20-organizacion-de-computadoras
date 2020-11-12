/*
  Máximo Comun Divisor
*/
unsigned int mcd(unsigned int m, unsigned int n) 
{
    if (m == 0) return m;        
    if (n == 0) return n;
    if (m == n) return m;

    unsigned int a = m;
    unsigned int b = n;    
    unsigned int mcd_v = 0;
    if( n > m )
    {
    	a = n;
    	b = m;
    }
    
    do
    {
    	mcd_v = b;
    	b = a % b;
    	a = mcd_v;
    } while( b != 0 );
       
    return mcd_v;
}
