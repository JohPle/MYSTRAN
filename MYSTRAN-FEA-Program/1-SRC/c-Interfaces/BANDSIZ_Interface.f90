! ##################################################################################################################################

   MODULE BANDSIZ_Interface

   INTERFACE

       SUBROUTINE BANDSIZ ( N, NTERM_MATIN, I_MATIN, J_MATIN, KD )


      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  BANDSIZ_BEGEND

      IMPLICIT NONE

      INTEGER(LONG), INTENT(IN)       :: N                    ! Col or row size of matrix MATIN (no. of A-set DOF's)
      INTEGER(LONG), INTENT(IN)       :: NTERM_MATIN          ! No. of terms in sparse matrix    
      INTEGER(LONG), INTENT(IN)       :: I_MATIN(N+1)         ! Array of row no's for terms in matrix MATIN
      INTEGER(LONG), INTENT(IN)       :: J_MATIN(NTERM_MATIN) ! Array of col no's for terms in matrix MATIN
      INTEGER(LONG), INTENT(OUT)      :: KD                   ! Number of sub (or super) diagonals in matrix MATIN.
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = BANDSIZ_BEGEND

      END SUBROUTINE BANDSIZ

   END INTERFACE

   END MODULE BANDSIZ_Interface

