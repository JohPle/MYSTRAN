! ##################################################################################################################################

   MODULE DEALLOCATE_L6_2_Interface

   INTERFACE

      SUBROUTINE DEALLOCATE_L6_2 ( NAME )


      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, TOT_MB_MEM_ALLOC
      USE TIMDAT, ONLY                :  TSEC
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG
      USE CONSTANTS_1, ONLY           :  ZERO
      USE SUBR_BEGEND_LEVELS, ONLY    :  DEALLOCATE_L6_2_BEGEND
      USE SPARSE_MATRICES, ONLY       :  I2_DLR, I2_DLRt, I2_PHIZL1, I2_PHIZL1t  

      IMPLICIT NONE

      CHARACTER(LEN=*), INTENT(IN)    :: NAME              ! Array name (used for output error message)
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = DEALLOCATE_L6_2_BEGEND
 
      END SUBROUTINE DEALLOCATE_L6_2

   END INTERFACE

   END MODULE DEALLOCATE_L6_2_Interface

