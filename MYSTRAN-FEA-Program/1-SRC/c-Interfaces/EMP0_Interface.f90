! ##################################################################################################################################

   MODULE EMP0_Interface

   INTERFACE

      SUBROUTINE EMP0

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  ERR, F04, F06, SC1, WRT_ERR, WRT_LOG
      USE SCONTR, ONLY                :  LTERM_MGGE, BLNK_SUB_NAM
      USE TIMDAT, ONLY                :  TSEC
      USE PARAMS, ONLY                :  GRIDSEQ, SETLKTM, USR_LTERM_MGG
      USE SUBR_BEGEND_LEVELS, ONLY    :  EMP0_BEGEND

      IMPLICIT NONE

      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = EMP0_BEGEND

      END SUBROUTINE EMP0

   END INTERFACE

   END MODULE EMP0_Interface

