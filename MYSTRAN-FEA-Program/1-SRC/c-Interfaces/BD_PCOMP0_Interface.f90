! ##################################################################################################################################

   MODULE BD_PCOMP0_Interface

   INTERFACE

      SUBROUTINE BD_PCOMP0 ( CARD, LARGE_FLD_INP, IPLIES )

  
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_LOG, F04, f06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, JCARD_LEN
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  BD_PCOMP0_BEGEND

      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(INOUT) :: CARD              ! A Bulk Data card
      CHARACTER(LEN=*), INTENT(IN)    :: LARGE_FLD_INP     ! If 'Y', CARD is large field format
 
      INTEGER(LONG), INTENT(OUT)      :: IPLIES            ! Count of number of plies defined by this PCOMP
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = BD_PCOMP0_BEGEND
 
      END SUBROUTINE BD_PCOMP0

   END INTERFACE

   END MODULE BD_PCOMP0_Interface

