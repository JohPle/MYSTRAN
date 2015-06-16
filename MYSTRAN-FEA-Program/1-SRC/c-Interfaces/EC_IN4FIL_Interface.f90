! ##################################################################################################################################

   MODULE EC_IN4FIL_Interface

   INTERFACE

      SUBROUTINE EC_IN4FIL ( CARD )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_ERR, WRT_LOG, ERR, F04, F06, FILE_NAM_MAXLEN, IN4FIL, IN4FIL_NUM, NUM_IN4_FILES
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, MAX_TOKEN_LEN
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  EC_IN4FIL_BEGEND
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: CARD              ! A Bulk Data card
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = EC_IN4FIL_BEGEND
 
      END SUBROUTINE EC_IN4FIL

   END INTERFACE

   END MODULE EC_IN4FIL_Interface

