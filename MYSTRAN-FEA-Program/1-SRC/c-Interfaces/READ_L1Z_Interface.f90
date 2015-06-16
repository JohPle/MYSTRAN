! ##################################################################################################################################

   MODULE READ_L1Z_Interface

   INTERFACE

      SUBROUTINE READ_L1Z

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_LOG, ERR, F04, F06, L1Z, LINK1Z, L1Z_MSG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, NSUB, SOL_NAME
      USE TIMDAT, ONLY                :  STIME, TSEC
      USE MODEL_STUF, ONLY            :  CC_EIGR_SID, MPCSET, SPCSET, SUBLOD
      USE SUBR_BEGEND_LEVELS, ONLY    :  READ_L1Z_BEGEND
 
      IMPLICIT NONE
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = READ_L1Z_BEGEND
 
      END SUBROUTINE READ_L1Z

   END INTERFACE

   END MODULE READ_L1Z_Interface

