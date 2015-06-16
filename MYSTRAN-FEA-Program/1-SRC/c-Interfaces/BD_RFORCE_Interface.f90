! ##################################################################################################################################

   MODULE BD_RFORCE_Interface

   INTERFACE

      SUBROUTINE BD_RFORCE ( CARD, LARGE_FLD_INP, CC_LOAD_FND )

  
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_ERR, WRT_LOG, ERR, F04, F06, L1U
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, IERRFL, JCARD_LEN, JF, LRFORCE, LSUB, NRFORCE, NSUB
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  BD_RFORCE_BEGEND
      USE CONSTANTS_1, ONLY           :  ZERO
      USE MODEL_STUF, ONLY            :  RFORCE_SIDS, SUBLOD
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(INOUT) :: CARD               ! A Bulk Data card
      CHARACTER(LEN=*), INTENT(IN)    :: LARGE_FLD_INP     ! If 'Y', CARD is large field format
      CHARACTER( 1*BYTE),INTENT(INOUT):: CC_LOAD_FND(LSUB,2)! 'Y' if B.D load/temp card w/ same set ID (SID) as C.C. LOAD = SID
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = BD_RFORCE_BEGEND
  
      END SUBROUTINE BD_RFORCE

   END INTERFACE

   END MODULE BD_RFORCE_Interface

