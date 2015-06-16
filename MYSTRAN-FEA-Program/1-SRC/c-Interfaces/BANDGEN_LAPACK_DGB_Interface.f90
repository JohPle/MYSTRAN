! ##################################################################################################################################

   MODULE BANDGEN_LAPACK_DGB_Interface

   INTERFACE

       SUBROUTINE BANDGEN_LAPACK_DGB ( MATIN_NAME, N, KD, NTERM_MATIN, I_MATIN, J_MATIN, MATIN, MATOUT, CALLING_SUBR )


      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  ERR, F04, F06, SC1, WRT_ERR, WRT_LOG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR
      USE TIMDAT, ONLY                :  TSEC
      USE CONSTANTS_1, ONLY           :  ZERO
      USE PARAMS, ONLY                :  SPARSTOR
      USE SUBR_BEGEND_LEVELS, ONLY    :  BANDGEN_BEGEND

      IMPLICIT NONE

      CHARACTER(LEN=*), INTENT(IN)    :: CALLING_SUBR         ! Name of subr calling this one
      CHARACTER(LEN=*), INTENT(IN)    :: MATIN_NAME           ! Name of matrix input

      INTEGER(LONG), INTENT(IN)       :: N                    ! Number of cols (or rows) of symmetric matrix MATIN
      INTEGER(LONG), INTENT(IN)       :: NTERM_MATIN          ! No. of terms in sparse matrix    
      INTEGER(LONG), INTENT(IN)       :: I_MATIN(N+1)         ! Array of row no's for terms in matrix MATIN
      INTEGER(LONG), INTENT(IN)       :: J_MATIN(NTERM_MATIN) ! Array of col no's for terms in matrix MATIN
      INTEGER(LONG), INTENT(IN)       :: KD                   ! Number of sub (or super) diagonals in matrix MATIN.
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = BANDGEN_BEGEND

      REAL(DOUBLE) , INTENT(IN)       :: MATIN(NTERM_MATIN)   ! Array of terms in sparse matrix MATIN
      REAL(DOUBLE) , INTENT(INOUT)    :: MATOUT(3*KD+1,N)     ! Array of terms in band matrix MATOUT

      END SUBROUTINE BANDGEN_LAPACK_DGB

   END INTERFACE

   END MODULE BANDGEN_LAPACK_DGB_Interface

