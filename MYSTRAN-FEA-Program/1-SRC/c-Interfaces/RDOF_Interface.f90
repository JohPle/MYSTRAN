! ##################################################################################################################################

   MODULE RDOF_Interface

   INTERFACE

      SUBROUTINE RDOF ( INTDOF, CDOF )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  RDOF_BEGEND
 
      IMPLICIT NONE
 
      CHARACTER( 1*BYTE), INTENT(OUT) :: CDOF(6)           ! Contains 1 in each of the 6 pos'ns corresponding to a DOF from INTDOF
      INTEGER(LONG), INTENT(IN)       :: INTDOF            ! Integer field which should contain only the digits 1 - 6
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = RDOF_BEGEND
 
      END SUBROUTINE RDOF

   END INTERFACE

   END MODULE RDOF_Interface

