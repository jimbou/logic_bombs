#!/usr/bin/env bash
set -euo pipefail

# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/e_acos.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/e_acos.c z3 30 results_fdlibm_simple_z3_linked.json
# sleep 5
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/e_acos.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/e_acos.c stp 30 results_fdlibm_simple_stp_linked.json
# sleep 5
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/s_asinh.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/s_asinh.c z3 30 results_fdlibm_simple_z3_linked.json
# sleep 5
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/e_acosh.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/e_acosh.c z3 30 results_fdlibm_simple_z3_linked.json
# sleep 5
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/e_asin.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/e_asin.c z3 30 results_fdlibm_simple_z3_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/e_atan2.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/e_atan2.c z3 900 results_fdlibm_simple_z3_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/e_atanh.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/e_atanh.c z3 900 results_fdlibm_simple_z3_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/e_cosh.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/e_cosh.c z3 900 results_fdlibm_simple_z3_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/e_exp.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/e_exp.c z3 900 results_fdlibm_simple_z3_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/e_fmod.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/e_fmod.c z3 900 results_fdlibm_simple_z3_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/e_gamma.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/e_gamma.c z3 900 results_fdlibm_simple_z3_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/e_gamma_r.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/e_gamma_r.c z3 900 results_fdlibm_simple_z3_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/e_hypot.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/e_hypot.c z3 900 results_fdlibm_simple_z3_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/e_j0.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/e_j0.c z3 900 results_fdlibm_simple_z3_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/e_j1.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/e_j1.c z3 900 results_fdlibm_simple_z3_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/e_jn.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/e_jn.c z3 900 results_fdlibm_simple_z3_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/e_lgamma.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/e_lgamma.c z3 900 results_fdlibm_simple_z3_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/e_lgamma_r.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/e_lgamma_r.c z3 900 results_fdlibm_simple_z3_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/e_log.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/e_log.c z3 900 results_fdlibm_simple_z3_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/e_log10.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/e_log10.c z3 900 results_fdlibm_simple_z3_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/e_pow.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/e_pow.c z3 900 results_fdlibm_simple_z3_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/e_rem_pio2.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/e_rem_pio2.c z3 900 results_fdlibm_simple_z3_linked.json
# sleep 30
./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/_external.json.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/_external.json.c z3 30 results_fdlibm_simple_z3_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/e_scalb.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/e_scalb.c z3 900 results_fdlibm_simple_z3_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/e_sinh.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/e_sinh.c z3 900 results_fdlibm_simple_z3_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/e_sqrt.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/e_sqrt.c z3 900 results_fdlibm_simple_z3_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/k_cos.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/k_cos.c z3 900 results_fdlibm_simple_z3_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/k_sin.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/k_sin.c z3 900 results_fdlibm_simple_z3_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/k_standard.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/k_standard.c z3 900 results_fdlibm_simple_z3_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/k_tan.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/k_tan.c z3 900 results_fdlibm_simple_z3_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/s_asinh.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/s_asinh.c z3 900 results_fdlibm_simple_z3_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/s_atan.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/s_atan.c z3 900 results_fdlibm_simple_z3_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/s_cbrt.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/s_cbrt.c z3 900 results_fdlibm_simple_z3_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/s_ceil.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/s_ceil.c z3 900 results_fdlibm_simple_z3_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/s_copysign.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/s_copysign.c z3 900 results_fdlibm_simple_z3_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/s_cos.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/s_cos.c z3 900 results_fdlibm_simple_z3_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/s_erf.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/s_erf.c z3 900 results_fdlibm_simple_z3_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/s_expm1.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/s_expm1.c z3 900 results_fdlibm_simple_z3_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/s_fabs.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/s_fabs.c z3 900 results_fdlibm_simple_z3_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/s_finite.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/s_finite.c z3 900 results_fdlibm_simple_z3_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/s_floor.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/s_floor.c z3 900 results_fdlibm_simple_z3_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/s_frexp.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/s_frexp.c z3 900 results_fdlibm_simple_z3_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/s_ilogb.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/s_ilogb.c z3 900 results_fdlibm_simple_z3_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/s_isnan.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/s_isnan.c z3 900 results_fdlibm_simple_z3_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/s_ldexp.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/s_ldexp.c z3 900 results_fdlibm_simple_z3_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/s_log1p.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/s_log1p.c z3 900 results_fdlibm_simple_z3_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/s_logb.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/s_logb.c z3 900 results_fdlibm_simple_z3_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/s_modf.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/s_modf.c z3 900 results_fdlibm_simple_z3_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/s_nextafter.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/s_nextafter.c z3 900 results_fdlibm_simple_z3_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/s_rint.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/s_rint.c z3 900 results_fdlibm_simple_z3_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/s_scalbn.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/s_scalbn.c z3 900 results_fdlibm_simple_z3_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/s_significand.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/s_significand.c z3 900 results_fdlibm_simple_z3_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/s_sin.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/s_sin.c z3 900 results_fdlibm_simple_z3_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/s_tan.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/s_tan.c z3 900 results_fdlibm_simple_z3_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/s_tanh.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/s_tanh.c z3 900 results_fdlibm_simple_z3_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/w_acos.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/w_acos.c z3 900 results_fdlibm_simple_z3_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/w_acosh.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/w_acosh.c z3 900 results_fdlibm_simple_z3_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/w_asin.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/w_asin.c z3 900 results_fdlibm_simple_z3_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/w_atan2.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/w_atan2.c z3 900 results_fdlibm_simple_z3_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/w_atanh.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/w_atanh.c z3 900 results_fdlibm_simple_z3_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/w_cosh.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/w_cosh.c z3 900 results_fdlibm_simple_z3_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/w_exp.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/w_exp.c z3 900 results_fdlibm_simple_z3_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/w_fmod.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/w_fmod.c z3 900 results_fdlibm_simple_z3_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/w_gamma.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/w_gamma.c z3 900 results_fdlibm_simple_z3_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/w_gamma_r.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/w_gamma_r.c z3 900 results_fdlibm_simple_z3_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/w_hypot.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/w_hypot.c z3 900 results_fdlibm_simple_z3_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/w_j0.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/w_j0.c z3 900 results_fdlibm_simple_z3_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/w_j1.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/w_j1.c z3 900 results_fdlibm_simple_z3_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/w_jn.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/w_jn.c z3 900 results_fdlibm_simple_z3_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/w_lgamma.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/w_lgamma.c z3 900 results_fdlibm_simple_z3_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/w_lgamma_r.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/w_lgamma_r.c z3 900 results_fdlibm_simple_z3_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/w_log.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/w_log.c z3 900 results_fdlibm_simple_z3_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/w_log10.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/w_log10.c z3 900 results_fdlibm_simple_z3_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/w_pow.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/w_pow.c z3 900 results_fdlibm_simple_z3_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/w_remainder.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/w_remainder.c z3 900 results_fdlibm_simple_z3_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/w_scalb.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/w_scalb.c z3 900 results_fdlibm_simple_z3_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/w_sinh.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/w_sinh.c z3 900 results_fdlibm_simple_z3_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/w_sqrt.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/w_sqrt.c z3 900 results_fdlibm_simple_z3_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/e_acos.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/e_acos.c stp 900 results_fdlibm_simple_stp_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/e_acosh.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/e_acosh.c stp 900 results_fdlibm_simple_stp_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/e_asin.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/e_asin.c stp 900 results_fdlibm_simple_stp_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/e_atan2.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/e_atan2.c stp 900 results_fdlibm_simple_stp_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/e_atanh.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/e_atanh.c stp 900 results_fdlibm_simple_stp_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/e_cosh.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/e_cosh.c stp 900 results_fdlibm_simple_stp_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/e_exp.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/e_exp.c stp 900 results_fdlibm_simple_stp_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/e_fmod.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/e_fmod.c stp 900 results_fdlibm_simple_stp_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/e_gamma.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/e_gamma.c stp 900 results_fdlibm_simple_stp_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/e_gamma_r.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/e_gamma_r.c stp 900 results_fdlibm_simple_stp_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/e_hypot.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/e_hypot.c stp 900 results_fdlibm_simple_stp_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/e_j0.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/e_j0.c stp 900 results_fdlibm_simple_stp_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/e_j1.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/e_j1.c stp 900 results_fdlibm_simple_stp_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/e_jn.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/e_jn.c stp 900 results_fdlibm_simple_stp_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/e_lgamma.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/e_lgamma.c stp 900 results_fdlibm_simple_stp_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/e_lgamma_r.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/e_lgamma_r.c stp 900 results_fdlibm_simple_stp_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/e_log.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/e_log.c stp 900 results_fdlibm_simple_stp_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/e_log10.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/e_log10.c stp 900 results_fdlibm_simple_stp_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/e_pow.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/e_pow.c stp 900 results_fdlibm_simple_stp_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/e_rem_pio2.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/e_rem_pio2.c stp 900 results_fdlibm_simple_stp_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/_external.json.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/_external.json.c stp 900 results_fdlibm_simple_stp_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/e_scalb.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/e_scalb.c stp 900 results_fdlibm_simple_stp_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/e_sinh.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/e_sinh.c stp 900 results_fdlibm_simple_stp_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/e_sqrt.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/e_sqrt.c stp 900 results_fdlibm_simple_stp_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/k_cos.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/k_cos.c stp 900 results_fdlibm_simple_stp_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/k_sin.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/k_sin.c stp 900 results_fdlibm_simple_stp_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/k_standard.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/k_standard.c stp 900 results_fdlibm_simple_stp_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/k_tan.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/k_tan.c stp 900 results_fdlibm_simple_stp_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/s_asinh.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/s_asinh.c stp 900 results_fdlibm_simple_stp_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/s_atan.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/s_atan.c stp 900 results_fdlibm_simple_stp_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/s_cbrt.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/s_cbrt.c stp 900 results_fdlibm_simple_stp_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/s_ceil.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/s_ceil.c stp 900 results_fdlibm_simple_stp_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/s_copysign.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/s_copysign.c stp 900 results_fdlibm_simple_stp_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/s_cos.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/s_cos.c stp 900 results_fdlibm_simple_stp_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/s_erf.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/s_erf.c stp 900 results_fdlibm_simple_stp_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/s_expm1.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/s_expm1.c stp 900 results_fdlibm_simple_stp_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/s_fabs.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/s_fabs.c stp 900 results_fdlibm_simple_stp_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/s_finite.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/s_finite.c stp 900 results_fdlibm_simple_stp_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/s_floor.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/s_floor.c stp 900 results_fdlibm_simple_stp_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/s_frexp.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/s_frexp.c stp 900 results_fdlibm_simple_stp_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/s_ilogb.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/s_ilogb.c stp 900 results_fdlibm_simple_stp_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/s_isnan.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/s_isnan.c stp 900 results_fdlibm_simple_stp_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/s_ldexp.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/s_ldexp.c stp 900 results_fdlibm_simple_stp_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/s_log1p.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/s_log1p.c stp 900 results_fdlibm_simple_stp_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/s_logb.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/s_logb.c stp 900 results_fdlibm_simple_stp_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/s_modf.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/s_modf.c stp 900 results_fdlibm_simple_stp_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/s_nextafter.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/s_nextafter.c stp 900 results_fdlibm_simple_stp_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/s_rint.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/s_rint.c stp 900 results_fdlibm_simple_stp_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/s_scalbn.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/s_scalbn.c stp 900 results_fdlibm_simple_stp_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/s_significand.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/s_significand.c stp 900 results_fdlibm_simple_stp_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/s_sin.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/s_sin.c stp 900 results_fdlibm_simple_stp_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/s_tan.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/s_tan.c stp 900 results_fdlibm_simple_stp_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/s_tanh.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/s_tanh.c stp 900 results_fdlibm_simple_stp_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/w_acos.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/w_acos.c stp 900 results_fdlibm_simple_stp_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/w_acosh.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/w_acosh.c stp 900 results_fdlibm_simple_stp_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/w_asin.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/w_asin.c stp 900 results_fdlibm_simple_stp_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/w_atan2.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/w_atan2.c stp 900 results_fdlibm_simple_stp_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/w_atanh.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/w_atanh.c stp 900 results_fdlibm_simple_stp_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/w_cosh.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/w_cosh.c stp 900 results_fdlibm_simple_stp_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/w_exp.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/w_exp.c stp 900 results_fdlibm_simple_stp_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/w_fmod.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/w_fmod.c stp 900 results_fdlibm_simple_stp_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/w_gamma.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/w_gamma.c stp 900 results_fdlibm_simple_stp_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/w_gamma_r.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/w_gamma_r.c stp 900 results_fdlibm_simple_stp_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/w_hypot.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/w_hypot.c stp 900 results_fdlibm_simple_stp_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/w_j0.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/w_j0.c stp 900 results_fdlibm_simple_stp_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/w_j1.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/w_j1.c stp 900 results_fdlibm_simple_stp_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/w_jn.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/w_jn.c stp 900 results_fdlibm_simple_stp_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/w_lgamma.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/w_lgamma.c stp 900 results_fdlibm_simple_stp_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/w_lgamma_r.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/w_lgamma_r.c stp 900 results_fdlibm_simple_stp_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/w_log.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/w_log.c stp 900 results_fdlibm_simple_stp_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/w_log10.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/w_log10.c stp 900 results_fdlibm_simple_stp_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/w_pow.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/w_pow.c stp 900 results_fdlibm_simple_stp_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/w_remainder.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/w_remainder.c stp 900 results_fdlibm_simple_stp_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/w_scalb.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/w_scalb.c stp 900 results_fdlibm_simple_stp_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/w_sinh.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/w_sinh.c stp 900 results_fdlibm_simple_stp_linked.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/w_sqrt.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/w_sqrt.c stp 900 results_fdlibm_simple_stp_linked.json
