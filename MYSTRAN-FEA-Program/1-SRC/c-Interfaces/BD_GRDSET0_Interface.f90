! ##################################################################################################################################

   MODULE BD_GRDSET0_Interface

   INTERFACE

      SUBROUTINE BD_GRDSET0 ( CARD )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, JCARD_LEN, JF, IERRFL, NGRDSET
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  BD_GRDSET0_BEGEND
      USE MODEL_STUF, ONLY            :  GRDSET3, GRDSET7, GRDSET8
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: CARD              ! A Bulk Data card
 
      INTEGER(LONG)                   :: IDUM              ! Dummy arg in subr IP^CHK not used herein
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = BD_GRDSET0_BEGEND
 
      END SUBROUTINE BD_GRDSET0

   END INTERFACE

   END MODULE BD_GRDSET0_Interface

