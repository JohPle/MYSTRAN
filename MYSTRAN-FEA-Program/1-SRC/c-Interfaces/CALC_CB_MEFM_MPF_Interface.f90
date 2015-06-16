! ##################################################################################################################################

   MODULE CALC_CB_MEFM_MPF_Interface

   INTERFACE

      SUBROUTINE CALC_CB_MEFM_MPF

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR,                                                                  &
                                         NDOFL, NDOFR, NTERM_MPF0 , NVEC
      USE TIMDAT, ONLY                :  TSEC
      USE CONSTANTs_1, ONLY           :  ZERO, ONE
      USE PARAMS, ONLY                :  MPFOUT
      USE SUBR_BEGEND_LEVELS, ONLY    :  CALC_CB_MEFM_MPF_BEGEND
      USE RIGID_BODY_DISP_MATS, ONLY  :  TR6_MEFM
      USE SPARSE_MATRICES, ONLY       :  I_MPF0 , J_MPF0 , MPF0 , SYM_MPF0
      USE SCRATCH_MATRICES, ONLY      :  I_CRS1, J_CRS1, CRS1
      USE EIGEN_MATRICES_1, ONLY      :  EIGEN_VEC, GEN_MASS, MEFFMASS, MPFACTOR_NR, MPFACTOR_N6

      IMPLICIT NONE
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = CALC_CB_MEFM_MPF_BEGEND

      END SUBROUTINE CALC_CB_MEFM_MPF

   END INTERFACE

   END MODULE CALC_CB_MEFM_MPF_Interface

