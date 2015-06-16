! ##################################################################################################################################

   MODULE BD_CTETRA_Interface

   INTERFACE

      SUBROUTINE BD_CTETRA ( CARD, LARGE_FLD_INP, NUM_GRD )

  
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, JCARD_LEN, FATAL_ERR, NCTETRA4, NCTETRA10, NEDAT, NELE
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  BD_CTETRA_BEGEND
      USE MODEL_STUF, ONLY            :  ETYPE
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(INOUT) :: CARD              ! A Bulk Data card
      CHARACTER(LEN=*), INTENT(IN)    :: LARGE_FLD_INP     ! If 'Y', CARD is large field format
 
      INTEGER(LONG), INTENT(OUT)      :: NUM_GRD           ! Number of GRID's + SPOINT's for the elem
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = BD_CTETRA_BEGEND
 
      END SUBROUTINE BD_CTETRA

   END INTERFACE

   END MODULE BD_CTETRA_Interface

