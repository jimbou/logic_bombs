#!/usr/bin/env bash
set -euo pipefail


./run_bc_klee_fdlibm_simple.sh ./e_acos.bc stp 900 results_fdlibm_simple_stp.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./e_acosh.bc stp 900 results_fdlibm_simple_stp.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./e_asin.bc stp 900 results_fdlibm_simple_stp.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./e_atan2.bc stp 900 results_fdlibm_simple_stp.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./e_atanh.bc stp 900 results_fdlibm_simple_stp.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./e_cosh.bc stp 900 results_fdlibm_simple_stp.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./e_exp.bc stp 900 results_fdlibm_simple_stp.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./e_fmod.bc stp 900 results_fdlibm_simple_stp.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./e_gamma.bc stp 900 results_fdlibm_simple_stp.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./e_gamma_r.bc stp 900 results_fdlibm_simple_stp.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./e_hypot.bc stp 900 results_fdlibm_simple_stp.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./e_j0.bc stp 900 results_fdlibm_simple_stp.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./e_j1.bc stp 900 results_fdlibm_simple_stp.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./e_jn.bc stp 900 results_fdlibm_simple_stp.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./e_lgamma.bc stp 900 results_fdlibm_simple_stp.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./e_lgamma_r.bc stp 900 results_fdlibm_simple_stp.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./e_log.bc stp 900 results_fdlibm_simple_stp.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./e_log10.bc stp 900 results_fdlibm_simple_stp.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./e_pow.bc stp 900 results_fdlibm_simple_stp.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./e_rem_pio2.bc stp 900 results_fdlibm_simple_stp.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./e_remainder.bc stp 900 results_fdlibm_simple_stp.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./e_scalb.bc stp 900 results_fdlibm_simple_stp.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./e_sinh.bc stp 900 results_fdlibm_simple_stp.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./e_sqrt.bc stp 900 results_fdlibm_simple_stp.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./k_cos.bc stp 900 results_fdlibm_simple_stp.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./k_sin.bc stp 900 results_fdlibm_simple_stp.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./k_standard.bc stp 900 results_fdlibm_simple_stp.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./k_tan.bc stp 900 results_fdlibm_simple_stp.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./s_asinh.bc stp 900 results_fdlibm_simple_stp.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./s_atan.bc stp 900 results_fdlibm_simple_stp.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./s_cbrt.bc stp 900 results_fdlibm_simple_stp.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./s_ceil.bc stp 900 results_fdlibm_simple_stp.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./s_copysign.bc stp 900 results_fdlibm_simple_stp.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./s_cos.bc stp 900 results_fdlibm_simple_stp.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./s_erf.bc stp 900 results_fdlibm_simple_stp.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./s_expm1.bc stp 900 results_fdlibm_simple_stp.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./s_fabs.bc stp 900 results_fdlibm_simple_stp.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./s_finite.bc stp 900 results_fdlibm_simple_stp.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./s_floor.bc stp 900 results_fdlibm_simple_stp.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./s_frexp.bc stp 900 results_fdlibm_simple_stp.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./s_ilogb.bc stp 900 results_fdlibm_simple_stp.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./s_isnan.bc stp 900 results_fdlibm_simple_stp.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./s_ldexp.bc stp 900 results_fdlibm_simple_stp.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./s_log1p.bc stp 900 results_fdlibm_simple_stp.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./s_logb.bc stp 900 results_fdlibm_simple_stp.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./s_modf.bc stp 900 results_fdlibm_simple_stp.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./s_nextafter.bc stp 900 results_fdlibm_simple_stp.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./s_rint.bc stp 900 results_fdlibm_simple_stp.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./s_scalbn.bc stp 900 results_fdlibm_simple_stp.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./s_significand.bc stp 900 results_fdlibm_simple_stp.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./s_sin.bc stp 900 results_fdlibm_simple_stp.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./s_tan.bc stp 900 results_fdlibm_simple_stp.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./s_tanh.bc stp 900 results_fdlibm_simple_stp.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./w_acos.bc stp 900 results_fdlibm_simple_stp.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./w_acosh.bc stp 900 results_fdlibm_simple_stp.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./w_asin.bc stp 900 results_fdlibm_simple_stp.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./w_atan2.bc stp 900 results_fdlibm_simple_stp.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./w_atanh.bc stp 900 results_fdlibm_simple_stp.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./w_cosh.bc stp 900 results_fdlibm_simple_stp.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./w_exp.bc stp 900 results_fdlibm_simple_stp.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./w_fmod.bc stp 900 results_fdlibm_simple_stp.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./w_gamma.bc stp 900 results_fdlibm_simple_stp.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./w_gamma_r.bc stp 900 results_fdlibm_simple_stp.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./w_hypot.bc stp 900 results_fdlibm_simple_stp.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./w_j0.bc stp 900 results_fdlibm_simple_stp.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./w_j1.bc stp 900 results_fdlibm_simple_stp.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./w_jn.bc stp 900 results_fdlibm_simple_stp.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./w_lgamma.bc stp 900 results_fdlibm_simple_stp.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./w_lgamma_r.bc stp 900 results_fdlibm_simple_stp.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./w_log.bc stp 900 results_fdlibm_simple_stp.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./w_log10.bc stp 900 results_fdlibm_simple_stp.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./w_pow.bc stp 900 results_fdlibm_simple_stp.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./w_remainder.bc stp 900 results_fdlibm_simple_stp.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./w_scalb.bc stp 900 results_fdlibm_simple_stp.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./w_sinh.bc stp 900 results_fdlibm_simple_stp.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./w_sqrt.bc stp 900 results_fdlibm_simple_stp.json
sleep 60

./run_bc_klee_fdlibm_simple.sh ./e_acos.bc z3 900 results_fdlibm_simple_z3.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./e_acosh.bc z3 900 results_fdlibm_simple_z3.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./e_asin.bc z3 900 results_fdlibm_simple_z3.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./e_atan2.bc z3 900 results_fdlibm_simple_z3.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./e_atanh.bc z3 900 results_fdlibm_simple_z3.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./e_cosh.bc z3 900 results_fdlibm_simple_z3.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./e_exp.bc z3 900 results_fdlibm_simple_z3.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./e_fmod.bc z3 900 results_fdlibm_simple_z3.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./e_gamma.bc z3 900 results_fdlibm_simple_z3.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./e_gamma_r.bc z3 900 results_fdlibm_simple_z3.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./e_hypot.bc z3 900 results_fdlibm_simple_z3.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./e_j0.bc z3 900 results_fdlibm_simple_z3.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./e_j1.bc z3 900 results_fdlibm_simple_z3.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./e_jn.bc z3 900 results_fdlibm_simple_z3.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./e_lgamma.bc z3 900 results_fdlibm_simple_z3.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./e_lgamma_r.bc z3 900 results_fdlibm_simple_z3.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./e_log.bc z3 900 results_fdlibm_simple_z3.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./e_log10.bc z3 900 results_fdlibm_simple_z3.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./e_pow.bc z3 900 results_fdlibm_simple_z3.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./e_rem_pio2.bc z3 900 results_fdlibm_simple_z3.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./e_remainder.bc z3 900 results_fdlibm_simple_z3.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./e_scalb.bc z3 900 results_fdlibm_simple_z3.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./e_sinh.bc z3 900 results_fdlibm_simple_z3.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./e_sqrt.bc z3 900 results_fdlibm_simple_z3.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./k_cos.bc z3 900 results_fdlibm_simple_z3.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./k_sin.bc z3 900 results_fdlibm_simple_z3.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./k_standard.bc z3 900 results_fdlibm_simple_z3.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./k_tan.bc z3 900 results_fdlibm_simple_z3.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./s_asinh.bc z3 900 results_fdlibm_simple_z3.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./s_atan.bc z3 900 results_fdlibm_simple_z3.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./s_cbrt.bc z3 900 results_fdlibm_simple_z3.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./s_ceil.bc z3 900 results_fdlibm_simple_z3.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./s_copysign.bc z3 900 results_fdlibm_simple_z3.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./s_cos.bc z3 900 results_fdlibm_simple_z3.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./s_erf.bc z3 900 results_fdlibm_simple_z3.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./s_expm1.bc z3 900 results_fdlibm_simple_z3.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./s_fabs.bc z3 900 results_fdlibm_simple_z3.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./s_finite.bc z3 900 results_fdlibm_simple_z3.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./s_floor.bc z3 900 results_fdlibm_simple_z3.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./s_frexp.bc z3 900 results_fdlibm_simple_z3.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./s_ilogb.bc z3 900 results_fdlibm_simple_z3.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./s_isnan.bc z3 900 results_fdlibm_simple_z3.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./s_ldexp.bc z3 900 results_fdlibm_simple_z3.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./s_log1p.bc z3 900 results_fdlibm_simple_z3.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./s_logb.bc z3 900 results_fdlibm_simple_z3.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./s_modf.bc z3 900 results_fdlibm_simple_z3.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./s_nextafter.bc z3 900 results_fdlibm_simple_z3.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./s_rint.bc z3 900 results_fdlibm_simple_z3.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./s_scalbn.bc z3 900 results_fdlibm_simple_z3.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./s_significand.bc z3 900 results_fdlibm_simple_z3.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./s_sin.bc z3 900 results_fdlibm_simple_z3.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./s_tan.bc z3 900 results_fdlibm_simple_z3.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./s_tanh.bc z3 900 results_fdlibm_simple_z3.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./w_acos.bc z3 900 results_fdlibm_simple_z3.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./w_acosh.bc z3 900 results_fdlibm_simple_z3.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./w_asin.bc z3 900 results_fdlibm_simple_z3.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./w_atan2.bc z3 900 results_fdlibm_simple_z3.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./w_atanh.bc z3 900 results_fdlibm_simple_z3.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./w_cosh.bc z3 900 results_fdlibm_simple_z3.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./w_exp.bc z3 900 results_fdlibm_simple_z3.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./w_fmod.bc z3 900 results_fdlibm_simple_z3.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./w_gamma.bc z3 900 results_fdlibm_simple_z3.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./w_gamma_r.bc z3 900 results_fdlibm_simple_z3.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./w_hypot.bc z3 900 results_fdlibm_simple_z3.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./w_j0.bc z3 900 results_fdlibm_simple_z3.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./w_j1.bc z3 900 results_fdlibm_simple_z3.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./w_jn.bc z3 900 results_fdlibm_simple_z3.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./w_lgamma.bc z3 900 results_fdlibm_simple_z3.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./w_lgamma_r.bc z3 900 results_fdlibm_simple_z3.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./w_log.bc z3 900 results_fdlibm_simple_z3.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./w_log10.bc z3 900 results_fdlibm_simple_z3.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./w_pow.bc z3 900 results_fdlibm_simple_z3.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./w_remainder.bc z3 900 results_fdlibm_simple_z3.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./w_scalb.bc z3 900 results_fdlibm_simple_z3.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./w_sinh.bc z3 900 results_fdlibm_simple_z3.json
sleep 60
./run_bc_klee_fdlibm_simple.sh ./w_sqrt.bc z3 900 results_fdlibm_simple_z3.json
sleep 60