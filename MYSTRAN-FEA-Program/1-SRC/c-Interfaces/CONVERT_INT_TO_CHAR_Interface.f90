! ##################################################################################################################################

   MODULE CONVERT_INT_TO_CHAR_Interface

   INTERFACE

      SUBROUTINE CONVERT_INT_TO_CHAR ( INT_NUM, CHAR_VALUE )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  CONVERT_INT_TO_CHAR_BEGEND
 
      IMPLICIT NONE
 
      CHARACTER(1*BYTE), INTENT(OUT)  :: CHAR_VALUE        ! If INT_NUM = 1, then CHAR_VALUE = '1', etc
 
      INTEGER(LONG), INTENT(IN)       :: INT_NUM           ! Integer 1, 2, 3, 4, 5 O5 6
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = CONVERT_INT_TO_CHAR_BEGEND
 
      END SUBROUTINE CONVERT_INT_TO_CHAR

   END INTERFACE

   END MODULE CONVERT_INT_TO_CHAR_Interface

