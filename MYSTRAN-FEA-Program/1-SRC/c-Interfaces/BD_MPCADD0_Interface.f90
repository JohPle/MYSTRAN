! ##################################################################################################################################

   MODULE BD_MPCADD0_Interface

   INTERFACE

      SUBROUTINE BD_MPCADD0 ( CARD, LARGE_FLD_INP, IMPCADD )

  
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, JCARD_LEN
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  BD_MPCADD0_BEGEND

      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(INOUT) :: CARD              ! A Bulk Data card
      CHARACTER(LEN=*), INTENT(IN)    :: LARGE_FLD_INP     ! If 'Y', CARD is large field format
 
      INTEGER(LONG), INTENT(OUT)      :: IMPCADD           ! Count of number of MPC set ID's defined on the MPCADD
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = BD_MPCADD0_BEGEND

      END SUBROUTINE BD_MPCADD0

   END INTERFACE

   END MODULE BD_MPCADD0_Interface

