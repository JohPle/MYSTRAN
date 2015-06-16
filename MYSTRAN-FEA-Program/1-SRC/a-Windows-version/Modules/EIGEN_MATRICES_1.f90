! ##################################################################################################################################

      MODULE EIGEN_MATRICES_1
  
! Matrices used in eigenvalue analyses
  
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE

      IMPLICIT NONE
   
      SAVE

      INTEGER(LONG), ALLOCATABLE      :: MODE_NUM(:)       ! Integer array of mode numbers
      INTEGER(LONG), ALLOCATABLE      :: MODES_OUT(:)      ! 0, 1 indicator of whether an eigenvec is requested for output

      REAL(DOUBLE) , ALLOCATABLE      :: EIGEN_VAL(:)      ! Matrix of eigenvalues
      REAL(DOUBLE) , ALLOCATABLE      :: EIGEN_VEC(:,:)    ! Matrix of eigenvectors
      REAL(DOUBLE) , ALLOCATABLE      :: GEN_MASS(:)       ! 1D array of gen masses; one for each eigenvalue
      REAL(DOUBLE) , ALLOCATABLE      :: MEFFMASS(:,:)     ! Modal effective masses
      REAL(DOUBLE) , ALLOCATABLE      :: MPFACTOR_N6(:,:)  ! Modal participation factors rel to 6 displ comps at MEFMGRID
      REAL(DOUBLE) , ALLOCATABLE      :: MPFACTOR_NR(:,:)  ! Modal participation factors for all NDOFR DOF's
   
      END MODULE EIGEN_MATRICES_1
