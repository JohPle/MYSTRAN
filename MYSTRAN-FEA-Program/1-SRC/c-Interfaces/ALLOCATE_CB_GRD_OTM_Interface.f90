! ##################################################################################################################################

   MODULE ALLOCATE_CB_GRD_OTM_Interface

   INTERFACE

      SUBROUTINE ALLOCATE_CB_GRD_OTM ( NAME_IN )


      USE PENTIUM_II_KIND
      USE IOUNT1, ONLY                :  ERR, F04, F06, WRT_LOG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, TOT_MB_MEM_ALLOC,                                                &
                                         GROUT_ACCE_BIT, GROUT_DISP_BIT, GROUT_SPCF_BIT, GROUT_MPCF_BIT,                           &
                                         IBIT, NDOFR, NGRID, NUM_CB_DOFS, NVEC,                                                    &
                                         NROWS_OTM_ACCE, NROWS_OTM_DISP, NROWS_OTM_MPCF, NROWS_OTM_SPCF,                           &
                                         NROWS_TXT_ACCE, NROWS_TXT_DISP, NROWS_TXT_MPCF, NROWS_TXT_SPCF
      USE TIMDAT, ONLY                :  TSEC
      USE CONSTANTS_1, ONLY           :  ZERO, ONEPP6
      USE PARAMS, ONLY                :  OTMSKIP
      USE MODEL_STUF, ONLY            :  GRID, GROUT
      USE OUTPUT4_MATRICES, ONLY      :  OTM_ACCE, OTM_DISP, OTM_MPCF, OTM_SPCF, TXT_ACCE, TXT_DISP, TXT_MPCF, TXT_SPCF
      USE SUBR_BEGEND_LEVELS, ONLY    :  ALLOCATE_CB_GRD_OTM_BEGEND

      IMPLICIT NONE

      CHARACTER(LEN=*), INTENT(IN)    :: NAME_IN           ! Array name of the matrix to be allocated

      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = ALLOCATE_CB_GRD_OTM_BEGEND

      END SUBROUTINE ALLOCATE_CB_GRD_OTM

   END INTERFACE

   END MODULE ALLOCATE_CB_GRD_OTM_Interface

