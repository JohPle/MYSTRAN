! ##################################################################################################################################

   MODULE BD_EIGRL_Interface

   INTERFACE

      SUBROUTINE BD_EIGRL ( CARD, LARGE_FLD_INP, EIGFND )

  
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06, L1M
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, IERRFL, JCARD_LEN, JF
      USE TIMDAT, ONLY                :  TSEC
      USE CONSTANTS_1, ONLY           :  ZERO, ONEPM4
      USE SUBR_BEGEND_LEVELS, ONLY    :  BD_EIG_BEGEND
      USE MODEL_STUF, ONLY            :  CC_EIGR_SID, EIG_COMP, EIG_CRIT, EIG_FRQ1, EIG_FRQ2, EIG_GRID, EIG_LANCZOS_NEV_DELT,      &
                                         EIG_METH, EIG_MSGLVL, EIG_LAP_MAT_TYPE, EIG_MODE, EIG_N1, EIG_N2, EIG_NCVFACL, EIG_NORM,  &
                                         EIG_SID, EIG_SIGMA, EIG_VECS, MAXMIJ, MIJ_COL, MIJ_ROW, NUM_FAIL_CRIT

      IMPLICIT NONE

      CHARACTER(LEN=*), INTENT(INOUT) :: CARD              ! A Bulk Data card
      CHARACTER(LEN=*), INTENT(IN)    :: LARGE_FLD_INP     ! If 'Y', CARD is large field format
      CHARACTER(1*BYTE), INTENT(INOUT):: EIGFND            ! ='Y' if this EIGR card is the one called for in Case Control
      CHARACTER( 1*BYTE)              :: USE_THIS_EIG      ! ='Y' if this is the EIGR meth requested in CC

      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = BD_EIG_BEGEND

      END SUBROUTINE BD_EIGRL

   END INTERFACE

   END MODULE BD_EIGRL_Interface

