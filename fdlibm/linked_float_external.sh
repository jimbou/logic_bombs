#!/usr/bin/env bash
set -uo pipefail



# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_float/e_acos_float.bc /home/jim/logic_bombs/fdlibm/fdlibm_float/e_acos.c z3 900 results_fdlibm_float_z3_linked_external.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_float/e_acosh_float.bc /home/jim/logic_bombs/fdlibm/fdlibm_float/e_acosh.c z3 900 results_fdlibm_float_z3_linked_external.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_float/e_asin_float.bc /home/jim/logic_bombs/fdlibm/fdlibm_float/e_asin.c z3 900 results_fdlibm_float_z3_linked_external.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_float/e_atan2_float.bc /home/jim/logic_bombs/fdlibm/fdlibm_float/e_atan2.c z3 900 results_fdlibm_float_z3_linked_external.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_float/e_atanh_float.bc /home/jim/logic_bombs/fdlibm/fdlibm_float/e_atanh.c z3 900 results_fdlibm_float_z3_linked_external.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_float/e_cosh_float.bc /home/jim/logic_bombs/fdlibm/fdlibm_float/e_cosh.c z3 900 results_fdlibm_float_z3_linked_external.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_float/e_exp_float.bc /home/jim/logic_bombs/fdlibm/fdlibm_float/e_exp.c z3 900 results_fdlibm_float_z3_linked_external.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_float/e_fmod_float.bc /home/jim/logic_bombs/fdlibm/fdlibm_float/e_fmod.c z3 900 results_fdlibm_float_z3_linked_external.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_float/e_gamma_float.bc /home/jim/logic_bombs/fdlibm/fdlibm_float/e_gamma.c z3 900 results_fdlibm_float_z3_linked_external.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_float/e_gamma_r_float.bc /home/jim/logic_bombs/fdlibm/fdlibm_float/e_gamma_r.c z3 900 results_fdlibm_float_z3_linked_external.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_float/e_hypot_float.bc /home/jim/logic_bombs/fdlibm/fdlibm_float/e_hypot.c z3 900 results_fdlibm_float_z3_linked_external.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_float/e_j0_mainfloat.bc /home/jim/logic_bombs/fdlibm/fdlibm_coverage/e_j0.c z3 900 results_fdlibm_float_z3_reruns.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_float/e_j1_mainfloat.bc /home/jim/logic_bombs/fdlibm/fdlibm_coverage/e_j1.c z3 900 results_fdlibm_float_z3_reruns.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_float/e_jn_mainfloat.bc /home/jim/logic_bombs/fdlibm/fdlibm_coverage/e_jn.c z3 900 results_fdlibm_float_z3_reruns.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_float/e_lgamma_float.bc /home/jim/logic_bombs/fdlibm/fdlibm_float/e_lgamma.c z3 900 results_fdlibm_float_z3_linked_external.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_float/e_lgamma_r_float.bc /home/jim/logic_bombs/fdlibm/fdlibm_float/e_lgamma_r.c z3 900 results_fdlibm_float_z3_linked_external.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_float/e_log_float.bc /home/jim/logic_bombs/fdlibm/fdlibm_float/e_log.c z3 900 results_fdlibm_float_z3_linked_external.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_float/e_log10_float.bc /home/jim/logic_bombs/fdlibm/fdlibm_float/e_log10.c z3 900 results_fdlibm_float_z3_linked_external.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_float/e_pow_float.bc /home/jim/logic_bombs/fdlibm/fdlibm_float/e_pow.c z3 900 results_fdlibm_float_z3_linked_external.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_float/e_rem_pio2_float.bc /home/jim/logic_bombs/fdlibm/fdlibm_float/e_rem_pio2.c z3 900 results_fdlibm_float_z3_linked_external.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_float/e_remainder_float.bc /home/jim/logic_bombs/fdlibm/fdlibm_float/e_remainder.c z3 900 results_fdlibm_float_z3_linked_external.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_float/e_scalb_float.bc /home/jim/logic_bombs/fdlibm/fdlibm_float/e_scalb.c z3 900 results_fdlibm_float_z3_linked_external.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_float/e_sinh_float.bc /home/jim/logic_bombs/fdlibm/fdlibm_float/e_sinh.c z3 900 results_fdlibm_float_z3_linked_external.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_float/e_sqrt_float.bc /home/jim/logic_bombs/fdlibm/fdlibm_float/e_sqrt.c z3 900 results_fdlibm_float_z3_linked_external.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_float/k_cos_float.bc /home/jim/logic_bombs/fdlibm/fdlibm_float/k_cos.c z3 900 results_fdlibm_float_z3_linked_external.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_float/k_sin_float.bc /home/jim/logic_bombs/fdlibm/fdlibm_float/k_sin.c z3 900 results_fdlibm_float_z3_linked_external.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_float/k_standard_float.bc /home/jim/logic_bombs/fdlibm/fdlibm_float/k_standard.c z3 900 results_fdlibm_float_z3_linked_external.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_float/k_tan_float.bc /home/jim/logic_bombs/fdlibm/fdlibm_float/k_tan.c z3 900 results_fdlibm_float_z3_linked_external.json
# sleep 30
# this one
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_float/s_asinh_float.bc /home/jim/logic_bombs/fdlibm/fdlibm_float/s_asinh.c z3 900 results_fdlibm_float_z3_linked_external.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_float/s_atan_float.bc /home/jim/logic_bombs/fdlibm/fdlibm_float/s_atan.c z3 900 results_fdlibm_float_z3_linked_external.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_float/s_cbrt_float.bc /home/jim/logic_bombs/fdlibm/fdlibm_float/s_cbrt.c z3 900 results_fdlibm_float_z3_linked_external.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_float/s_ceil_float.bc /home/jim/logic_bombs/fdlibm/fdlibm_float/s_ceil.c z3 900 results_fdlibm_float_z3_linked_external.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_float/s_copysign_float.bc /home/jim/logic_bombs/fdlibm/fdlibm_float/s_copysign.c z3 900 results_fdlibm_float_z3_linked_external.json
# sleep 30
# #this one
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_float/s_cos_float.bc /home/jim/logic_bombs/fdlibm/fdlibm_float/s_cos.c z3 900 results_fdlibm_float_z3_linked_external.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_float/s_erf_mainfloat.bc /home/jim/logic_bombs/fdlibm/fdlibm_coverage/s_erf.c z3 900 results_fdlibm_float_z3_reruns.json
# sleep 30

# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_float/s_matherr_mainfloat.bc /home/jim/logic_bombs/fdlibm/fdlibm_coverage/s_matherr.c z3 900 results_fdlibm_float_z3_reruns.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_float/s_expm1_float.bc /home/jim/logic_bombs/fdlibm/fdlibm_float/s_expm1.c z3 900 results_fdlibm_float_z3_linked_external.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_float/s_fabs_float.bc /home/jim/logic_bombs/fdlibm/fdlibm_float/s_fabs.c z3 900 results_fdlibm_float_z3_linked_external.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_float/s_finite_float.bc /home/jim/logic_bombs/fdlibm/fdlibm_float/s_finite.c z3 900 results_fdlibm_float_z3_linked_external.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_float/s_floor_float.bc /home/jim/logic_bombs/fdlibm/fdlibm_float/s_floor.c z3 900 results_fdlibm_float_z3_linked_external.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_float/s_frexp_float.bc /home/jim/logic_bombs/fdlibm/fdlibm_float/s_frexp.c z3 900 results_fdlibm_float_z3_linked_external.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_float/s_ilogb_float.bc /home/jim/logic_bombs/fdlibm/fdlibm_float/s_ilogb.c z3 900 results_fdlibm_float_z3_linked_external.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_float/s_isnan_float.bc /home/jim/logic_bombs/fdlibm/fdlibm_float/s_isnan.c z3 900 results_fdlibm_float_z3_linked_external.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_float/s_ldexp_float.bc /home/jim/logic_bombs/fdlibm/fdlibm_float/s_ldexp.c z3 900 results_fdlibm_float_z3_linked_external.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_float/s_log1p_float.bc /home/jim/logic_bombs/fdlibm/fdlibm_float/s_log1p.c z3 900 results_fdlibm_float_z3_linked_external.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_float/s_logb_float.bc /home/jim/logic_bombs/fdlibm/fdlibm_float/s_logb.c z3 900 results_fdlibm_float_z3_linked_external.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_float/s_modf_float.bc /home/jim/logic_bombs/fdlibm/fdlibm_float/s_modf.c z3 900 results_fdlibm_float_z3_linked_external.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_float/s_nextafter_float.bc /home/jim/logic_bombs/fdlibm/fdlibm_float/s_nextafter.c z3 900 results_fdlibm_float_z3_linked_external.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_float/s_rint_float.bc /home/jim/logic_bombs/fdlibm/fdlibm_float/s_rint.c z3 900 results_fdlibm_float_z3_linked_external.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_float/s_scalbn_float.bc /home/jim/logic_bombs/fdlibm/fdlibm_float/s_scalbn.c z3 900 results_fdlibm_float_z3_linked_external.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_float/s_significand_float.bc /home/jim/logic_bombs/fdlibm/fdlibm_float/s_significand.c z3 900 results_fdlibm_float_z3_linked_external.json
# sleep 30
# #do this
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_float/s_sin_float.bc /home/jim/logic_bombs/fdlibm/fdlibm_float/s_sin.c z3 900 results_fdlibm_float_z3_linked_external_temp_external.json

# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_float/s_tan_float.bc /home/jim/logic_bombs/fdlibm/fdlibm_float/s_tan.c z3 900 results_fdlibm_float_z3_linked_external.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_float/s_tanh_float.bc /home/jim/logic_bombs/fdlibm/fdlibm_float/s_tanh.c z3 900 results_fdlibm_float_z3_linked_external.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_float/w_acos_float.bc /home/jim/logic_bombs/fdlibm/fdlibm_float/w_acos.c z3 900 results_fdlibm_float_z3_linked_external.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_float/w_acosh_float.bc /home/jim/logic_bombs/fdlibm/fdlibm_float/w_acosh.c z3 900 results_fdlibm_float_z3_linked_external.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_float/w_asin_float.bc /home/jim/logic_bombs/fdlibm/fdlibm_float/w_asin.c z3 900 results_fdlibm_float_z3_linked_external.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_float/w_atan2_float.bc /home/jim/logic_bombs/fdlibm/fdlibm_float/w_atan2.c z3 900 results_fdlibm_float_z3_linked_external.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_float/w_atanh_float.bc /home/jim/logic_bombs/fdlibm/fdlibm_float/w_atanh.c z3 900 results_fdlibm_float_z3_linked_external.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_float/w_cosh_float.bc /home/jim/logic_bombs/fdlibm/fdlibm_float/w_cosh.c z3 900 results_fdlibm_float_z3_linked_external.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_float/w_exp_float.bc /home/jim/logic_bombs/fdlibm/fdlibm_float/w_exp.c z3 900 results_fdlibm_float_z3_linked_external.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_float/w_fmod_float.bc /home/jim/logic_bombs/fdlibm/fdlibm_float/w_fmod.c z3 900 results_fdlibm_float_z3_linked_external.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_float/w_gamma_float.bc /home/jim/logic_bombs/fdlibm/fdlibm_float/w_gamma.c z3 900 results_fdlibm_float_z3_linked_external.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_float/w_gamma_r_float.bc /home/jim/logic_bombs/fdlibm/fdlibm_float/w_gamma_r.c z3 900 results_fdlibm_float_z3_linked_external.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_float/w_hypot_float.bc /home/jim/logic_bombs/fdlibm/fdlibm_float/w_hypot.c z3 900 results_fdlibm_float_z3_linked_external.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_float/w_j0_float.bc /home/jim/logic_bombs/fdlibm/fdlibm_float/w_j0.c z3 900 results_fdlibm_float_z3_linked_external.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_float/w_j1_float.bc /home/jim/logic_bombs/fdlibm/fdlibm_float/w_j1.c z3 900 results_fdlibm_float_z3_linked_external.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_float/w_jn_float.bc /home/jim/logic_bombs/fdlibm/fdlibm_float/w_jn.c z3 900 results_fdlibm_float_z3_linked_external.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_float/w_lgamma_float.bc /home/jim/logic_bombs/fdlibm/fdlibm_float/w_lgamma.c z3 900 results_fdlibm_float_z3_linked_external.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_float/w_lgamma_r_float.bc /home/jim/logic_bombs/fdlibm/fdlibm_float/w_lgamma_r.c z3 900 results_fdlibm_float_z3_linked_external.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_float/w_log_float.bc /home/jim/logic_bombs/fdlibm/fdlibm_float/w_log.c z3 900 results_fdlibm_float_z3_linked_external.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_float/w_log10_float.bc /home/jim/logic_bombs/fdlibm/fdlibm_float/w_log10.c z3 900 results_fdlibm_float_z3_linked_external.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_float/w_pow_float.bc /home/jim/logic_bombs/fdlibm/fdlibm_float/w_pow.c z3 900 results_fdlibm_float_z3_linked_external.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_float/w_remainder_float.bc /home/jim/logic_bombs/fdlibm/fdlibm_float/w_remainder.c z3 900 results_fdlibm_float_z3_linked_external.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_float/w_scalb_float.bc /home/jim/logic_bombs/fdlibm/fdlibm_float/w_scalb.c z3 900 results_fdlibm_float_z3_linked_external.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_float/w_sinh_float.bc /home/jim/logic_bombs/fdlibm/fdlibm_float/w_sinh.c z3 900 results_fdlibm_float_z3_linked_external.json
# sleep 30
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_float/w_sqrt_float.bc /home/jim/logic_bombs/fdlibm/fdlibm_float/w_sqrt.c z3 900 results_fdlibm_float_z3_linked_external.json

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
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/e_remainder.bc /home/jim/logic_bombs/fdlibm/fdlibm_simple/e_remainder.c stp 900 results_fdlibm_simple_stp_linked.json
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

./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/s_erf_mainsimple.bc /home/jim/logic_bombs/fdlibm/fdlibm_coverage/s_erf.c z3 900 results_fdlibm_simple_reruns_z3.json
sleep 30

./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/e_j0_mainsimple.bc /home/jim/logic_bombs/fdlibm/fdlibm_coverage/e_j0.c z3 900 results_fdlibm_simple_reruns_z3.json
sleep 30
./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/e_j1_mainsimple.bc /home/jim/logic_bombs/fdlibm/fdlibm_coverage/e_j1.c z3 900 results_fdlibm_simple_reruns_z3.json
sleep 30
./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/e_jn_mainsimple.bc /home/jim/logic_bombs/fdlibm/fdlibm_coverage/e_jn.c z3 900 results_fdlibm_simple_reruns_z3.json
sleep 30
./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_simple/s_matherr_mainsimple.bc /home/jim/logic_bombs/fdlibm/fdlibm_coverage/s_matherr.c z3 900 results_fdlibm_simple_reruns_z3.json
sleep 30
./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_float/s_sin_mainfloat.bc /home/jim/logic_bombs/fdlibm/fdlibm_coverage/s_sin.c z3 900 results_fdlibm_float_z3_reruns_s_sin.json
