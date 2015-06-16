! ##################################################################################################################################

   MODULE BD_PSHEAR_Interface

   INTERFACE

      SUBROUTINE BD_PSHEAR ( CARD )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, IERRFL, JCARD_LEN, JF, MPSHEAR, MRPSHEAR, NPSHEAR
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  BD_PSHEAR_BEGEND
      USE MODEL_STUF, ONLY            :  PSHEAR, RPSHEAR
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: CARD              ! A Bulk Data card

      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = BD_PSHEAR_BEGEND

      END SUBROUTINE BD_PSHEAR

   END INTERFACE

   END MODULE BD_PSHEAR_Interface

