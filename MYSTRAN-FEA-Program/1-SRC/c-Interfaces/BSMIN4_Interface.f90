! ##################################################################################################################################

   MODULE BSMIN4_Interface

   INTERFACE

      SUBROUTINE BSMIN4 ( PSH, DPSHX, DNXSHX, DNYSHX, IGAUS, JGAUS, MESSAG, WRT_BUG_THIS_TIME, BS )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  BUG, F04, WRT_BUG, WRT_LOG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, ELDT_BUG_BMAT_BIT, ELDT_BUG_BCHK_BIT
      USE TIMDAT, ONLY                :  TSEC
      USE CONSTANTS_1, ONLY           :  ZERO
      USE SUBR_BEGEND_LEVELS, ONLY    :  BSMIN4_BEGEND
      USE MODEL_STUF, ONLY            :  EID, TYPE
  
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: MESSAG            ! Messag to print out if BCHECK is run
      CHARACTER( 1*BYTE), INTENT(IN)  :: WRT_BUG_THIS_TIME ! If 'Y' then write to BUG file if WRT_BUG array says to

      INTEGER(LONG), INTENT(IN)       :: IGAUS             ! I index of Gaus point (needed for some optional output)
      INTEGER(LONG), INTENT(IN)       :: JGAUS             ! J index of Gaus point (needed for some optional output)
      INTEGER(LONG), PARAMETER        :: NR        = 2     ! An input to subr BCHECK, called herein
      INTEGER(LONG), PARAMETER        :: NC        = 12    ! An input to subr BCHECK, called herein
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = BSMIN4_BEGEND
  
      REAL(DOUBLE) , INTENT(IN)       :: PSH(4)            ! 4 node bilinear isopar interp functions (used for bending)
      REAL(DOUBLE) , INTENT(IN)       :: DPSHX(2,4)        ! Derivatives of PSH shape functions wrt x and y
      REAL(DOUBLE) , INTENT(IN)       :: DNXSHX(2,4)       ! Derivatives of constrained interpolations NX wrt x, y
      REAL(DOUBLE) , INTENT(IN)       :: DNYSHX(2,4)       ! Derivatives of constrained interpolations NY wrt x, y
      REAL(DOUBLE) , INTENT(OUT)      :: BS(2,12)          ! Output strain-displ matrix for this elem
      END SUBROUTINE BSMIN4

   END INTERFACE

   END MODULE BSMIN4_Interface

