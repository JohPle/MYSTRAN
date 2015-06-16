! ##################################################################################################################################

   MODULE GET_ELGP_Interface

   INTERFACE

      SUBROUTINE GET_ELGP ( INT_ELEM_ID )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG
      USE IOUNT1, ONLY                :  ERR, F04, F06, WRT_ERR, WRT_LOG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, MEFE, MELGP, METYPE 
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  GET_ELGP_BEGEND
      USE MODEL_STUF, ONLY            :  EDAT, EID, ELGP, ELMTYP, etype, EMG_IFE, EPNT, ERR_SUB_NAM, NELGP, NUM_EMG_FATAL_ERRS, TYPE
 
      IMPLICIT NONE

      INTEGER(LONG), INTENT(IN)       :: INT_ELEM_ID       ! Internal element ID
      INTEGER(LONG)                   :: NG                ! Number of GRID's for USERIN elem
      INTEGER(LONG)                   :: NS                ! Number of SPOINT's for USERIN elem
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = GET_ELGP_BEGEND

      END SUBROUTINE GET_ELGP

   END INTERFACE

   END MODULE GET_ELGP_Interface

