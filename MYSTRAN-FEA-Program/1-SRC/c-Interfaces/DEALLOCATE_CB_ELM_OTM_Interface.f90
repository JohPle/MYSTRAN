! ##################################################################################################################################

   MODULE DEALLOCATE_CB_ELM_OTM_Interface

   INTERFACE

      SUBROUTINE DEALLOCATE_CB_ELM_OTM ( NAME )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, TOT_MB_MEM_ALLOC
      USE TIMDAT, ONLY                :  TSEC
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG
      USE CONSTANTS_1, ONLY           :  ZERO
      USE SUBR_BEGEND_LEVELS, ONLY    :  DEALLOCATE_CB_ELM_OTM_BEGEND
      USE OUTPUT4_MATRICES           

      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: NAME              ! Array name (used for output error message)
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = DEALLOCATE_CB_ELM_OTM_BEGEND
 
      END SUBROUTINE DEALLOCATE_CB_ELM_OTM

   END INTERFACE

   END MODULE DEALLOCATE_CB_ELM_OTM_Interface

