! ##################################################################################################################################

   MODULE ALLOCATE_MISC_MAT_Interface

   INTERFACE

      SUBROUTINE ALLOCATE_MISC_MAT ( NAME, NROWS, NCOLS, CALLING_SUBR )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE CONSTANTS_1, ONLY           :  ZERO, ONEPP6
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, NDOFA, TOT_MB_MEM_ALLOC
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE TIMDAT, ONLY                :  TSEC
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG
      USE MISC_MATRICES, ONLY         :  UG_T123_MAT
      USE SUBR_BEGEND_LEVELS, ONLY    :  ALLOCATE_MISC_MAT_BEGEND
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: NAME              ! Array name of the matrix to be allocated in sparse format
      CHARACTER(LEN=*), INTENT(IN)    :: CALLING_SUBR      ! Array name of the matrix to be allocated in sparse format
 
      INTEGER(LONG), INTENT(IN)       :: NROWS             ! Number of rows to allocate to matrix NAME
      INTEGER(LONG), INTENT(IN)       :: NCOLS             ! Number of cols to allocate to matrix NAME
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = ALLOCATE_MISC_MAT_BEGEND
 
      END SUBROUTINE ALLOCATE_MISC_MAT

   END INTERFACE

   END MODULE ALLOCATE_MISC_MAT_Interface

