! ##################################################################################################################################

   MODULE ALLOCATE_DOF_TABLES_Interface

   INTERFACE

      SUBROUTINE ALLOCATE_DOF_TABLES ( NAME, CALLING_SUBR )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE CONSTANTS_1, ONLY           :  ZERO, SIX, ONEPP6
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, LDOFG, LGRID, MTDOF, MTSET, NUM_USET, TOT_MB_MEM_ALLOC
      USE TIMDAT, ONLY                :  TSEC
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG
      USE SUBR_BEGEND_LEVELS, ONLY    :  ALLOCATE_DOF_TABLES_BEGEND
      USE DOF_TABLES, ONLY            :  TDOF, TDOF_ROW_START, TDOFI, TSET, USET
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: NAME              ! Array name of the matrix to be allocated in sparse format
      CHARACTER(LEN=*), INTENT(IN)    :: CALLING_SUBR      ! Array name of the matrix to be allocated in sparse format
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = ALLOCATE_DOF_TABLES_BEGEND
 
      END SUBROUTINE ALLOCATE_DOF_TABLES

   END INTERFACE

   END MODULE ALLOCATE_DOF_TABLES_Interface

