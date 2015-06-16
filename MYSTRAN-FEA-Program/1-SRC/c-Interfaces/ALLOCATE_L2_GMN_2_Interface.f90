! ##################################################################################################################################

   MODULE ALLOCATE_L2_GMN_2_Interface

   INTERFACE

      SUBROUTINE ALLOCATE_L2_GMN_2 ( CALLING_SUBR ) 

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE CONSTANTS_1, ONLY           :  ZERO, ONEPP6
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, NDOFM, NTERM_GMN, TOT_MB_MEM_ALLOC
      USE TIMDAT, ONLY                :  TSEC
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG
      USE SUBR_BEGEND_LEVELS, ONLY    :  ALLOCATE_L2_GMN_2_BEGEND
      USE SPARSE_MATRICES, ONLY       :  I2_GMN
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: CALLING_SUBR      ! Array name of the matrix to be allocated in sparse format
      CHARACTER(24*BYTE)              :: NAME              ! Array name (used for output error message)
 
      INTEGER(LONG), PARAMETER        :: NCOLS     = 1     ! Number of cols in array
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = ALLOCATE_L2_GMN_2_BEGEND

      END SUBROUTINE ALLOCATE_L2_GMN_2

   END INTERFACE

   END MODULE ALLOCATE_L2_GMN_2_Interface

