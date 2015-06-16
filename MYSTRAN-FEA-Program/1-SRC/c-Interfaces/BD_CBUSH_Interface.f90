! ##################################################################################################################################

   MODULE BD_CBUSH_Interface

   INTERFACE

      SUBROUTINE BD_CBUSH ( CARD, LARGE_FLD_INP )


      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, IERRFL, JCARD_LEN, JF, LBUSHOFF, LVVEC, MEDAT_CBUSH,&
                                         NBUSHOFF, NCBUSH, NCBEAM, NEDAT, NELE, NVVEC, WARN_ERR
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  BD_CBUSH_BEGEND
      USE CONSTANTS_1, ONLY           :  ZERO, HALF
      USE PARAMS, ONLY                :  EPSIL, SUPWARN
      USE MODEL_STUF, ONLY            :  BUSHOFF, EDAT, ETYPE, VVEC

      IMPLICIT NONE

      CHARACTER(LEN=*), INTENT(INOUT) :: CARD              ! A Bulk Data card
      CHARACTER(LEN=*), INTENT(IN)    :: LARGE_FLD_INP     ! If 'Y', CARD is large field format

      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = BD_CBUSH_BEGEND

      END SUBROUTINE BD_CBUSH

   END INTERFACE

   END MODULE BD_CBUSH_Interface

