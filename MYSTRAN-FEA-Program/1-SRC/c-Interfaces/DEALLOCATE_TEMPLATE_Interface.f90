! ##################################################################################################################################

   MODULE DEALLOCATE_TEMPLATE_Interface

   INTERFACE

      SUBROUTINE DEALLOCATE_TEMPLATE  

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, TOT_MB_MEM_ALLOC
      USE TIMDAT, ONLY                :  TSEC
      USE CONSTANTS_1, ONLY           :  ZERO
      USE SUBR_BEGEND_LEVELS, ONLY    :  DEALLOCATE_TEMPLATE_BEGEND
      USE STF_TEMPLATE_ARRAYS, ONLY   :  CROW, TEMPLATE
 
      IMPLICIT NONE
 
      CHARACTER(24*BYTE)              :: NAME              ! Array name (used for output error message)
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = DEALLOCATE_TEMPLATE_BEGEND

      END SUBROUTINE DEALLOCATE_TEMPLATE

   END INTERFACE

   END MODULE DEALLOCATE_TEMPLATE_Interface

