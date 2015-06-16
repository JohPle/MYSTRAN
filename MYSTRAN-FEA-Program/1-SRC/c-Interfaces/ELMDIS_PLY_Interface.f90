! ##################################################################################################################################

   MODULE ELMDIS_PLY_Interface

   INTERFACE

      SUBROUTINE ELMDIS_PLY

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_LOG, F04, f06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM
      USE CONSTANTS_1, ONLY           :  CONV_DEG_RAD
      USE TIMDAT, ONLY                :  TSEC
      USE MODEL_STUF, ONLY            :  ELGP, ELDOF, UEL, ZPLY
      USE SUBR_BEGEND_LEVELS, ONLY    :  ELMDIS_PLY_BEGEND
 
      IMPLICIT NONE
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = ELMDIS_PLY_BEGEND

      END SUBROUTINE ELMDIS_PLY

   END INTERFACE

   END MODULE ELMDIS_PLY_Interface

