! ##################################################################################################################################

   MODULE BD_SPCADD0_Interface

   INTERFACE

      SUBROUTINE BD_SPCADD0 ( CARD, LARGE_FLD_INP, ISPCADD )

  
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, JCARD_LEN
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  BD_SPCADD0_BEGEND
      USE MODEL_STUF, ONLY            :  SPCADD_SIDS

      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(INOUT) :: CARD              ! A Bulk Data card
      CHARACTER(LEN=*), INTENT(IN)    :: LARGE_FLD_INP     ! If 'Y', CARD is large field format
 
      INTEGER(LONG), INTENT(OUT)      :: ISPCADD           ! Count of number of SPC or SPC1 set ID's defined on the SPCADD
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = BD_SPCADD0_BEGEND
 
      END SUBROUTINE BD_SPCADD0

   END INTERFACE

   END MODULE BD_SPCADD0_Interface

