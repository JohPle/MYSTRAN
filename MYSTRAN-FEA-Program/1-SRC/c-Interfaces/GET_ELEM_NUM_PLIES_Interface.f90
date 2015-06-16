! ##################################################################################################################################

   MODULE GET_ELEM_NUM_PLIES_Interface

   INTERFACE

      SUBROUTINE GET_ELEM_NUM_PLIES ( INT_ELEM_ID )


      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG
      USE IOUNT1, ONLY                :  WRT_LOG, F04, f06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, DEDAT_Q4_SHELL_KEY, DEDAT_T3_SHELL_KEY, NPCOMP, FATAL_ERR
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  GET_ELEM_NUM_PLIES_BEGEND
      USE MODEL_STUF, ONLY            :  EDAT, EID, EPNT, ETYPE, INTL_PID, NUM_PLIES, PCOMP, TYPE

      IMPLICIT NONE

      INTEGER(LONG), INTENT(IN)       :: INT_ELEM_ID       ! Internal element ID for which
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = GET_ELEM_NUM_PLIES_BEGEND

      END SUBROUTINE GET_ELEM_NUM_PLIES

   END INTERFACE

   END MODULE GET_ELEM_NUM_PLIES_Interface

