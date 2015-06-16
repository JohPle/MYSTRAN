! ##################################################################################################################################

   MODULE ALLOCATE_FEMAP_DATA_Interface

   INTERFACE

      SUBROUTINE ALLOCATE_FEMAP_DATA ( NAME_IN, NROWS, NCOLS, CALLING_SUBR )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE CONSTANTS_1, ONLY           :  ZERO, ONEPP6
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, MAX_FEMAP_COLS, TOT_MB_MEM_ALLOC
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  ALLOCATE_FEMAP_DATA_BEGEND
      USE FEMAP_ARRAYS, ONLY          :  FEMAP_EL_VECS, FEMAP_EL_NUMS
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: NAME_IN           ! Name
      CHARACTER(LEN=*), INTENT(IN)    :: CALLING_SUBR      ! Subr that called this one
 
      INTEGER(LONG), INTENT(IN)       :: NROWS             ! Number of rows in array
      INTEGER(LONG), INTENT(IN)       :: NCOLS             ! Number of cols in array FEMAP_EL_VECS
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = ALLOCATE_FEMAP_DATA_BEGEND
 
      END SUBROUTINE ALLOCATE_FEMAP_DATA

   END INTERFACE

   END MODULE ALLOCATE_FEMAP_DATA_Interface

