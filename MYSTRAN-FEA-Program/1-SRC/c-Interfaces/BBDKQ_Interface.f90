! ##################################################################################################################################

   MODULE BBDKQ_Interface

   INTERFACE

      SUBROUTINE BBDKQ ( DPSHX, XSD, YSD, SLN, IGAUS, JGAUS, MESSAG, WRT_BUG_THIS_TIME, BB )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  BUG, F04, WRT_BUG, WRT_LOG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, ELDT_BUG_BMAT_BIT, ELDT_BUG_BCHK_BIT
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  BBDKQ_BEGEND
      USE CONSTANTS_1, ONLY           :  ZERO, TWO, THREE, FOUR
      USE MODEL_STUF, ONLY            :  EID, TYPE
  
      IMPLICIT NONE
  
      CHARACTER(LEN=*), INTENT(IN)    :: MESSAG            ! Messag to print out if BCHECK is run
      CHARACTER( 1*BYTE), INTENT(IN)  :: WRT_BUG_THIS_TIME ! If 'Y' then write to BUG file if WRT_BUG array says to

      INTEGER(LONG), INTENT(IN)       :: IGAUS             ! I index of Gaus point (needed for some optional output)
      INTEGER(LONG), INTENT(IN)       :: JGAUS             ! J index of Gaus point (needed for some optional output)
      INTEGER(LONG), PARAMETER        :: NR        = 3     ! An input to subr BCHECK, called herein
      INTEGER(LONG), PARAMETER        :: NC        = 12    ! An input to subr BCHECK, called herein
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = BBDKQ_BEGEND
  
      REAL(DOUBLE) , INTENT(IN)       :: SLN(4)            ! Quad side lengths
      REAL(DOUBLE) , INTENT(IN)       :: XSD(4)            ! Array of 4 diffs of X dim. of sides
      REAL(DOUBLE) , INTENT(IN)       :: YSD(4)            ! Array of 4 diffs of Y dim. of sides
      REAL(DOUBLE) , INTENT(IN)       :: DPSHX(2,8)        ! Derivatives of the 8 node biquadratic isopar interps wrt elem x and y
      REAL(DOUBLE) , INTENT(OUT)      :: BB(3,12)          ! Output strain-displ matrix for the DKQ elem
      REAL(DOUBLE) , PARAMETER        :: C15 = THREE/TWO   ! Constant = 1.5
      REAL(DOUBLE)                    :: A(4)              ! Intermediate variables used in calculating outputs
      REAL(DOUBLE)                    :: B(4)              ! Intermediate variables used in calculating outputs
      REAL(DOUBLE)                    :: C(4)              ! Intermediate variables used in calculating outputs
      REAL(DOUBLE)                    :: D(4)              ! Intermediate variables used in calculating outputs
      REAL(DOUBLE)                    :: E(4)              ! Intermediate variables used in calculating outputs
  
      END SUBROUTINE BBDKQ

   END INTERFACE

   END MODULE BBDKQ_Interface

