! ##################################################################################################################################

      MODULE LAPACK_DPB_MATRICES
  
! Arrays for LAPACK banded matrices

      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE

      IMPLICIT NONE
  
      SAVE

      REAL(DOUBLE), ALLOCATABLE       :: ABAND(:,:)        ! A stiffness matrix in LAPACK banded format
      REAL(DOUBLE), ALLOCATABLE       :: BBAND(:,:)        ! A mass matrix in LAPACK banded format
      REAL(DOUBLE), ALLOCATABLE       :: RES(:)            ! Residual vector
      REAL(DOUBLE), ALLOCATABLE       :: LAPACK_S(:)       ! Array of scale factors if matrix needs equilibrating

      END MODULE LAPACK_DPB_MATRICES
   