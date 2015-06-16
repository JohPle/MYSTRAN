! ##################################################################################################################################

   MODULE ALLOCATE_STF_ARRAYS_Interface

   INTERFACE

      SUBROUTINE ALLOCATE_STF_ARRAYS ( NAME, CALLING_SUBR )  

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE CONSTANTS_1, ONLY           :  ZERO, TWO, ONEPP6
      USE IOUNT1, ONLY                :  ERR, F04, F06, SC1, WRT_ERR, WRT_LOG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, LINKNO, LTERM_KGG, LTERM_KGGD, NDOFG, SOL_NAME,      &
                                         TOT_MB_MEM_ALLOC
      USE TIMDAT, ONLY                :  YEAR, MONTH, DAY, HOUR, MINUTE, SEC, SFRAC, STIME, TSEC
      USE PARAMS, ONLY                :  MEMAFAC, MXALLOCA, SUPINFO, WINAMEM
      USE NONLINEAR_PARAMS, ONLY      :  LOAD_ISTEP
      USE STF_ARRAYS, ONLY            :  STF, STFCOL, STFKEY, STFPNT, STF3
      USE SUBR_BEGEND_LEVELS, ONLY    :  ALLOCATE_STF_ARRAYS_BEGEND
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: CALLING_SUBR      ! Array name of the matrix to be allocated in sparse format
      CHARACTER(LEN=*), INTENT(IN)    :: NAME              ! Array name (used for output error message)
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = ALLOCATE_STF_ARRAYS_BEGEND

      END SUBROUTINE ALLOCATE_STF_ARRAYS

   END INTERFACE

   END MODULE ALLOCATE_STF_ARRAYS_Interface

