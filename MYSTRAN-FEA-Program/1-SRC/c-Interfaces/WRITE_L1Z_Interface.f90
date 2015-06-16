! ##################################################################################################################################

   MODULE WRITE_L1Z_Interface

   INTERFACE

      SUBROUTINE WRITE_L1Z

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_LOG, F04, F06, L1Z, LINK1Z, L1Z_MSG, L1ZSTAT
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, NSUB, SOL_NAME
      USE TIMDAT, ONLY                :  STIME, TSEC
      USE MODEL_STUF, ONLY            :  CC_EIGR_SID, MPCSET, SPCSET, SUBLOD
      USE SUBR_BEGEND_LEVELS, ONLY    :  WRITE_L1Z_BEGEND
 
      IMPLICIT NONE
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = WRITE_L1Z_BEGEND
 
      END SUBROUTINE WRITE_L1Z

   END INTERFACE

   END MODULE WRITE_L1Z_Interface

