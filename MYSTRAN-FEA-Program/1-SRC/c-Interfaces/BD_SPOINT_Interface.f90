! ##################################################################################################################################

   MODULE BD_SPOINT_Interface

   INTERFACE

      SUBROUTINE BD_SPOINT ( CARD )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, IERRFL, JCARD_LEN, JF, NGRID
      USE TIMDAT, ONLY                :  TSEC
      USE MODEL_STUF, ONLY            :  GRID
      USE SUBR_BEGEND_LEVELS, ONLY    :  BD_SPOINT_BEGEND
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: CARD              ! A Bulk Data card
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = BD_SPOINT_BEGEND
 
      END SUBROUTINE BD_SPOINT

   END INTERFACE

   END MODULE BD_SPOINT_Interface

