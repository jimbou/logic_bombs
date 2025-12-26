
/* @(#)w_j0.c 1.3 95/01/18 */
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
 * wrapper j0(double x), y0(double x)
 */

#include "fdlibm.h"

#ifdef __STDC__
	double j0(double x)		/* wrapper j0 */
#else
	double j0(x)			/* wrapper j0 */
	double x;
#endif
{
#ifdef _IEEE_LIBM
	return __ieee754_j0(x);
#else
	double z = __ieee754_j0(x);
	if(_LIB_VERSION == _IEEE_ || isnan(x)) return z;
	if(fabs(x)>X_TLOSS) { //uncovered
	        return __kernel_standard(x,x,34); /* j0(|x|>X_TLOSS) */ //uncovered
	} else
	    return z; //uncovered
#endif //uncovered
}

#ifdef __STDC__
	double y0(double x)		/* wrapper y0 */
#else
	double y0(x)			/* wrapper y0 */
	double x;
#endif
{
#ifdef _IEEE_LIBM
	return __ieee754_y0(x);
#else
	double z; //uncovered
	z = __ieee754_y0(x); //uncovered
	if(_LIB_VERSION == _IEEE_ || isnan(x) ) return z; //uncovered
        if(x <= 0.0){ //uncovered
                if(x==0.0) //uncovered
                    /* d= -one/(x-x); */
                    return __kernel_standard(x,x,8); //uncovered
                else
                    /* d = zero/(x-x); */
                    return __kernel_standard(x,x,9); //uncovered
        }
	if(x>X_TLOSS) { //uncovered
	        return __kernel_standard(x,x,35); /* y0(x>X_TLOSS) */ //uncovered
	} else
	    return z; //uncovered
#endif //uncovered
}