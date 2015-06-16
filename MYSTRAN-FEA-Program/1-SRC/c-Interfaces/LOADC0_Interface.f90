! ##################################################################################################################################

   MODULE LOADC0_Interface

   INTERFACE

      SUBROUTINE LOADC0

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_LOG, ERR, F04, F06, IN1
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, CC_ENTRY_LEN, FATAL_ERR, LSETS, LSUB
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  LOADC0_BEGEND
 
      IMPLICIT NONE
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = LOADC0_BEGEND
 
      END SUBROUTINE LOADC0

   END INTERFACE

   END MODULE LOADC0_Interface

