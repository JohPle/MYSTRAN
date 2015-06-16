! ##################################################################################################################################

   MODULE ALLOCATE_EMS_ARRAYS_Interface

   INTERFACE

      SUBROUTINE ALLOCATE_EMS_ARRAYS ( CALLING_SUBR )  

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE CONSTANTS_1, ONLY           :  ZERO, TWO, ONEPP6
      USE IOUNT1, ONLY                :  ERR, F04, F06, SC1, WRT_ERR, WRT_LOG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, LINKNO, LTERM_MGGE, NDOFG, TOT_MB_MEM_ALLOC
      USE TIMDAT, ONLY                :  YEAR, MONTH, DAY, HOUR, MINUTE, SEC, SFRAC, STIME, TSEC
      USE EMS_ARRAYS, ONLY            :  EMS, EMSCOL, EMSKEY, EMSPNT
      USE SUBR_BEGEND_LEVELS, ONLY    :  ALLOCATE_EMS_ARRAYS_BEGEND
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: CALLING_SUBR      ! Array name of the matrix to be allocated in sparse format
      CHARACTER( 6*BYTE)              :: NAME              ! Array name (used for output error message)
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = ALLOCATE_EMS_ARRAYS_BEGEND

      END SUBROUTINE ALLOCATE_EMS_ARRAYS

   END INTERFACE

   END MODULE ALLOCATE_EMS_ARRAYS_Interface

