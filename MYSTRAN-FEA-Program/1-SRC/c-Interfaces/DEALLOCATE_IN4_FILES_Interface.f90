! ##################################################################################################################################

   MODULE DEALLOCATE_IN4_FILES_Interface

   INTERFACE

      SUBROUTINE DEALLOCATE_IN4_FILES ( NAME )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  ERR, F04, F06, IN4FIL, IN4FIL_NUM, WRT_ERR, WRT_LOG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, TOT_MB_MEM_ALLOC
      USE TIMDAT, ONLY                :  TSEC
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG
      USE CONSTANTS_1, ONLY           :  ZERO
      USE INPUTT4_MATRICES, ONLY      :  IN4_COL_MAP, IN4_MAT
      USE SUBR_BEGEND_LEVELS, ONLY    :  DEALLOCATE_IN4_FILES_BEGEND
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: NAME              ! Array name (used for output error message)

      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = DEALLOCATE_IN4_FILES_BEGEND
 
      END SUBROUTINE DEALLOCATE_IN4_FILES

   END INTERFACE

   END MODULE DEALLOCATE_IN4_FILES_Interface

