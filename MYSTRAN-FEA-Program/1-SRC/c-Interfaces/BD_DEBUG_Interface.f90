! ##################################################################################################################################

   MODULE BD_DEBUG_Interface

   INTERFACE

      SUBROUTINE BD_DEBUG ( CARD )

  
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, ECHO, IERRFL, JCARD_LEN, JF, WARN_ERR 
      USE TIMDAT, ONLY                :  TSEC
      USE PARAMS, ONLY                :  SUPWARN
      USE SUBR_BEGEND_LEVELS, ONLY    :  BD_DEBUG_BEGEND
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG, NDEBUG
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: CARD              ! A Bulk Data card
 
      INTEGER(LONG), PARAMETER        :: LOWER    = 1      ! Lower allowable value for an integer parameter
      INTEGER(LONG)                   :: UPPER    = NDEBUG ! Upper allowable value for an integer parameter
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = BD_DEBUG_BEGEND
  
      END SUBROUTINE BD_DEBUG

   END INTERFACE

   END MODULE BD_DEBUG_Interface

