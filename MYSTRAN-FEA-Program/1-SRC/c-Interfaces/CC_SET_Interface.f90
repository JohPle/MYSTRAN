! ##################################################################################################################################

   MODULE CC_SET_Interface

   INTERFACE

      SUBROUTINE CC_SET ( CARD )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06, IN1
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG
      USE SCONTR, ONLY                :  CC_ENTRY_LEN, FATAL_ERR, LSETS, LSETLN, MAX_TOKEN_LEN, NSETS, SETLEN, BLNK_SUB_NAM
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  CC_SET_BEGEND
      USE MODEL_STUF, ONLY            :  ALL_SETS_ARRAY, SETS_IDS
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: CARD              ! A Bulk Data card
      CHARACTER( 3*BYTE), PARAMETER   :: CARD_NAME = 'SET' ! Name of the C.C. card
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = CC_SET_BEGEND
 
      END SUBROUTINE CC_SET

   END INTERFACE

   END MODULE CC_SET_Interface

