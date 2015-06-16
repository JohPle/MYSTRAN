! ##################################################################################################################################

   MODULE BD_RSPLINE_Interface

   INTERFACE

      SUBROUTINE BD_RSPLINE ( CARD, LARGE_FLD_INP )

  
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_ERR, WRT_LOG, ERR, F04, F06, L1F
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, IERRFL, JCARD_LEN, JF, MRSPLINE, NRSPLINE, NRECARD, NRIGEL
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  BD_RSPLINE_BEGEND
      USE MODEL_STUF, ONLY            :  RIGID_ELEM_IDS
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(INOUT) :: CARD              ! A Bulk Data card
      CHARACTER(LEN=*), INTENT(IN)    :: LARGE_FLD_INP     ! If 'Y', CARD is large field format

      CHARACTER( 8*BYTE), PARAMETER   :: RTYPE = 'RSPLINE '! Rigid element type
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = BD_RSPLINE_BEGEND
 
      END SUBROUTINE BD_RSPLINE

   END INTERFACE

   END MODULE BD_RSPLINE_Interface

