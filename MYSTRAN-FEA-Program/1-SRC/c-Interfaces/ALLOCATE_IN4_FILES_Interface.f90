! ##################################################################################################################################

   MODULE ALLOCATE_IN4_FILES_Interface

   INTERFACE

      SUBROUTINE ALLOCATE_IN4_FILES ( NAME_IN, NROWS, NCOLS, CALLING_SUBR )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  ERR, F04, F06, IN4FIL, IN4FIL_NUM, LNUM_IN4_FILES, WRT_ERR, WRT_LOG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, TOT_MB_MEM_ALLOC 
      USE TIMDAT, ONLY                :  TSEC
      USE CONSTANTS_1, ONLY           :  ZERO, ONEPP6
      USE INPUTT4_MATRICES, ONLY      :  IN4_COL_MAP, IN4_MAT
      USE SUBR_BEGEND_LEVELS, ONLY    :  ALLOCATE_IN4_FILES_BEGEND
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: CALLING_SUBR      ! Array name of the matrix to be allocated in sparse format
      CHARACTER(LEN=*), INTENT(IN)    :: NAME_IN           ! Array name (used for output error message)
      CHARACTER(LEN=LEN(NAME_IN))     :: NAME              ! Specific array name used for output error message
 
      INTEGER(LONG), INTENT(IN)       :: NROWS             ! Nunber of rows in array NAME_IN being allocated
      INTEGER(LONG), INTENT(IN)       :: NCOLS             ! Nunber of cols in array NAME_IN being allocated
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = ALLOCATE_IN4_FILES_BEGEND

      END SUBROUTINE ALLOCATE_IN4_FILES

   END INTERFACE

   END MODULE ALLOCATE_IN4_FILES_Interface

