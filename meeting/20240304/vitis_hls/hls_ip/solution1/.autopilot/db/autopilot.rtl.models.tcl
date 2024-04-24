set SynModuleInfo {
  {SRCNAME process_block.111.112 MODELNAME process_block_111_112 RTLNAME keygen_process_block_111_112
    SUBMODULES {
      {MODELNAME keygen_process_block_111_112_RC_ROM_AUTO_1R RTLNAME keygen_process_block_111_112_RC_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME get_rng_u64.82.101 MODELNAME get_rng_u64_82_101 RTLNAME keygen_get_rng_u64_82_101
    SUBMODULES {
      {MODELNAME keygen_mux_2561_64_1_1 RTLNAME keygen_mux_2561_64_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME keygen_get_rng_u64_82_101_tmp_RAM_AUTO_1R1W RTLNAME keygen_get_rng_u64_82_101_tmp_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME poly_small_mkgauss MODELNAME poly_small_mkgauss RTLNAME keygen_poly_small_mkgauss
    SUBMODULES {
      {MODELNAME keygen_poly_small_mkgauss_gauss_1024_12289_ROM_AUTO_1R RTLNAME keygen_poly_small_mkgauss_gauss_1024_12289_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME fpr_of MODELNAME fpr_of RTLNAME keygen_fpr_of
    SUBMODULES {
      {MODELNAME keygen_sitodp_64ns_64_2_no_dsp_1 RTLNAME keygen_sitodp_64ns_64_2_no_dsp_1 BINDTYPE op TYPE sitodp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME FFT MODELNAME FFT RTLNAME keygen_FFT
    SUBMODULES {
      {MODELNAME keygen_dadddsub_64ns_64ns_64_2_full_dsp_1 RTLNAME keygen_dadddsub_64ns_64ns_64_2_full_dsp_1 BINDTYPE op TYPE dsub IMPL fulldsp LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME keygen_dadd_64ns_64ns_64_2_full_dsp_1 RTLNAME keygen_dadd_64ns_64ns_64_2_full_dsp_1 BINDTYPE op TYPE dadd IMPL fulldsp LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME keygen_dsub_64ns_64ns_64_2_full_dsp_1 RTLNAME keygen_dsub_64ns_64ns_64_2_full_dsp_1 BINDTYPE op TYPE dsub IMPL fulldsp LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME keygen_dmul_64ns_64ns_64_2_max_dsp_1 RTLNAME keygen_dmul_64ns_64ns_64_2_max_dsp_1 BINDTYPE op TYPE dmul IMPL maxdsp LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME keygen_FFT_fpr_gm_tab_ROM_AUTO_1R RTLNAME keygen_FFT_fpr_gm_tab_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME iFFT MODELNAME iFFT RTLNAME keygen_iFFT}
  {SRCNAME mq_NTT MODELNAME mq_NTT RTLNAME keygen_mq_NTT
    SUBMODULES {
      {MODELNAME keygen_mul_mul_16ns_14ns_30_4_1 RTLNAME keygen_mul_mul_16ns_14ns_30_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME keygen_mul_mul_16s_14ns_16_4_1 RTLNAME keygen_mul_mul_16s_14ns_16_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME keygen_mac_muladd_16ns_14ns_30ns_31_4_1 RTLNAME keygen_mac_muladd_16ns_14ns_30ns_31_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME keygen_mq_NTT_GMb_ROM_AUTO_1R RTLNAME keygen_mq_NTT_GMb_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME mq_NTT.1 MODELNAME mq_NTT_1 RTLNAME keygen_mq_NTT_1}
  {SRCNAME mq_montysqr MODELNAME mq_montysqr RTLNAME keygen_mq_montysqr
    SUBMODULES {
      {MODELNAME keygen_mul_mul_17s_17s_32_4_1 RTLNAME keygen_mul_mul_17s_17s_32_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME keygen_mac_muladd_16ns_14ns_32s_32_4_1 RTLNAME keygen_mac_muladd_16ns_14ns_32s_32_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME compute_public.1 MODELNAME compute_public_1 RTLNAME keygen_compute_public_1
    SUBMODULES {
      {MODELNAME keygen_mul_mul_16ns_15ns_16_4_1 RTLNAME keygen_mul_mul_16ns_15ns_16_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME keygen_mul_mul_16s_17s_32_4_1 RTLNAME keygen_mul_mul_16s_17s_32_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME keygen_mul_mul_17s_16ns_32_4_1 RTLNAME keygen_mul_mul_17s_16ns_32_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME keygen_am_addmul_15s_17s_14ns_32_4_1 RTLNAME keygen_am_addmul_15s_17s_14ns_32_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME keygen_ama_submuladd_1ns_16ns_14ns_22ns_30_4_1 RTLNAME keygen_ama_submuladd_1ns_16ns_14ns_22ns_30_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME keygen_compute_public_1_iGMb_ROM_AUTO_1R RTLNAME keygen_compute_public_1_iGMb_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME modp_montymul MODELNAME modp_montymul RTLNAME keygen_modp_montymul
    SUBMODULES {
      {MODELNAME keygen_mul_32ns_32ns_63_1_1 RTLNAME keygen_mul_32ns_32ns_63_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME keygen_mul_31s_31s_31_1_1 RTLNAME keygen_mul_31s_31s_31_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME keygen_mul_31ns_32ns_62_1_1 RTLNAME keygen_mul_31ns_32ns_62_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME modp_mkgm2.1 MODELNAME modp_mkgm2_1 RTLNAME keygen_modp_mkgm2_1
    SUBMODULES {
      {MODELNAME keygen_modp_mkgm2_1_REV10_ROM_AUTO_1R RTLNAME keygen_modp_mkgm2_1_REV10_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME modp_NTT2_ext.1 MODELNAME modp_NTT2_ext_1 RTLNAME keygen_modp_NTT2_ext_1
    SUBMODULES {
      {MODELNAME keygen_mul_mul_13s_8ns_13_4_1 RTLNAME keygen_mul_mul_13s_8ns_13_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME modp_iNTT2_ext.1 MODELNAME modp_iNTT2_ext_1 RTLNAME keygen_modp_iNTT2_ext_1
    SUBMODULES {
      {MODELNAME keygen_mul_31ns_31ns_62_1_1 RTLNAME keygen_mul_31ns_31ns_62_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME keygen_mul_mul_13s_9ns_13_4_1 RTLNAME keygen_mul_mul_13s_9ns_13_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME FFT.1 MODELNAME FFT_1 RTLNAME keygen_FFT_1}
  {SRCNAME iFFT.1 MODELNAME iFFT_1 RTLNAME keygen_iFFT_1
    SUBMODULES {
      {MODELNAME keygen_iFFT_1_fpr_p2_tab_ROM_AUTO_1R RTLNAME keygen_iFFT_1_fpr_p2_tab_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME fpr_rint MODELNAME fpr_rint RTLNAME keygen_fpr_rint}
  {SRCNAME zint_mod_small_signed.1 MODELNAME zint_mod_small_signed_1 RTLNAME keygen_zint_mod_small_signed_1
    SUBMODULES {
      {MODELNAME keygen_mul_31ns_32ns_63_1_1 RTLNAME keygen_mul_31ns_32ns_63_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME zint_rebuild_CRT.1 MODELNAME zint_rebuild_CRT_1 RTLNAME keygen_zint_rebuild_CRT_1
    SUBMODULES {
      {MODELNAME keygen_mul_25s_24ns_31_1_1 RTLNAME keygen_mul_25s_24ns_31_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME keygen_mul_31s_24ns_31_1_1 RTLNAME keygen_mul_31s_24ns_31_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME keygen_mul_25s_31s_31_1_1 RTLNAME keygen_mul_25s_31s_31_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME keygen_mul_32ns_31ns_63_1_1 RTLNAME keygen_mul_32ns_31ns_63_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME keygen_zint_rebuild_CRT_1_PRIMES_p_ROM_AUTO_1R RTLNAME keygen_zint_rebuild_CRT_1_PRIMES_p_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME keygen_zint_rebuild_CRT_1_PRIMES_s_ROM_AUTO_1R RTLNAME keygen_zint_rebuild_CRT_1_PRIMES_s_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME poly_big_to_fp.1 MODELNAME poly_big_to_fp_1 RTLNAME keygen_poly_big_to_fp_1}
  {SRCNAME poly_mul_fft.1 MODELNAME poly_mul_fft_1 RTLNAME keygen_poly_mul_fft_1}
  {SRCNAME make_fg_step.1 MODELNAME make_fg_step_1 RTLNAME keygen_make_fg_step_1
    SUBMODULES {
      {MODELNAME keygen_mul_8ns_61s_61_1_1 RTLNAME keygen_mul_8ns_61s_61_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME keygen_make_fg_step_1_MAX_BL_SMALL_ROM_AUTO_1R RTLNAME keygen_make_fg_step_1_MAX_BL_SMALL_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME keygen_make_fg_step_1_PRIMES_g_ROM_AUTO_1R RTLNAME keygen_make_fg_step_1_PRIMES_g_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME make_fg.1 MODELNAME make_fg_1 RTLNAME keygen_make_fg_1}
  {SRCNAME zint_co_reduce_mod.1 MODELNAME zint_co_reduce_mod_1 RTLNAME keygen_zint_co_reduce_mod_1
    SUBMODULES {
      {MODELNAME keygen_mul_32ns_64s_64_1_1 RTLNAME keygen_mul_32ns_64s_64_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME zint_bezout.1 MODELNAME zint_bezout_1 RTLNAME keygen_zint_bezout_1
    SUBMODULES {
      {MODELNAME keygen_mul_64s_32ns_64_1_1 RTLNAME keygen_mul_64s_32ns_64_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME poly_sub_scaled.1 MODELNAME poly_sub_scaled_1 RTLNAME keygen_poly_sub_scaled_1
    SUBMODULES {
      {MODELNAME keygen_mul_31ns_32s_63_1_1 RTLNAME keygen_mul_31ns_32s_63_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME poly_sub_scaled_ntt.1 MODELNAME poly_sub_scaled_ntt_1 RTLNAME keygen_poly_sub_scaled_ntt_1
    SUBMODULES {
      {MODELNAME keygen_mac_muladd_13s_8ns_12ns_13_4_1 RTLNAME keygen_mac_muladd_13s_8ns_12ns_13_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME keygen_ama_addmuladd_13s_13ns_8ns_12ns_13_4_1 RTLNAME keygen_ama_addmuladd_13s_13ns_8ns_12ns_13_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME solve_NTRU_all.1 MODELNAME solve_NTRU_all_1 RTLNAME keygen_solve_NTRU_all_1
    SUBMODULES {
      {MODELNAME keygen_ddiv_64ns_64ns_64_6_no_dsp_1 RTLNAME keygen_ddiv_64ns_64ns_64_6_no_dsp_1 BINDTYPE op TYPE ddiv IMPL fabric LATENCY 5 ALLOW_PRAGMA 1}
      {MODELNAME keygen_dcmp_64ns_64ns_1_1_no_dsp_1 RTLNAME keygen_dcmp_64ns_64ns_1_1_no_dsp_1 BINDTYPE op TYPE dcmp IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME keygen_mul_32ns_15ns_46_1_1 RTLNAME keygen_mul_32ns_15ns_46_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME keygen_mul_8ns_64s_64_1_1 RTLNAME keygen_mul_8ns_64s_64_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME keygen_mul_32s_34ns_65_1_1 RTLNAME keygen_mul_32s_34ns_65_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME keygen_srem_32s_6ns_6_36_seq_1 RTLNAME keygen_srem_32s_6ns_6_36_seq_1 BINDTYPE op TYPE srem IMPL auto_seq LATENCY 35 ALLOW_PRAGMA 1}
      {MODELNAME keygen_solve_NTRU_all_1_MAX_BL_LARGE_ROM_AUTO_1R RTLNAME keygen_solve_NTRU_all_1_MAX_BL_LARGE_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME keygen_solve_NTRU_all_1_BITLENGTH_avg_ROM_AUTO_1R RTLNAME keygen_solve_NTRU_all_1_BITLENGTH_avg_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME keygen_solve_NTRU_all_1_BITLENGTH_std_ROM_AUTO_1R RTLNAME keygen_solve_NTRU_all_1_BITLENGTH_std_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME solve_NTRU MODELNAME solve_NTRU RTLNAME keygen_solve_NTRU
    SUBMODULES {
      {MODELNAME keygen_solve_NTRU_vla18_RAM_AUTO_1R1W RTLNAME keygen_solve_NTRU_vla18_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME keygen MODELNAME keygen RTLNAME keygen IS_TOP 1
    SUBMODULES {
      {MODELNAME keygen_mux_63_64_1_1 RTLNAME keygen_mux_63_64_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME keygen_mac_muladd_8s_8s_26s_26_4_1 RTLNAME keygen_mac_muladd_8s_8s_26s_26_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME keygen_tmp2108_RAM_AUTO_1R1W RTLNAME keygen_tmp2108_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME keygen_f_RAM_AUTO_1R1W RTLNAME keygen_f_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME keygen_h_RAM_AUTO_1R1W RTLNAME keygen_h_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME keygen_rt1_RAM_AUTO_1R1W RTLNAME keygen_rt1_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME keygen_rt3_RAM_AUTO_1R1W RTLNAME keygen_rt3_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME keygen_gmem0_m_axi RTLNAME keygen_gmem0_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME keygen_control_s_axi RTLNAME keygen_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
