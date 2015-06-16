! ##################################################################################################################################

   MODULE BD_PCOMP10_Interface

   INTERFACE

      SUBROUTINE BD_PCOMP10 ( CARD, LARGE_FLD_INP, IPLIES )

  
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_LOG, F04, f06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, JCARD_LEN
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  BD_PCOMP10_BEGEND

      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(INOUT) :: CARD              ! A Bulk Data card
      CHARACTER(LEN=*), INTENT(IN)    :: LARGE_FLD_INP     ! If 'Y', CARD is large field format
 
      INTEGER(LONG), INTENT(OUT)      :: IPLIES            ! Count of number of plies defined by this PCOMP1
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = BD_PCOMP10_BEGEND
 
      END SUBROUTINE BD_PCOMP10

   END INTERFACE

   END MODULE BD_PCOMP10_Interface

