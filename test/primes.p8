//	primes.p8	1999 nov 23	last modified 1999 nov 25
//
//	Does this:
//		prompts user for int nwp; reads int;
//		if int < 1
//			halts
//		else
//			prints first nwp primes.
//	Notice that this program uses all four of the boolean relations
//	on integers; it has nested whiles, a break, an if, and an if-else.
//

{
	int d,n,np,nwp,p;		// nwp is number of wanted primes

	input nwp;
	if ( nwp < 1 ) {
		return;
	}
	output 2;
	if ( nwp == 1 ) {
		return;
	}
	n = 3;
	output n;
	np = 2;
	while ( np < nwp ) {
		n = n+2;
		d = 3;				// 1st trial divisor
		p = 1;				// flag- 1: yes, prime; 0, no
		while ( d*d <= n ) {
			if ( d*(n/d) != n ) {
				d = d+2;	// next trial divisor
			} else {
				p = 0;		// n is not a prime
				break;
			}
		}
		if ( p == 1 ) {			// was n prime?
			output n;
			np = np+1;
		}
	}
}
