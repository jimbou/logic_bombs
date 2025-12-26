
/* @(#)w_gamma_r.c 1.3 95/01/18 */
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
 * wrapper double gamma_r(double x, int *signgamp)
 */

#include "fdlibm.h"


#ifdef __STDC__
	double gamma_r(double x, int *signgamp) /* wrapper lgamma_r */
#else
	double gamma_r(x,signgamp)              /* wrapper lgamma_r */
        double x; int *signgamp;
#endif
{
#ifdef _IEEE_LIBM
	return __ieee754_gamma_r(x,signgamp);
#else
        double y; //uncovered
        y = __ieee754_gamma_r(x,signgamp); //uncovered
        if(_LIB_VERSION == _IEEE_) return y; //uncovered
        if(!finite(y)&&finite(x)) { //uncovered
            if(floor(x)==x&&x<=0.0) //uncovered
                return __kernel_standard(x,x,41); /* gamma pole */ //uncovered
            else
                return __kernel_standard(x,x,40); /* gamma overflow */ //uncovered
        } else
            return y; //uncovered
#endif //uncovered
}             