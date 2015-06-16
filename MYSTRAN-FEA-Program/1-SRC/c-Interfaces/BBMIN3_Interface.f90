! ##################################################################################################################################

   MODULE BBMIN3_Interface

   INTERFACE

      SUBROUTINE BBMIN3 ( A, B, AREA, MESSAG, WRT_BUG_THIS_TIME, BB )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  BUG, F04, WRT_BUG, WRT_LOG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, ELDT_BUG_BMAT_BIT, ELDT_BUG_BCHK_BIT
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  BBMIN3_BEGEND
      USE CONSTANTS_1, ONLY           :  ZERO, TWO
      USE MODEL_STUF, ONLY            :  EID, TYPE
 
      IMPLICIT NONE
  
      CHARACTER(LEN=*), INTENT(IN)    :: MESSAG            ! Messag to print out if BCHECK is run
      CHARACTER( 1*BYTE), INTENT(IN)  :: WRT_BUG_THIS_TIME ! If 'Y' then write to BUG file if WRT_BUG array says to

      INTEGER(LONG), PARAMETER        :: NR        = 3     ! An input to subr BCHECK, called herein if
      INTEGER(LONG), PARAMETER        :: NC        = 9     ! An input to subr BCHECK, called herein if
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = BBMIN3_BEGEND
  
      REAL(DOUBLE) , INTENT(IN)       :: A(3)              ! Diffs in x coords of elem
      REAL(DOUBLE) , INTENT(IN)       :: B(3)              ! Diffs in y coords of elem
      REAL(DOUBLE) , INTENT(IN)       :: AREA              ! Elem area
      REAL(DOUBLE) , INTENT(OUT)      :: BB(3,9)           ! Output strain-displ matrix for this elem
      END SUBROUTINE BBMIN3

   END INTERFACE

   END MODULE BBMIN3_Interface

