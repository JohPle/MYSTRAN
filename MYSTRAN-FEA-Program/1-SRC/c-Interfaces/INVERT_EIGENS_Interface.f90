! ##################################################################################################################################

   MODULE INVERT_EIGENS_Interface

   INTERFACE

       SUBROUTINE INVERT_EIGENS ( MLAM, N, W, Z, EIG_NUM )

  
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, NVEC
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  INVERT_EIGENS_BEGEND
      USE CONSTANTS_1, ONLY           :  ONE
      USE MACHINE_PARAMS, ONLY        :  MACH_SFMIN, MACH_LARGE_NUM
      USE MODEL_STUF, ONLY            :  EIG_SIGMA
      USE LAPACK_BLAS_AUX
 
      IMPLICIT NONE
  
      INTEGER(LONG), INTENT(IN)       :: MLAM              ! Number of eigenvalues.
      INTEGER(LONG), INTENT(IN)       :: N                 ! Size of eigenvectors.
      INTEGER(LONG), INTENT(INOUT)    :: EIG_NUM(MLAM)     ! Eigenvector numbers.
      INTEGER(LONG)                   :: PM,QM             ! Indices used in reording the W and Z
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = INVERT_EIGENS_BEGEND

      REAL(DOUBLE) , INTENT(INOUT)    :: W(MLAM)           ! Eigenvalues
      REAL(DOUBLE) , INTENT(INOUT)    :: Z(N,NVEC)         ! Eigenvectors

      END SUBROUTINE INVERT_EIGENS

   END INTERFACE

   END MODULE INVERT_EIGENS_Interface

