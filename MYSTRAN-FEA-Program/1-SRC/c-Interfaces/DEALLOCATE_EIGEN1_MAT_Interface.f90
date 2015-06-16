! ##################################################################################################################################

   MODULE DEALLOCATE_EIGEN1_MAT_Interface

   INTERFACE

      SUBROUTINE DEALLOCATE_EIGEN1_MAT ( NAME )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, TOT_MB_MEM_ALLOC
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE TIMDAT, ONLY                :  TSEC
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG
      USE CONSTANTS_1, ONLY           :  ZERO
      USE SUBR_BEGEND_LEVELS, ONLY    :  DEALLOCATE_EIGEN1_MAT_BEGEND
      USE EIGEN_MATRICES_1 , ONLY     :  EIGEN_VAL, EIGEN_VEC, GEN_MASS, MODE_NUM, MEFFMASS, MPFACTOR_N6, MPFACTOR_NR
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: NAME              ! Array name of the matrix to be allocated in sparse format
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = DEALLOCATE_EIGEN1_MAT_BEGEND
 
      END SUBROUTINE DEALLOCATE_EIGEN1_MAT

   END INTERFACE

   END MODULE DEALLOCATE_EIGEN1_MAT_Interface

