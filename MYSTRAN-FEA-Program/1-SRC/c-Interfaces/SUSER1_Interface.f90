! ##################################################################################################################################

   MODULE SUSER1_Interface

   INTERFACE

      SUBROUTINE SUSER1

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  SUSER1_BEGEND
      USE MODEL_STUF, ONLY            :  TYPE
 
      IMPLICIT NONE 
 
      CHARACTER(LEN=LEN(BLNK_SUB_NAM)):: SUBR_NAME = 'SUSER1'

      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = SUSER1_BEGEND
 
      END SUBROUTINE SUSER1

   END INTERFACE

   END MODULE SUSER1_Interface

