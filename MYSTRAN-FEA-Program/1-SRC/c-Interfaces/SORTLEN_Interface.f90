! ##################################################################################################################################

   MODULE SORTLEN_Interface

   INTERFACE

      SUBROUTINE SORTLEN ( NLEN, JCT )

 
      USE PENTIUM_II_KIND, ONLY       :  LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, F04
      USE SCONTR, ONLY                :  BLNK_SUB_NAM
      USE CONSTANTS_1, ONLY           :  TWO
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  SORTLEN_BEGEND
 
      IMPLICIT NONE
 
      INTEGER(LONG), INTENT(IN)       :: NLEN              ! Length of the array that will be sorted in the calling procedure
      INTEGER(LONG), INTENT(OUT)      :: JCT               ! Sort parameter to be used by calling procedure
      INTEGER(LONG)                   :: MAX_JCT           ! Max practical value of JCT to use in sort by the calling procedure.
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = SORTLEN_BEGEND
 
      END SUBROUTINE SORTLEN

   END INTERFACE

   END MODULE SORTLEN_Interface

