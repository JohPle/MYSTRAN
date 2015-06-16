! ##################################################################################################################################

   MODULE DEALLOCATE_EMS_ARRAYS_Interface

   INTERFACE

      SUBROUTINE DEALLOCATE_EMS_ARRAYS  

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, TOT_MB_MEM_ALLOC
      USE TIMDAT, ONLY                :  TSEC
      USE CONSTANTS_1, ONLY           :  ZERO
      USE SUBR_BEGEND_LEVELS, ONLY    :  DEALLOCATE_EMS_ARRAYS_BEGEND
      USE EMS_ARRAYS, ONLY            :  EMSCOL, EMSKEY, EMSPNT, EMS
 
      IMPLICIT NONE
 
      CHARACTER(24*BYTE)              :: NAME              ! Array name (used for output error message)
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = DEALLOCATE_EMS_ARRAYS_BEGEND

      END SUBROUTINE DEALLOCATE_EMS_ARRAYS

   END INTERFACE

   END MODULE DEALLOCATE_EMS_ARRAYS_Interface

