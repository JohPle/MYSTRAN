! ##################################################################################################################################

   MODULE FULL_TO_SPARSE_CRS_Interface

   INTERFACE

      SUBROUTINE FULL_TO_SPARSE_CRS ( MATIN_NAME, N, M, MATIN_FULL, NTERM_ALLOC, SMALL, CALLING_SUBR, SYM_OUT,                     &

                                      I_MATOUT, J_MATOUT, MATOUT )

      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR
      USE TIMDAT, ONLY                :  TSEC
      USE CONSTANTS_1, ONLY           :  ZERO
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG
      USE SUBR_BEGEND_LEVELS, ONLY    :  FULL_TO_SPARSE_CRS_BEGEND
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: CALLING_SUBR         ! Name of subr that called this one
      CHARACTER(LEN=*), INTENT(IN)    :: MATIN_NAME           ! Name of matrix
      CHARACTER(LEN=*), INTENT(IN)    :: SYM_OUT              ! 'Y' or 'N' symmetry indicator for output matrix.
 
      INTEGER(LONG), INTENT(IN)       :: N                    ! Number of rows in input matrix, MATIN_FULL
      INTEGER(LONG), INTENT(IN)       :: M                    ! Number of cols in input matrix, MATIN_FULL
      INTEGER(LONG), INTENT(IN)       :: NTERM_ALLOC          ! Number of nonzero terms allocated to MATOUT in calling subr
      INTEGER(LONG), INTENT(OUT)      :: I_MATOUT(N+1)        ! I_MATOUT(I+1) - I_MATOUT(I) = number of nonzeros in MATOUT row I
      INTEGER(LONG), INTENT(OUT)      :: J_MATOUT(NTERM_ALLOC)! Col numbers for nonzero terms in MATOUT
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = FULL_TO_SPARSE_CRS_BEGEND

      REAL(DOUBLE) , INTENT(IN)       :: MATIN_FULL(N,M)      ! Real nonzero values in input matrix MATIN
      REAL(DOUBLE) , INTENT(IN)       :: SMALL                ! Terms < SMALL are filtered out (both here and in calling subr)
      REAL(DOUBLE) , INTENT(OUT)      :: MATOUT(NTERM_ALLOC)  ! Real nonzero values in output matrix MATOUT

      END SUBROUTINE FULL_TO_SPARSE_CRS

   END INTERFACE

   END MODULE FULL_TO_SPARSE_CRS_Interface

