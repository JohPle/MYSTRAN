! ##################################################################################################################################

   MODULE SHELL_ENGR_FORCE_OGEL_Interface

   INTERFACE

      SUBROUTINE SHELL_ENGR_FORCE_OGEL ( NUM1 )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  ERR, F04, F06, WRT_LOG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, NGRID
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  SHELL_ENGR_FORCE_OGEL_BEGEND
      USE CONSTANTS_1, ONLY           :  ZERO
      USE MODEL_STUF, ONLY            :  FCONV, STRESS
      USE LINK9_STUFF, ONLY           :  MAXREQ, MAXREQ, OGEL

      IMPLICIT NONE
 
      INTEGER(LONG), INTENT(INOUT)    :: NUM1              ! Cum rows written to OGEL prior to running this subr
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = SHELL_ENGR_FORCE_OGEL_BEGEND
 
      END SUBROUTINE SHELL_ENGR_FORCE_OGEL

   END INTERFACE

   END MODULE SHELL_ENGR_FORCE_OGEL_Interface

