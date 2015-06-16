! ##################################################################################################################################

   MODULE DEALLOCATE_STF_ARRAYS_Interface

   INTERFACE

      SUBROUTINE DEALLOCATE_STF_ARRAYS ( NAME )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  ERR, F04, F06, SC1, WRT_ERR, WRT_LOG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, TOT_MB_MEM_ALLOC
      USE TIMDAT, ONLY                :  TSEC
      USE CONSTANTS_1, ONLY           :  ZERO
      USE SUBR_BEGEND_LEVELS, ONLY    :  DEALLOCATE_STF_ARRAYS_BEGEND
      USE STF_ARRAYS, ONLY            :  STFCOL, STFKEY, STFPNT, STF, STF3
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: NAME              ! Array name (used for output error message)
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = DEALLOCATE_STF_ARRAYS_BEGEND

      END SUBROUTINE DEALLOCATE_STF_ARRAYS

   END INTERFACE

   END MODULE DEALLOCATE_STF_ARRAYS_Interface

