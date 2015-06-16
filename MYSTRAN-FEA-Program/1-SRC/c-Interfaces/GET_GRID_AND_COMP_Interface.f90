! ##################################################################################################################################

   MODULE GET_GRID_AND_COMP_Interface

   INTERFACE

      SUBROUTINE GET_GRID_AND_COMP ( X_SET, DOF_NUM, GRIDV, COMPV )


      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, NDOFG
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  GET_GRID_AND_COMP_BEGEND
      USE DOF_TABLES, ONLY            :  TDOFI

      IMPLICIT NONE

      CHARACTER(LEN=*), INTENT(IN)    :: X_SET             ! Displ set designator (if one exists) for the col in TDOFI

      INTEGER(LONG), INTENT(IN)       :: DOF_NUM           ! DOF number in TDOF
      INTEGER(LONG), INTENT(OUT)      :: COMPV             ! Comp. num corresponding to DOF_NUM in array TDOFI, col X_SET_COL_NUM
      INTEGER(LONG), INTENT(OUT)      :: GRIDV             ! Grid num corresponding to DOF_NUM in array TDOFI, col X_SET_COL_NUM
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = GET_GRID_AND_COMP_BEGEND

      END SUBROUTINE GET_GRID_AND_COMP

   END INTERFACE

   END MODULE GET_GRID_AND_COMP_Interface

