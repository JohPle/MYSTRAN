! ##################################################################################################################################

   MODULE BD_RSPLINE0_Interface

   INTERFACE

      SUBROUTINE BD_RSPLINE0 ( CARD, LARGE_FLD_INP, IRSPLINE )

  
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, JCARD_LEN
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  BD_RSPLINE0_BEGEND

      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(INOUT) :: CARD              ! A Bulk Data card
      CHARACTER(LEN=*), INTENT(IN)    :: LARGE_FLD_INP     ! If 'Y', CARD is large field format
 
      INTEGER(LONG), INTENT(OUT)      :: IRSPLINE          ! Count of number of grid/comp doublets on this RSPLINE logical card
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = BD_RSPLINE0_BEGEND
 
      END SUBROUTINE BD_RSPLINE0

   END INTERFACE

   END MODULE BD_RSPLINE0_Interface

