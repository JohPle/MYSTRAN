! ##################################################################################################################################

   MODULE BD_SPC1_Interface

   INTERFACE

      SUBROUTINE BD_SPC1 ( CARD, LARGE_FLD_INP, CC_SPC_FND )


      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06, L1O
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, IERRFL, JCARD_LEN, JF, LSPC1, NSPC1, NUM_SPC1_RECORDS
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  BD_SPC1_BEGEND
      USE CONSTANTS_1, ONLY           :  ZERO
      USE DOF_TABLES, ONLY            :  TSET_CHR_LEN
      USE MODEL_STUF, ONLY            :  SPC1_SIDS, SPCSET

      IMPLICIT NONE

      CHARACTER(LEN=*), INTENT(INOUT) :: CARD              ! A Bulk Data card
      CHARACTER(LEN=*), INTENT(IN)    :: LARGE_FLD_INP     ! If 'Y', CARD is large field format
      CHARACTER( 1*BYTE),INTENT(INOUT):: CC_SPC_FND        ! ='Y' if this SPC is a set requested in Case Control

      INTEGER(LONG)                   :: IDUM              ! Dummy arg in subr IP^CHK not used herein
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = BD_SPC1_BEGEND

      REAL(DOUBLE) , PARAMETER        :: RSPCJ     = ZERO  ! Enforced displ value (always zero on SPC1). Included for file LINK1O
      END SUBROUTINE BD_SPC1

   END INTERFACE

   END MODULE BD_SPC1_Interface

