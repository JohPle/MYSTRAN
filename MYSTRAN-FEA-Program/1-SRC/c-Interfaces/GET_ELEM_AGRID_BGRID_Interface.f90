! ##################################################################################################################################

   MODULE GET_ELEM_AGRID_BGRID_Interface

   INTERFACE

      SUBROUTINE GET_ELEM_AGRID_BGRID ( INT_ELEM_ID, CHECK_AGRID )


      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, medat0_cuserin, MELGP, NGRID
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  GET_ELEM_AGRID_BGRID_BEGEND
      USE MODEL_STUF, ONLY            :  AGRID, BGRID, EDAT, EID, ELGP, EPNT, ETYPE, GRID, GRID_ID, TYPE

      IMPLICIT NONE

      CHARACTER(LEN=*), INTENT(IN)    :: CHECK_AGRID       ! If 'Y' perform check on AGRID's to see if appropriate type

      INTEGER(LONG), INTENT(IN)       :: INT_ELEM_ID       ! Internal element ID for which
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = GET_ELEM_AGRID_BGRID_BEGEND

      END SUBROUTINE GET_ELEM_AGRID_BGRID

   END INTERFACE

   END MODULE GET_ELEM_AGRID_BGRID_Interface

