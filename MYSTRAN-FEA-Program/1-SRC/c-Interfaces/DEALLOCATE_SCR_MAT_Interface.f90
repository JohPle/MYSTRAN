! ##################################################################################################################################

   MODULE DEALLOCATE_SCR_MAT_Interface

   INTERFACE

      SUBROUTINE DEALLOCATE_SCR_MAT ( NAME_IN )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, TOT_MB_MEM_ALLOC          
      USE TIMDAT, ONLY                :  TSEC
      USE CONSTANTS_1, ONLY           :  ZERO
      USE SUBR_BEGEND_LEVELS, ONLY    :  DEALLOCATE_SCR_MAT_BEGEND
      USE SCRATCH_MATRICES , ONLY     :  I_CRS1, J_CRS1, CRS1, I_CRS2, J_CRS2, CRS2, I_CRS3, J_CRS3, CRS3,  &
                                         I_CCS1, J_CCS1, CCS1, I_CCS2, J_CCS2, CCS2, I_CCS3, J_CCS3, CCS3

      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: NAME_IN           ! Array name (used for output error message)
      CHARACTER(6*BYTE)               :: NAME              ! Array name (used for output error message)
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = DEALLOCATE_SCR_MAT_BEGEND
 
      END SUBROUTINE DEALLOCATE_SCR_MAT

   END INTERFACE

   END MODULE DEALLOCATE_SCR_MAT_Interface

