! ##################################################################################################################################

   MODULE DEALLOCATE_DOF_TABLES_Interface

   INTERFACE

      SUBROUTINE DEALLOCATE_DOF_TABLES ( NAME )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, TOT_MB_MEM_ALLOC 
      USE TIMDAT, ONLY                :  TSEC
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG
      USE CONSTANTS_1, ONLY           :  ZERO
      USE SUBR_BEGEND_LEVELS, ONLY    :  DEALLOCATE_DOF_TABLES_BEGEND
      USE DOF_TABLES, ONLY            :  TDOFI, TDOF_ROW_START, TDOF, TSET
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: NAME              ! Array name of the matrix to be allocated in sparse format
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = DEALLOCATE_DOF_TABLES_BEGEND
 
      END SUBROUTINE DEALLOCATE_DOF_TABLES

   END INTERFACE

   END MODULE DEALLOCATE_DOF_TABLES_Interface

