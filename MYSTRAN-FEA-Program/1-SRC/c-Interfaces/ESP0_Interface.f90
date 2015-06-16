! ##################################################################################################################################

   MODULE ESP0_Interface

   INTERFACE

      SUBROUTINE ESP0

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  ERR, F04, F06, SC1, WRT_ERR, WRT_LOG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, KMAT_BW, KMAT_DEN, LTERM_KGG, LTERM_KGGD, SOL_NAME
      USE PARAMS, ONLY                :  GRIDSEQ, SETLKTK, SUPINFO, USR_LTERM_KGG
      USE NONLINEAR_PARAMS, ONLY      :  LOAD_ISTEP
      USE TIMDAT, ONLY                :  TSEC
      USE CONSTANTS_1, ONLY           :  ZERO
      USE SUBR_BEGEND_LEVELS, ONLY    :  ESP0_BEGEND

      IMPLICIT NONE

      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = ESP0_BEGEND

      END SUBROUTINE ESP0

   END INTERFACE

   END MODULE ESP0_Interface

