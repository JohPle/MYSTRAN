! ##################################################################################################################################

   MODULE CC_MPC_Interface

   INTERFACE

      SUBROUTINE CC_MPC ( CARD )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  FATAL_ERR, LSUB, NSUB, BLNK_SUB_NAM
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  CC_MPC_BEGEND
      USE MODEL_STUF, ONLY            :  MPCSETS
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: CARD              ! A Bulk Data card
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = CC_MPC_BEGEND
 
      END SUBROUTINE CC_MPC

   END INTERFACE

   END MODULE CC_MPC_Interface

