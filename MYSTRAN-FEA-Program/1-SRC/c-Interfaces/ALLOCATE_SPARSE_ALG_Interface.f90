! ##################################################################################################################################

   MODULE ALLOCATE_SPARSE_ALG_Interface

   INTERFACE

      SUBROUTINE ALLOCATE_SPARSE_ALG ( NAME, NROW1, NROW2, CALLING_SUBR )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE CONSTANTS_1, ONLY           :  ZERO, ONEPP6
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR,  TOT_MB_MEM_ALLOC
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE TIMDAT, ONLY                :  TSEC
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG
      USE SUBR_BEGEND_LEVELS, ONLY    :  ALLOCATE_SPARSE_ALG_BEGEND
      USE SPARSE_ALG_ARRAYS, ONLY     :  ALG, AROW, J_AROW, LOGICAL_VEC, REAL_VEC
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: CALLING_SUBR      ! Array name of the matrix to be allocated in sparse format
      CHARACTER(LEN=*), INTENT(IN)    :: NAME              ! Array name of the matrix to be allocated in sparse format
 
      INTEGER(LONG), INTENT(IN)       :: NROW1             ! Number of rows, or starting row num, to allocate to matrix NAME
      INTEGER(LONG), INTENT(IN)       :: NROW2             ! End row number in allocation
      INTEGER(LONG), PARAMETER        :: NCOLS     = 1     ! Number of cols in array
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = ALLOCATE_SPARSE_ALG_BEGEND
 
      END SUBROUTINE ALLOCATE_SPARSE_ALG

   END INTERFACE

   END MODULE ALLOCATE_SPARSE_ALG_Interface

