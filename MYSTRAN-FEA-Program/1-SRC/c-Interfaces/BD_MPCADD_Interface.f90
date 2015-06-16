! ##################################################################################################################################

   MODULE BD_MPCADD_Interface

   INTERFACE

      SUBROUTINE BD_MPCADD ( CARD, LARGE_FLD_INP, CC_MPC_FND )

  
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, IERRFL, JCARD_LEN, JF, LMPCADDR, LSUB, NMPCADD, LMPCADDC, NSUB
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  BD_MPCADD_BEGEND
      USE MODEL_STUF, ONLY            :  MPCADD_SIDS, MPCSET, SUBLOD
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(INOUT) :: CARD              ! A Bulk Data card
      CHARACTER( 1*BYTE),INTENT(INOUT):: CC_MPC_FND        ! 'Y' if B.D  card w/ same set ID as C.C. MPC = SID
      CHARACTER(LEN=*), INTENT(IN)    :: LARGE_FLD_INP     ! If 'Y', CARD is large field format
      CHARACTER( 3*BYTE)              :: NAME1   = 'MPC'   ! Name for output error message use
      CHARACTER( 6*BYTE)              :: NAME2   = 'MPCADD'! Name for output error message use
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = BD_MPCADD_BEGEND
 
      END SUBROUTINE BD_MPCADD

   END INTERFACE

   END MODULE BD_MPCADD_Interface

