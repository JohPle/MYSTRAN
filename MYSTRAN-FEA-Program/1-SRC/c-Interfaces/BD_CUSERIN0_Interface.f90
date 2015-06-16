! ##################################################################################################################################

   MODULE BD_CUSERIN0_Interface

   INTERFACE

      SUBROUTINE BD_CUSERIN0 ( CARD, NG, NS )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_LOG, F04
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, IERRFL, JCARD_LEN, JF
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  BD_CUSERIN0_BEGEND
 
      IMPLICIT NONE
 
      CHARACTER(LEN=LEN(BLNK_SUB_NAM)):: SUBR_NAME = 'BD_CUSERIN'
      CHARACTER(LEN=*), INTENT(IN)    :: CARD              ! A Bulk Data card
 
      INTEGER(LONG), INTENT(OUT)      :: NG                ! Number of GRID's
      INTEGER(LONG), INTENT(OUT)      :: NS                ! Number of SPOINT's
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = BD_CUSERIN0_BEGEND
 
      END SUBROUTINE BD_CUSERIN0

   END INTERFACE

   END MODULE BD_CUSERIN0_Interface

