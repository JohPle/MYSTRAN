! ##################################################################################################################################

   MODULE BD_RBE3_Interface

   INTERFACE

      SUBROUTINE BD_RBE3 ( CARD, LARGE_FLD_INP )

  
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_ERR, WRT_LOG, ERR, F04, F06, L1F
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, IERRFL, JCARD_LEN, JF, LRIGEL, MRBE3, NRECARD, NRIGEL
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  BD_RBE3_BEGEND
      USE CONSTANTS_1, ONLY           :  ZERO
      USE MODEL_STUF, ONLY            :  RIGID_ELEM_IDS
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(INOUT) :: CARD              ! A Bulk Data card
      CHARACTER(LEN=*), INTENT(IN)    :: LARGE_FLD_INP     ! If 'Y', CARD is large field format
      CHARACTER( 8*BYTE), PARAMETER   :: RTYPE = 'RBE3    '! Rigid element type
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = BD_RBE3_BEGEND
 
      END SUBROUTINE BD_RBE3

   END INTERFACE

   END MODULE BD_RBE3_Interface

