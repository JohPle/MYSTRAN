! ##################################################################################################################################

   MODULE ALLOCATE_COL_VEC_Interface

   INTERFACE

      SUBROUTINE ALLOCATE_COL_VEC ( NAME, NROWS, CALLING_SUBR )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE CONSTANTS_1, ONLY           :  ZERO, ONEPP6
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, TOT_MB_MEM_ALLOC 
      USE TIMDAT, ONLY                :  TSEC
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG
      USE SUBR_BEGEND_LEVELS, ONLY    :  ALLOCATE_COL_VEC_BEGEND
      USE OUTPUT4_MATRICES, ONLY      :  OU4_MAT_COL_GRD_COMP, OU4_MAT_ROW_GRD_COMP
      USE COL_VECS, ONLY              :  UG_COL, UN_COL, UM_COL, UF_COL, US_COL, UA_COL, UO_COL, UO0_COL, UR_COL, UL_COL, YSe,     &
                                         FG_COL, FN_COL, FM_COL, FF_COL, FS_COL, FA_COL, FO_COL, FL_COL, FR_COL,                   &
                                         FG_COL, PG_COL, PM_COL, PS_COL, PL_COL, QGm_COL, QGr_COL, QGs_COL, QM_COL, QN_COL, QR_COL,&
                                         QS_COL, QSYS_COL

      USE COL_VECS, ONLY              :  PHIXG_COL, PHIXL_COL, PHIXN_COL, PHIXGP_COL, PHIXLP_COL, PHIXNP_COL

      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: CALLING_SUBR      ! Subr that called this one
      CHARACTER(LEN=*), INTENT(IN)    :: NAME              ! Array name of the matrix to be allocated
 
      INTEGER(LONG), INTENT(IN)       :: NROWS             ! Number of rows for matrix NAME
      INTEGER(LONG), PARAMETER        :: NCOLS     = 1     ! Number of cols in array
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = ALLOCATE_COL_VEC_BEGEND

      END SUBROUTINE ALLOCATE_COL_VEC

   END INTERFACE

   END MODULE ALLOCATE_COL_VEC_Interface

