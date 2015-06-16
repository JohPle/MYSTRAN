! ##################################################################################################################################

   MODULE ALLOCATE_L6_2_Interface

   INTERFACE

      SUBROUTINE ALLOCATE_L6_2 ( NAME, CALLING_SUBR )  

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE CONSTANTS_1, ONLY           :  ZERO, ONEPP6
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, NTERM_DLR, NTERM_PHIZL1, TOT_MB_MEM_ALLOC
      USE TIMDAT, ONLY                :  TSEC
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG
      USE SUBR_BEGEND_LEVELS, ONLY    :  ALLOCATE_L6_2_BEGEND
      USE SPARSE_MATRICES, ONLY       :  I2_DLR, I2_DLRt, I2_PHIZL1, I2_PHIZL1t  
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: CALLING_SUBR      ! Array name of the matrix to be allocated in sparse format
      CHARACTER(LEN=*), INTENT(IN)    :: NAME              ! Array name (used for output error message)
 
      INTEGER(LONG), PARAMETER        :: NCOLS     = 1     ! Number of cols in array
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = ALLOCATE_L6_2_BEGEND
 
      END SUBROUTINE ALLOCATE_L6_2

   END INTERFACE

   END MODULE ALLOCATE_L6_2_Interface

