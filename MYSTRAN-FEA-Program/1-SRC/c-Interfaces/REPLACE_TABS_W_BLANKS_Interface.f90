! ##################################################################################################################################

   MODULE REPLACE_TABS_W_BLANKS_Interface

   INTERFACE

      SUBROUTINE REPLACE_TABS_W_BLANKS ( CARD )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG
      USE IOUNT1, ONLY                :  WRT_LOG, F04
      USE SCONTR, ONLY                :  BLNK_SUB_NAM
      USE TIMDAT, ONLY                :  TSEC 
      USE SUBR_BEGEND_LEVELS, ONLY    :  REPLACE_TABS_W_BLANKS_BEGEND

      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(INOUT) :: CARD              ! Input entry character line

      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = REPLACE_TABS_W_BLANKS_BEGEND
 
      END SUBROUTINE REPLACE_TABS_W_BLANKS

   END INTERFACE

   END MODULE REPLACE_TABS_W_BLANKS_Interface

