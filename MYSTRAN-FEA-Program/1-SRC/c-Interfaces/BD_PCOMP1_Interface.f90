! ##################################################################################################################################

   MODULE BD_PCOMP1_Interface

   INTERFACE

      SUBROUTINE BD_PCOMP1 ( CARD, LARGE_FLD_INP )

  
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, IERRFL, JCARD_LEN, JF, LPCOMP_PLIES, LPCOMP, MPCOMP0, MRPCOMP0,  &
                                         MPCOMP_PLIES, MRPCOMP_PLIES, NPCOMP
      USE TIMDAT, ONLY                :  TSEC
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG
      USE CONSTANTS_1, ONLY           :  ZERO, HALF, TWO
      USE MODEL_STUF, ONLY            :  PCOMP, RPCOMP
      USE PARAMS, ONLY                :  EPSIL
      USE SUBR_BEGEND_LEVELS, ONLY    :  BD_PCOMP1_BEGEND

      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(INOUT) :: CARD               ! A Bulk Data card
      CHARACTER(LEN=*), INTENT(IN)    :: LARGE_FLD_INP     ! If 'Y', CARD is large field format
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = BD_PCOMP1_BEGEND
 
      END SUBROUTINE BD_PCOMP1

   END INTERFACE

   END MODULE BD_PCOMP1_Interface

