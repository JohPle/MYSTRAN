! ##################################################################################################################################

   MODULE CORD_PROC_Interface

   INTERFACE

      SUBROUTINE CORD_PROC

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE CONSTANTS_1, ONLY           :  ZERO, ONE80, PI, CONV_DEG_RAD
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, NCORD, NCORD1, NCORD2, NGRID, FATAL_ERR
      USE PARAMS, ONLY                :  EPSIL, PRTCORD
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  CORD_PROC_BEGEND
      USE MODEL_STUF, ONLY            :  CORD, GRID, RCORD, RGRID, TN

      IMPLICIT NONE
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = CORD_PROC_BEGEND
  
      END SUBROUTINE CORD_PROC

   END INTERFACE

   END MODULE CORD_PROC_Interface

