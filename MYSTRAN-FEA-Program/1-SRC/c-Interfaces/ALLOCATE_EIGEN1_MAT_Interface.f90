! ##################################################################################################################################

   MODULE ALLOCATE_EIGEN1_MAT_Interface

   INTERFACE

      SUBROUTINE ALLOCATE_EIGEN1_MAT ( NAME, NROWS, NCOLS, CALLING_SUBR )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE CONSTANTS_1, ONLY           :  ZERO, ONEPP6
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, NDOFA, TOT_MB_MEM_ALLOC
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE TIMDAT, ONLY                :  TSEC
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG
      USE SUBR_BEGEND_LEVELS, ONLY    :  ALLOCATE_EIGEN1_MAT_BEGEND
      USE EIGEN_MATRICES_1 , ONLY     :  EIGEN_VAL, EIGEN_VEC, GEN_MASS, MODE_NUM, MEFFMASS, MPFACTOR_N6, MPFACTOR_NR
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: NAME              ! Array name of the matrix to be allocated in sparse format
      CHARACTER(LEN=*), INTENT(IN)    :: CALLING_SUBR      ! Array name of the matrix to be allocated in sparse format
 
      INTEGER(LONG), INTENT(IN)       :: NROWS             ! Number of rows to allocate to matrix NAME
      INTEGER(LONG), INTENT(IN)       :: NCOLS             ! Number of cols to allocate to matrix NAME
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = ALLOCATE_EIGEN1_MAT_BEGEND
 
      END SUBROUTINE ALLOCATE_EIGEN1_MAT

   END INTERFACE

   END MODULE ALLOCATE_EIGEN1_MAT_Interface

