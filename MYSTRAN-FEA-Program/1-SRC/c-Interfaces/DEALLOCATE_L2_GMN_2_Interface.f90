! ##################################################################################################################################

   MODULE DEALLOCATE_L2_GMN_2_Interface

   INTERFACE

      SUBROUTINE DEALLOCATE_L2_GMN_2  

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, TOT_MB_MEM_ALLOC
      USE TIMDAT, ONLY                :  TSEC
      USE CONSTANTS_1, ONLY           :  ZERO
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG
      USE SUBR_BEGEND_LEVELS, ONLY    :  DEALLOCATE_L2_GMN_2_BEGEND
      USE SPARSE_MATRICES, ONLY       :  I2_GMN
 
      IMPLICIT NONE
 
      CHARACTER(24*BYTE)              :: NAME              ! Array name (used for output error message)
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = DEALLOCATE_L2_GMN_2_BEGEND

      END SUBROUTINE DEALLOCATE_L2_GMN_2

   END INTERFACE

   END MODULE DEALLOCATE_L2_GMN_2_Interface

