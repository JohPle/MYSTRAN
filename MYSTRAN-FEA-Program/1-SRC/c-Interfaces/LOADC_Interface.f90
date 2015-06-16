! ##################################################################################################################################

   MODULE LOADC_Interface

   INTERFACE

      SUBROUTINE LOADC

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, BUGOUT
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06, IN1
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, CC_ENTRY_LEN, ENFORCED, FATAL_ERR, WARN_ERR, NSUB, NTSUB, PROG_NAME,        &
                                         RESTART, SOL_NAME
      USE TIMDAT, ONLY                :  TSEC
      USE PARAMS, ONLY                :  SUPINFO, SUPWARN
      USE SUBR_BEGEND_LEVELS, ONLY    :  LOADC_BEGEND
      USE MODEL_STUF, ONLY            :  CC_EIGR_SID, MEFFMASS_CALC, MPCSET, MPCSETS, MPFACTOR_CALC, SCNUM, SPCSET, SPCSETS, SUBLOD
      USE CC_OUTPUT_DESCRIBERS, ONLY  :  STRN_LOC, STRE_LOC
 
      IMPLICIT NONE
 
      CHARACTER(10*BYTE), PARAMETER   :: END_CARD    = 'BEGIN BULK'

      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = LOADC_BEGEND
 
      END SUBROUTINE LOADC

   END INTERFACE

   END MODULE LOADC_Interface

