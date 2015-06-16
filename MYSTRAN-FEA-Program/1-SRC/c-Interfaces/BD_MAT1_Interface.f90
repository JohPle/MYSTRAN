! ##################################################################################################################################

   MODULE BD_MAT1_Interface

   INTERFACE

      SUBROUTINE BD_MAT1 ( CARD, LARGE_FLD_INP )


      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, ECHO, FATAL_ERR, IERRFL, JCARD_LEN, JF, LMATL, MRMATLC, NMATL, WARN_ERR
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  BD_MATL_BEGEND
      USE CONSTANTS_1, ONLY           :  ZERO, HALF, ONE, TWO
      USE PARAMS, ONLY                :  EPSIL, SUPINFO, SUPWARN
      USE MODEL_STUF, ONLY            :  MATL, RMATL

      IMPLICIT NONE

      CHARACTER(LEN=*), INTENT(INOUT) :: CARD              ! A Bulk Data card
      CHARACTER(LEN=*), INTENT(IN)    :: LARGE_FLD_INP     ! If 'Y', CARD is large field format
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = BD_MATL_BEGEND

      END SUBROUTINE BD_MAT1

   END INTERFACE

   END MODULE BD_MAT1_Interface

