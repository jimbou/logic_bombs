
/* @(#)s_rint.c 1.3 95/01/18 */
/*
 * ====================================================
 * Copyright (C) 1993 by Sun Microsystems, Inc. All rights reserved.
 *
 * Developed at SunSoft, a Sun Microsystems, Inc. business.
 * Permission to use, copy, modify, and distribute this
 * software is freely granted, provided that this notice 
 * is preserved.
 * ====================================================
 */

/*
 * rint(x)
 * Return x rounded to integral value according to the prevailing
 * rounding mode.
 * Method:
 *	Using floating addition.
 * Exception:
 *	Inexact flag raised if x not equal to rint(x).
 */

#include "fdlibm.h"

#ifdef __STDC__
static const double
#else
static double 
#endif
TWO52[2]={
  4.50359962737049600000e+15, /* 0x43300000, 0x00000000 */
 -4.50359962737049600000e+15, /* 0xC3300000, 0x00000000 */
};

#ifdef __STDC__
	double rint(double x)
#else
	double rint(x)
	double x;
#endif
{
	int i0,j0,sx; //uncovered
	unsigned i,i1; //uncovered
	double w,t; //uncovered
	i0 =  __HI(x); //uncovered
	sx = (i0>>31)&1; //uncovered
	i1 =  __LO(x); //uncovered
	j0 = ((i0>>20)&0x7ff)-0x3ff; //uncovered
	if(j0<20) { //uncovered
	    if(j0<0) { 	 //uncovered
		if(((i0&0x7fffffff)|i1)==0) return x; //uncovered
		i1 |= (i0&0x0fffff); //uncovered
		i0 &= 0xfffe0000; //uncovered
		i0 |= ((i1|-i1)>>12)&0x80000; //uncovered
		__HI(x)=i0; //uncovered
	        w = TWO52[sx]+x; //uncovered
	        t =  w-TWO52[sx]; //uncovered
	        i0 = __HI(t); //uncovered
	        __HI(t) = (i0&0x7fffffff)|(sx<<31); //uncovered
	        return t; //uncovered
	    } else {
		i = (0x000fffff)>>j0; //uncovered
		if(((i0&i)|i1)==0) return x; /* x is integral */ //uncovered
		i>>=1; //uncovered
		if(((i0&i)|i1)!=0) { //uncovered
		    if(j0==19) i1 = 0x40000000; else //uncovered
		    i0 = (i0&(~i))|((0x20000)>>j0); //uncovered
		}
	    }
	} else if (j0>51) { //uncovered
	    if(j0==0x400) return x+x;	/* inf or NaN */ //uncovered
	    else return x;		/* x is integral */ //uncovered
	} else {
	    i = ((unsigned)(0xffffffff))>>(j0-20); //uncovered
	    if((i1&i)==0) return x;	/* x is integral */ //uncovered
	    i>>=1; //uncovered
	    if((i1&i)!=0) i1 = (i1&(~i))|((0x40000000)>>(j0-20)); //uncovered
	}
	__HI(x) = i0; //uncovered
	__LO(x) = i1; //uncovered
	w = TWO52[sx]+x; //uncovered
	return w-TWO52[sx]; //uncovered
}