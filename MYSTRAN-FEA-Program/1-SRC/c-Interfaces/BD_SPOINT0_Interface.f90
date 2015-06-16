! ##################################################################################################################################

   MODULE BD_SPOINT0_Interface

   INTERFACE

      SUBROUTINE BD_SPOINT0 ( CARD, DELTA_SPOINT )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG
      USE IOUNT1, ONLY                :  WRT_LOG, F04
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, IERRFL, JCARD_LEN, JF
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  BD_SPOINT0_BEGEND
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: CARD              ! A Bulk Data card
 
      INTEGER(LONG), INTENT(OUT)      :: DELTA_SPOINT      ! Number of SPOINT's defined on this B.D. SPOINT entry
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = BD_SPOINT0_BEGEND
 
      END SUBROUTINE BD_SPOINT0

   END INTERFACE

   END MODULE BD_SPOINT0_Interface

