! ##################################################################################################################################

   MODULE EPSCALC_Interface

   INTERFACE

      SUBROUTINE EPSCALC ( ISUB )


      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, NDOFL, NTERM_KLl, WARN_ERR
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  EPSCALC_BEGEND
      USE CONSTANTS_1, ONLY           :  ONE
      USE PARAMS, ONLY                :  EPSIL, SUPINFO, SUPWARN
      USE MACHINE_PARAMS, ONLY        :  MACH_SFMIN
      USE LAPACK_DPB_MATRICES, ONLY   :  RES
      USE SPARSE_MATRICES, ONLY       :  I_KLL, J_KLL, KLL
      USE SPARSE_MATRICES, ONLY       :  SYM_KLL
      USE COL_VECS, ONLY              :  UL_COL, PL_COL
      USE LAPACK_BLAS_AUX

      IMPLICIT NONE

      INTEGER(LONG), INTENT(IN)       :: ISUB              ! Internal subcase no. (1 to NSUB)
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = EPSCALC_BEGEND

      REAL(DOUBLE) , PARAMETER        :: ALPHA     =  ONE  ! Scalar multiplier for KLL in calc'ing residual vector, RES 
      REAL(DOUBLE) , PARAMETER        :: BETA      = -ONE  ! Scalar multiplier for PL in calc'ing residual vector, RES 

      END SUBROUTINE EPSCALC

   END INTERFACE

   END MODULE EPSCALC_Interface

