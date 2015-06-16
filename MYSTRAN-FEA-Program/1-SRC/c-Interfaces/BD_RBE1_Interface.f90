! ##################################################################################################################################

   MODULE BD_RBE1_Interface

   INTERFACE

      SUBROUTINE BD_RBE1 ( CARD, LARGE_FLD_INP )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06, L1F
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, IERRFL, JCARD_LEN, JF, LRIGEL, NRBE1, NRIGEL, NRECARD
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  BD_RBE1_BEGEND
      USE MODEL_STUF, ONLY            :  RIGID_ELEM_IDS
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(INOUT) :: CARD              ! A Bulk Data card
      CHARACTER(LEN=*), INTENT(IN)    :: LARGE_FLD_INP     ! If 'Y', CARD is large field format
      CHARACTER( 8*BYTE), PARAMETER   :: RTYPE = 'RBE1    '! Rigid element type
 
      INTEGER(LONG)                   :: IDUM              ! Dummy arg in subr IP^CHK not used herein
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = BD_RBE1_BEGEND
 
      END SUBROUTINE BD_RBE1

   END INTERFACE

   END MODULE BD_RBE1_Interface

