! ##################################################################################################################################

   MODULE DEALLOCATE_NL_PARAMS_Interface

   INTERFACE

      SUBROUTINE DEALLOCATE_NL_PARAMS

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, LSUB, TOT_MB_MEM_ALLOC
      USE TIMDAT, ONLY                :  TSEC
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG
      USE CONSTANTS_1, ONLY           :  ZERO
      USE NONLINEAR_PARAMS, ONLY      :  NL_SID
      USE SUBR_BEGEND_LEVELS, ONLY    :  DEALLOCATE_NL_PARAMS_BEGEND
 
      IMPLICIT NONE
 
      CHARACTER(24*BYTE)              :: NAME              ! Array name (used for output error message)
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = DEALLOCATE_NL_PARAMS_BEGEND

      END SUBROUTINE DEALLOCATE_NL_PARAMS

   END INTERFACE

   END MODULE DEALLOCATE_NL_PARAMS_Interface

