! ##################################################################################################################################

   MODULE ELMDAT2_Interface

   INTERFACE

      SUBROUTINE ELMDAT2 ( INT_ELEM_ID, OPT, WRITE_WARN )


      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, F04
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, LPDAT, MPRESS, MDT, MTDAT_TEMPRB, NSUB, NTSUB 
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  ELMDAT_BEGEND
      USE CONSTANTS_1, ONLY           :  ZERO, QUARTER, THIRD
      USE MODEL_STUF, ONLY            :  BGRID, DT, ELGP, ETYPE, GTEMP, PDATA, PPNT, PTYPE, PRESS, TDATA, TPNT, TYPE

      IMPLICIT NONE

      CHARACTER(LEN=*), INTENT(IN)    :: OPT(6)            ! Array of EMG option indicators
      CHARACTER(LEN=*), INTENT(IN)    :: WRITE_WARN        ! If 'Y" write warning messages, otherwise do not

      INTEGER(LONG), INTENT(IN)       :: INT_ELEM_ID       ! Internal element ID for which
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = ELMDAT_BEGEND

      END SUBROUTINE ELMDAT2

   END INTERFACE

   END MODULE ELMDAT2_Interface

