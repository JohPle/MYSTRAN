! ##################################################################################################################################

   MODULE DEALLOCATE_FEMAP_DATA_Interface

   INTERFACE

      SUBROUTINE DEALLOCATE_FEMAP_DATA

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, TOT_MB_MEM_ALLOC 
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE TIMDAT, ONLY                :  TSEC
      USE CONSTANTS_1, ONLY           :  ZERO
      USE SUBR_BEGEND_LEVELS, ONLY    :  DEALLOCATE_FEMAP_DATA_BEGEND
      USE FEMAP_ARRAYS, ONLY          :  FEMAP_EL_VECS, FEMAP_EL_NUMS
 
      IMPLICIT NONE
 
      CHARACTER(24*BYTE)              :: NAME              ! Array name (used for output error message)
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = DEALLOCATE_FEMAP_DATA_BEGEND
 
      END SUBROUTINE DEALLOCATE_FEMAP_DATA

   END INTERFACE

   END MODULE DEALLOCATE_FEMAP_DATA_Interface

