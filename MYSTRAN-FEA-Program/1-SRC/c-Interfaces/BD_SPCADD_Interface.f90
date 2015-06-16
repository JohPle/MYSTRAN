! ##################################################################################################################################

   MODULE BD_SPCADD_Interface

   INTERFACE

      SUBROUTINE BD_SPCADD ( CARD, LARGE_FLD_INP, CC_SPC_FND )

  
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, IERRFL, JCARD_LEN, JF, LSPCADDR, LSUB, NSPCADD, LSPCADDC, NSUB
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  BD_SPCADD_BEGEND
      USE MODEL_STUF, ONLY            :  SPCADD_SIDS, SPCSET, SUBLOD
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(INOUT) :: CARD              ! A Bulk Data card
      CHARACTER(LEN=*), INTENT(IN)    :: LARGE_FLD_INP     ! If 'Y', CARD is large field format
      CHARACTER( 1*BYTE),INTENT(INOUT):: CC_SPC_FND        ! 'Y' if B.D  card w/ same set ID as C.C. SPC = SID
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = BD_SPCADD_BEGEND
 
      END SUBROUTINE BD_SPCADD

   END INTERFACE

   END MODULE BD_SPCADD_Interface

