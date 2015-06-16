! ##################################################################################################################################

   MODULE EC_DEBUG_Interface

   INTERFACE

      SUBROUTINE EC_DEBUG ( CARD )

  
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  ERR, F06
      USE SCONTR, ONLY                :  ECHO, IERRFL, JCARD_LEN, JF, WARN_ERR
      USE PARAMS, ONLY                :  SUPWARN
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG, NDEBUG
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: CARD              ! A Bulk Data card
 
      INTEGER(LONG), PARAMETER        :: LOWER    = 1      ! Lower allowable value for an integer parameter
      INTEGER(LONG)                   :: UPPER    = NDEBUG ! Upper allowable value for an integer parameter
  
      END SUBROUTINE EC_DEBUG

   END INTERFACE

   END MODULE EC_DEBUG_Interface

