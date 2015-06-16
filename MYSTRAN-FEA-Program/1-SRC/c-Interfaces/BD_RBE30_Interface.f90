! ##################################################################################################################################

   MODULE BD_RBE30_Interface

   INTERFACE

      SUBROUTINE BD_RBE30 ( CARD, LARGE_FLD_INP, IRBE3 )

  
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, JCARD_LEN
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  BD_RBE30_BEGEND

      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(INOUT) :: CARD              ! A Bulk Data card
      CHARACTER(LEN=*), INTENT(IN)    :: LARGE_FLD_INP     ! If 'Y', CARD is large field format
 
      INTEGER(LONG), INTENT(OUT)      :: IRBE3             ! Count of number of grid/comp/coeff triplets on this RBE3 logical card
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = BD_RBE30_BEGEND
 
      END SUBROUTINE BD_RBE30

   END INTERFACE

   END MODULE BD_RBE30_Interface

