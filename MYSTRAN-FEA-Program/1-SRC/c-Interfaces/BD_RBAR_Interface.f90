! ##################################################################################################################################

   MODULE BD_RBAR_Interface

   INTERFACE

      SUBROUTINE BD_RBAR ( CARD )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06, L1F
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, IERRFL, JCARD_LEN, JF, LRIGEL, NRBAR, NRIGEL, NRECARD
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  BD_RBAR_BEGEND
      USE MODEL_STUF, ONLY            :  RIGID_ELEM_IDS
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: CARD              ! A Bulk Data card
      CHARACTER( 8*BYTE), PARAMETER   :: RTYPE = 'RBAR    '! Rigid element type
 
      INTEGER(LONG)                   :: IDUM              ! Dummy arg in subr IP^CHK not used herein
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = BD_RBAR_BEGEND
 
      END SUBROUTINE BD_RBAR

   END INTERFACE

   END MODULE BD_RBAR_Interface

