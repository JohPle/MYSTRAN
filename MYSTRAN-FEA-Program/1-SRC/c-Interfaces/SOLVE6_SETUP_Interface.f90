! ##################################################################################################################################

   MODULE SOLVE6_SETUP_Interface

   INTERFACE

      SUBROUTINE SOLVE6_SETUP ( CALLING_SUBR, HANDLE )


      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, KLL_SDIA, NDOFL, NTERM_KLL, NTERM_KLLs
      USE TIMDAT, ONLY                :  TSEC
      USE PARAMS, ONLY                :  EPSIL, MKLFAC62, MKLFAC63, MKLSTATS, SOLLIB, SPARSTOR
      USE SUBR_BEGEND_LEVELS, ONLY    :  SOLVE6_SETUP_BEGEND
      USE SPARSE_MATRICES, ONLY       :  I_KLL, J_KLL, KLL, I_KLLs, J_KLLs, KLLs
      USE LAPACK_LIN_EQN_DPB
      USE MKL_DSS

      IMPLICIT NONE

      TYPE(MKL_DSS_HANDLE), INTENT(INOUT)::HANDLE

      CHARACTER(LEN=*), INTENT(IN)    :: CALLING_SUBR      ! Name of subr that called thi one
      CHARACTER(LEN(MKLFAC62))        :: MKLFAC6i          ! Parameter MKLFAC62 or MKLFAC63 depending on which subr calls this one
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = SOLVE6_SETUP_BEGEND

      END SUBROUTINE SOLVE6_SETUP

   END INTERFACE

   END MODULE SOLVE6_SETUP_Interface

