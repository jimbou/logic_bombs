#!/usr/bin/env bash
set -euo pipefail
# FAIL_LOG="failed_fdlibm_float_runs.log"
# : > "$FAIL_LOG"   # clear previous failures

# run_safe() {
#   echo ">>> RUNNING: $*"
#   if ! "$@"; then
#     echo "FAILED: $*" | tee -a "$FAIL_LOG"
#   fi
# }

# run_safe ./run_bc_fdlibm.sh /home/klee/logic_bombs/fdlibm/fdlibm_main_float/e_acos_float.bc /home/klee/logic_bombs/fdlibm/fdlibm_float/e_acos.c z3 900 results_fdlibm_float_z3_linked.json
# sleep 6
# run_safe ./run_bc_fdlibm.sh /home/klee/logic_bombs/fdlibm/fdlibm_main_float/e_acosh_float.bc /home/klee/logic_bombs/fdlibm/fdlibm_float/e_acosh.c z3 900 results_fdlibm_float_z3_linked.json
# sleep 6
# run_safe ./run_bc_fdlibm.sh /home/klee/logic_bombs/fdlibm/fdlibm_main_float/e_asin_float.bc /home/klee/logic_bombs/fdlibm/fdlibm_float/e_asin.c z3 900 results_fdlibm_float_z3_linked.json
# sleep 6
# run_safe ./run_bc_fdlibm.sh /home/klee/logic_bombs/fdlibm/fdlibm_main_float/e_atan2_float.bc /home/klee/logic_bombs/fdlibm/fdlibm_float/e_atan2.c z3 900 results_fdlibm_float_z3_linked.json
# sleep 6
# run_safe ./run_bc_fdlibm.sh /home/klee/logic_bombs/fdlibm/fdlibm_main_float/e_atanh_float.bc /home/klee/logic_bombs/fdlibm/fdlibm_float/e_atanh.c z3 900 results_fdlibm_float_z3_linked.json
# sleep 6
# run_safe ./run_bc_fdlibm.sh /home/klee/logic_bombs/fdlibm/fdlibm_main_float/e_cosh_float.bc /home/klee/logic_bombs/fdlibm/fdlibm_float/e_cosh.c z3 900 results_fdlibm_float_z3_linked.json
# sleep 6
# run_safe ./run_bc_fdlibm.sh /home/klee/logic_bombs/fdlibm/fdlibm_main_float/e_exp_float.bc /home/klee/logic_bombs/fdlibm/fdlibm_float/e_exp.c z3 900 results_fdlibm_float_z3_linked.json
# sleep 6
# run_safe ./run_bc_fdlibm.sh /home/klee/logic_bombs/fdlibm/fdlibm_main_float/e_fmod_float.bc /home/klee/logic_bombs/fdlibm/fdlibm_float/e_fmod.c z3 900 results_fdlibm_float_z3_linked.json
# sleep 6
# run_safe ./run_bc_fdlibm.sh /home/klee/logic_bombs/fdlibm/fdlibm_main_float/e_gamma_float.bc /home/klee/logic_bombs/fdlibm/fdlibm_float/e_gamma.c z3 900 results_fdlibm_float_z3_linked.json
# sleep 6
# run_safe ./run_bc_fdlibm.sh /home/klee/logic_bombs/fdlibm/fdlibm_main_float/e_gamma_r_float.bc /home/klee/logic_bombs/fdlibm/fdlibm_float/e_gamma_r.c z3 900 results_fdlibm_float_z3_linked.json
# sleep 6
# run_safe ./run_bc_fdlibm.sh /home/klee/logic_bombs/fdlibm/fdlibm_main_float/e_hypot_float.bc /home/klee/logic_bombs/fdlibm/fdlibm_float/e_hypot.c z3 900 results_fdlibm_float_z3_linked.json
# sleep 6
# run_safe ./run_bc_fdlibm.sh /home/klee/logic_bombs/fdlibm/fdlibm_main_float/e_j0_float.bc /home/klee/logic_bombs/fdlibm/fdlibm_float/e_j0.c z3 900 results_fdlibm_float_z3_linked.json
# sleep 6
# run_safe ./run_bc_fdlibm.sh /home/klee/logic_bombs/fdlibm/fdlibm_main_float/e_j1_float.bc /home/klee/logic_bombs/fdlibm/fdlibm_float/e_j1.c z3 900 results_fdlibm_float_z3_linked.json
# sleep 6
# run_safe ./run_bc_fdlibm.sh /home/klee/logic_bombs/fdlibm/fdlibm_main_float/e_jn_float.bc /home/klee/logic_bombs/fdlibm/fdlibm_float/e_jn.c z3 900 results_fdlibm_float_z3_linked.json
# sleep 6
# run_safe ./run_bc_fdlibm.sh /home/klee/logic_bombs/fdlibm/fdlibm_main_float/e_lgamma_float.bc /home/klee/logic_bombs/fdlibm/fdlibm_float/e_lgamma.c z3 900 results_fdlibm_float_z3_linked.json
# sleep 6
# run_safe ./run_bc_fdlibm.sh /home/klee/logic_bombs/fdlibm/fdlibm_main_float/e_lgamma_r_float.bc /home/klee/logic_bombs/fdlibm/fdlibm_float/e_lgamma_r.c z3 900 results_fdlibm_float_z3_linked.json
# sleep 6
# run_safe ./run_bc_fdlibm.sh /home/klee/logic_bombs/fdlibm/fdlibm_main_float/e_log_float.bc /home/klee/logic_bombs/fdlibm/fdlibm_float/e_log.c z3 900 results_fdlibm_float_z3_linked.json
# sleep 6
# run_safe ./run_bc_fdlibm.sh /home/klee/logic_bombs/fdlibm/fdlibm_main_float/e_log10_float.bc /home/klee/logic_bombs/fdlibm/fdlibm_float/e_log10.c z3 900 results_fdlibm_float_z3_linked.json
# sleep 6
# run_safe ./run_bc_fdlibm.sh /home/klee/logic_bombs/fdlibm/fdlibm_main_float/e_pow_float.bc /home/klee/logic_bombs/fdlibm/fdlibm_float/e_pow.c z3 900 results_fdlibm_float_z3_linked.json
# sleep 6
# run_safe ./run_bc_fdlibm.sh /home/klee/logic_bombs/fdlibm/fdlibm_main_float/e_rem_pio2_float.bc /home/klee/logic_bombs/fdlibm/fdlibm_float/e_rem_pio2.c z3 900 results_fdlibm_float_z3_linked.json
# sleep 6
# run_safe ./run_bc_fdlibm.sh /home/klee/logic_bombs/fdlibm/fdlibm_main_float/e_remainder_float.bc /home/klee/logic_bombs/fdlibm/fdlibm_float/e_remainder.c z3 900 results_fdlibm_float_z3_linked.json
# sleep 6
# run_safe ./run_bc_fdlibm.sh /home/klee/logic_bombs/fdlibm/fdlibm_main_float/e_scalb_float.bc /home/klee/logic_bombs/fdlibm/fdlibm_float/e_scalb.c z3 900 results_fdlibm_float_z3_linked.json
# sleep 6
# run_safe ./run_bc_fdlibm.sh /home/klee/logic_bombs/fdlibm/fdlibm_main_float/e_sinh_float.bc /home/klee/logic_bombs/fdlibm/fdlibm_float/e_sinh.c z3 900 results_fdlibm_float_z3_linked.json
# sleep 6
# run_safe ./run_bc_fdlibm.sh /home/klee/logic_bombs/fdlibm/fdlibm_main_float/e_sqrt_float.bc /home/klee/logic_bombs/fdlibm/fdlibm_float/e_sqrt.c z3 900 results_fdlibm_float_z3_linked.json
# sleep 6
# run_safe ./run_bc_fdlibm.sh /home/klee/logic_bombs/fdlibm/fdlibm_main_float/k_cos_float.bc /home/klee/logic_bombs/fdlibm/fdlibm_float/k_cos.c z3 900 results_fdlibm_float_z3_linked.json
# sleep 6
# run_safe ./run_bc_fdlibm.sh /home/klee/logic_bombs/fdlibm/fdlibm_main_float/k_sin_float.bc /home/klee/logic_bombs/fdlibm/fdlibm_float/k_sin.c z3 900 results_fdlibm_float_z3_linked.json
# sleep 6
# run_safe ./run_bc_fdlibm.sh /home/klee/logic_bombs/fdlibm/fdlibm_main_float/k_standard_float.bc /home/klee/logic_bombs/fdlibm/fdlibm_float/k_standard.c z3 900 results_fdlibm_float_z3_linked.json
# sleep 6
# run_safe ./run_bc_fdlibm.sh /home/klee/logic_bombs/fdlibm/fdlibm_main_float/k_tan_float.bc /home/klee/logic_bombs/fdlibm/fdlibm_float/k_tan.c z3 900 results_fdlibm_float_z3_linked.json
# sleep 6
# this one
# run_safe ./run_bc_fdlibm.sh /home/klee/logic_bombs/fdlibm/fdlibm_main_float/s_asinh_float.bc /home/klee/logic_bombs/fdlibm/fdlibm_float/s_asinh.c z3 900 results_fdlibm_float_z3_linked.json
# sleep 6
# run_safe ./run_bc_fdlibm.sh /home/klee/logic_bombs/fdlibm/fdlibm_main_float/s_atan_float.bc /home/klee/logic_bombs/fdlibm/fdlibm_float/s_atan.c z3 900 results_fdlibm_float_z3_linked.json
# sleep 6
# run_safe ./run_bc_fdlibm.sh /home/klee/logic_bombs/fdlibm/fdlibm_main_float/s_cbrt_float.bc /home/klee/logic_bombs/fdlibm/fdlibm_float/s_cbrt.c z3 900 results_fdlibm_float_z3_linked.json
# sleep 6
# run_safe ./run_bc_fdlibm.sh /home/klee/logic_bombs/fdlibm/fdlibm_main_float/s_ceil_float.bc /home/klee/logic_bombs/fdlibm/fdlibm_float/s_ceil.c z3 900 results_fdlibm_float_z3_linked.json
# sleep 6
# run_safe ./run_bc_fdlibm.sh /home/klee/logic_bombs/fdlibm/fdlibm_main_float/s_copysign_float.bc /home/klee/logic_bombs/fdlibm/fdlibm_float/s_copysign.c z3 900 results_fdlibm_float_z3_linked.json
# sleep 6
#this one
# run_safe ./run_bc_fdlibm.sh /home/klee/logic_bombs/fdlibm/fdlibm_main_float/s_cos_float.bc /home/klee/logic_bombs/fdlibm/fdlibm_float/s_cos.c z3 900 results_fdlibm_float_z3_linked.json
# sleep 6
# ./run_bc_fdlibm.sh /home/klee/logic_bombs/fdlibm/fdlibm_main_float/s_erf_float.bc /home/klee/logic_bombs/fdlibm/fdlibm_float/s_erf.c z3 900 results_fdlibm_float_z3_linked.json
# sleep 6
# ./run_bc_fdlibm.sh /home/klee/logic_bombs/fdlibm/fdlibm_main_float/s_expm1_float.bc /home/klee/logic_bombs/fdlibm/fdlibm_float/s_expm1.c z3 900 results_fdlibm_float_z3_linked.json
# sleep 6
# ./run_bc_fdlibm.sh /home/klee/logic_bombs/fdlibm/fdlibm_main_float/s_fabs_float.bc /home/klee/logic_bombs/fdlibm/fdlibm_float/s_fabs.c z3 900 results_fdlibm_float_z3_linked.json
# sleep 6
# ./run_bc_fdlibm.sh /home/klee/logic_bombs/fdlibm/fdlibm_main_float/s_finite_float.bc /home/klee/logic_bombs/fdlibm/fdlibm_float/s_finite.c z3 900 results_fdlibm_float_z3_linked.json
# sleep 6
# ./run_bc_fdlibm.sh /home/klee/logic_bombs/fdlibm/fdlibm_main_float/s_floor_float.bc /home/klee/logic_bombs/fdlibm/fdlibm_float/s_floor.c z3 900 results_fdlibm_float_z3_linked.json
# sleep 6
# ./run_bc_fdlibm.sh /home/klee/logic_bombs/fdlibm/fdlibm_main_float/s_frexp_float.bc /home/klee/logic_bombs/fdlibm/fdlibm_float/s_frexp.c z3 900 results_fdlibm_float_z3_linked.json
# sleep 6
# ./run_bc_fdlibm.sh /home/klee/logic_bombs/fdlibm/fdlibm_main_float/s_ilogb_float.bc /home/klee/logic_bombs/fdlibm/fdlibm_float/s_ilogb.c z3 900 results_fdlibm_float_z3_linked.json
# sleep 6
# ./run_bc_fdlibm.sh /home/klee/logic_bombs/fdlibm/fdlibm_main_float/s_isnan_float.bc /home/klee/logic_bombs/fdlibm/fdlibm_float/s_isnan.c z3 900 results_fdlibm_float_z3_linked.json
# sleep 6
# ./run_bc_fdlibm.sh /home/klee/logic_bombs/fdlibm/fdlibm_main_float/s_ldexp_float.bc /home/klee/logic_bombs/fdlibm/fdlibm_float/s_ldexp.c z3 900 results_fdlibm_float_z3_linked.json
# sleep 6
# ./run_bc_fdlibm.sh /home/klee/logic_bombs/fdlibm/fdlibm_main_float/s_log1p_float.bc /home/klee/logic_bombs/fdlibm/fdlibm_float/s_log1p.c z3 900 results_fdlibm_float_z3_linked.json
# sleep 6
# ./run_bc_fdlibm.sh /home/klee/logic_bombs/fdlibm/fdlibm_main_float/s_logb_float.bc /home/klee/logic_bombs/fdlibm/fdlibm_float/s_logb.c z3 900 results_fdlibm_float_z3_linked.json
# sleep 6
# ./run_bc_fdlibm.sh /home/klee/logic_bombs/fdlibm/fdlibm_main_float/s_modf_float.bc /home/klee/logic_bombs/fdlibm/fdlibm_float/s_modf.c z3 900 results_fdlibm_float_z3_linked.json
# sleep 6
# ./run_bc_fdlibm.sh /home/klee/logic_bombs/fdlibm/fdlibm_main_float/s_nextafter_float.bc /home/klee/logic_bombs/fdlibm/fdlibm_float/s_nextafter.c z3 900 results_fdlibm_float_z3_linked.json
# sleep 6
# ./run_bc_fdlibm.sh /home/klee/logic_bombs/fdlibm/fdlibm_main_float/s_rint_float.bc /home/klee/logic_bombs/fdlibm/fdlibm_float/s_rint.c z3 900 results_fdlibm_float_z3_linked.json
# sleep 6
# ./run_bc_fdlibm.sh /home/klee/logic_bombs/fdlibm/fdlibm_main_float/s_scalbn_float.bc /home/klee/logic_bombs/fdlibm/fdlibm_float/s_scalbn.c z3 900 results_fdlibm_float_z3_linked.json
# sleep 6
# ./run_bc_fdlibm.sh /home/klee/logic_bombs/fdlibm/fdlibm_main_float/s_significand_float.bc /home/klee/logic_bombs/fdlibm/fdlibm_float/s_significand.c z3 900 results_fdlibm_float_z3_linked.json
# sleep 6
#do this
# ./run_bc_fdlibm_external.sh /home/jim/logic_bombs/fdlibm/fdlibm_main_float/s_sin_float.bc /home/jim/logic_bombs/fdlibm/fdlibm_float/s_sin.c z3 30 results_fdlibm_float_z3_linked_external_temp.json

sleep 6
# ./run_bc_fdlibm.sh /home/klee/logic_bombs/fdlibm/fdlibm_main_float/s_tan_float.bc /home/klee/logic_bombs/fdlibm/fdlibm_float/s_tan.c z3 900 results_fdlibm_float_z3_linked.json
# sleep 6
# ./run_bc_fdlibm.sh /home/klee/logic_bombs/fdlibm/fdlibm_main_float/s_tanh_float.bc /home/klee/logic_bombs/fdlibm/fdlibm_float/s_tanh.c z3 900 results_fdlibm_float_z3_linked.json
# sleep 6
# ./run_bc_fdlibm.sh /home/klee/logic_bombs/fdlibm/fdlibm_main_float/w_acos_float.bc /home/klee/logic_bombs/fdlibm/fdlibm_float/w_acos.c z3 900 results_fdlibm_float_z3_linked.json
sleep 6
./run_bc_fdlibm.sh /home/klee/logic_bombs/fdlibm/fdlibm_main_float/w_acosh_float.bc /home/klee/logic_bombs/fdlibm/fdlibm_float/w_acosh.c z3 900 results_fdlibm_float_z3_linked.json
sleep 6
./run_bc_fdlibm.sh /home/klee/logic_bombs/fdlibm/fdlibm_main_float/w_asin_float.bc /home/klee/logic_bombs/fdlibm/fdlibm_float/w_asin.c z3 900 results_fdlibm_float_z3_linked.json
sleep 6
./run_bc_fdlibm.sh /home/klee/logic_bombs/fdlibm/fdlibm_main_float/w_atan2_float.bc /home/klee/logic_bombs/fdlibm/fdlibm_float/w_atan2.c z3 900 results_fdlibm_float_z3_linked.json
sleep 6
./run_bc_fdlibm.sh /home/klee/logic_bombs/fdlibm/fdlibm_main_float/w_atanh_float.bc /home/klee/logic_bombs/fdlibm/fdlibm_float/w_atanh.c z3 900 results_fdlibm_float_z3_linked.json
sleep 6
./run_bc_fdlibm.sh /home/klee/logic_bombs/fdlibm/fdlibm_main_float/w_cosh_float.bc /home/klee/logic_bombs/fdlibm/fdlibm_float/w_cosh.c z3 900 results_fdlibm_float_z3_linked.json
sleep 6
./run_bc_fdlibm.sh /home/klee/logic_bombs/fdlibm/fdlibm_main_float/w_exp_float.bc /home/klee/logic_bombs/fdlibm/fdlibm_float/w_exp.c z3 900 results_fdlibm_float_z3_linked.json
sleep 6
./run_bc_fdlibm.sh /home/klee/logic_bombs/fdlibm/fdlibm_main_float/w_fmod_float.bc /home/klee/logic_bombs/fdlibm/fdlibm_float/w_fmod.c z3 900 results_fdlibm_float_z3_linked.json
sleep 6
./run_bc_fdlibm.sh /home/klee/logic_bombs/fdlibm/fdlibm_main_float/w_gamma_float.bc /home/klee/logic_bombs/fdlibm/fdlibm_float/w_gamma.c z3 900 results_fdlibm_float_z3_linked.json
sleep 6
./run_bc_fdlibm.sh /home/klee/logic_bombs/fdlibm/fdlibm_main_float/w_gamma_r_float.bc /home/klee/logic_bombs/fdlibm/fdlibm_float/w_gamma_r.c z3 900 results_fdlibm_float_z3_linked.json
sleep 6
./run_bc_fdlibm.sh /home/klee/logic_bombs/fdlibm/fdlibm_main_float/w_hypot_float.bc /home/klee/logic_bombs/fdlibm/fdlibm_float/w_hypot.c z3 900 results_fdlibm_float_z3_linked.json
sleep 6
./run_bc_fdlibm.sh /home/klee/logic_bombs/fdlibm/fdlibm_main_float/w_j0_float.bc /home/klee/logic_bombs/fdlibm/fdlibm_float/w_j0.c z3 900 results_fdlibm_float_z3_linked.json
sleep 6
./run_bc_fdlibm.sh /home/klee/logic_bombs/fdlibm/fdlibm_main_float/w_j1_float.bc /home/klee/logic_bombs/fdlibm/fdlibm_float/w_j1.c z3 900 results_fdlibm_float_z3_linked.json
sleep 6
./run_bc_fdlibm.sh /home/klee/logic_bombs/fdlibm/fdlibm_main_float/w_jn_float.bc /home/klee/logic_bombs/fdlibm/fdlibm_float/w_jn.c z3 900 results_fdlibm_float_z3_linked.json
sleep 6
./run_bc_fdlibm.sh /home/klee/logic_bombs/fdlibm/fdlibm_main_float/w_lgamma_float.bc /home/klee/logic_bombs/fdlibm/fdlibm_float/w_lgamma.c z3 900 results_fdlibm_float_z3_linked.json
sleep 6
./run_bc_fdlibm.sh /home/klee/logic_bombs/fdlibm/fdlibm_main_float/w_lgamma_r_float.bc /home/klee/logic_bombs/fdlibm/fdlibm_float/w_lgamma_r.c z3 900 results_fdlibm_float_z3_linked.json
sleep 6
./run_bc_fdlibm.sh /home/klee/logic_bombs/fdlibm/fdlibm_main_float/w_log_float.bc /home/klee/logic_bombs/fdlibm/fdlibm_float/w_log.c z3 900 results_fdlibm_float_z3_linked.json
sleep 6
./run_bc_fdlibm.sh /home/klee/logic_bombs/fdlibm/fdlibm_main_float/w_log10_float.bc /home/klee/logic_bombs/fdlibm/fdlibm_float/w_log10.c z3 900 results_fdlibm_float_z3_linked.json
sleep 6
./run_bc_fdlibm.sh /home/klee/logic_bombs/fdlibm/fdlibm_main_float/w_pow_float.bc /home/klee/logic_bombs/fdlibm/fdlibm_float/w_pow.c z3 900 results_fdlibm_float_z3_linked.json
sleep 6
./run_bc_fdlibm.sh /home/klee/logic_bombs/fdlibm/fdlibm_main_float/w_remainder_float.bc /home/klee/logic_bombs/fdlibm/fdlibm_float/w_remainder.c z3 900 results_fdlibm_float_z3_linked.json
sleep 6
./run_bc_fdlibm.sh /home/klee/logic_bombs/fdlibm/fdlibm_main_float/w_scalb_float.bc /home/klee/logic_bombs/fdlibm/fdlibm_float/w_scalb.c z3 900 results_fdlibm_float_z3_linked.json
sleep 6
./run_bc_fdlibm.sh /home/klee/logic_bombs/fdlibm/fdlibm_main_float/w_sinh_float.bc /home/klee/logic_bombs/fdlibm/fdlibm_float/w_sinh.c z3 900 results_fdlibm_float_z3_linked.json
sleep 6
./run_bc_fdlibm.sh /home/klee/logic_bombs/fdlibm/fdlibm_main_float/w_sqrt_float.bc /home/klee/logic_bombs/fdlibm/fdlibm_float/w_sqrt.c z3 900 results_fdlibm_float_z3_linked.json
