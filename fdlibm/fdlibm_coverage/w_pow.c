

/* @(#)w_pow.c 1.3 95/01/18 */
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
 * wrapper pow(x,y) return x**y
 */

#include "fdlibm.h"


#ifdef __STDC__
	double pow(double x, double y)	/* wrapper pow */
#else
	double pow(x,y)			/* wrapper pow */
	double x,y;
#endif
{
#ifdef _IEEE_LIBM
	return  __ieee754_pow(x,y);
#else
	double z;
	z=__ieee754_pow(x,y);
	if(_LIB_VERSION == _IEEE_|| isnan(y)) return z;
	if(isnan(x)) { //uncovered
	    if(y==0.0)  //uncovered
	        return __kernel_standard(x,y,42); /* pow(NaN,0.0) */ //uncovered
	    else 
		return z; //uncovered
	}
	if(x==0.0){  //uncovered
	    if(y==0.0) //uncovered
	        return __kernel_standard(x,y,20); /* pow(0.0,0.0) */ //uncovered
	    if(finite(y)&&y<0.0) //uncovered
	        return __kernel_standard(x,y,23); /* pow(0.0,negative) */ //uncovered
	    return z; //uncovered
	}
	if(!finite(z)) { //uncovered
	    if(finite(x)&&finite(y)) { //uncovered
	        if(isnan(z)) //uncovered
	            return __kernel_standard(x,y,24); /* pow neg**non-int */ //uncovered
	        else 
	            return __kernel_standard(x,y,21); /* pow overflow */ //uncovered
	    }
	} 
	if(z==0.0&&finite(x)&&finite(y)) //uncovered
	    return __kernel_standard(x,y,22); /* pow underflow */ //uncovered
	return z; //uncovered
#endif //uncovered
}