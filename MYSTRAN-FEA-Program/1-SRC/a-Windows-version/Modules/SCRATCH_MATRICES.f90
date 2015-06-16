! ##################################################################################################################################

      MODULE SCRATCH_MATRICES
  
! Arrays for scratch matrices. CRSi are matrices in sparse CRS format. CCSi are matrices in sparse CCS format

      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE

      IMPLICIT NONE
  
      SAVE

      INTEGER(LONG), ALLOCATABLE      :: I_CCS1(:)         ! Row indicators for nonzero terms in scratch matrix CCS1
      INTEGER(LONG), ALLOCATABLE      :: I_CCS2(:)         ! Row indicators for nonzero terms in scratch matrix CCS2
      INTEGER(LONG), ALLOCATABLE      :: I_CCS3(:)         ! Row indicators for nonzero terms in scratch matrix CCS3

      INTEGER(LONG), ALLOCATABLE      :: I_CRS1(:)         ! Row indicators for nonzero terms in scratch matrix CRS1
      INTEGER(LONG), ALLOCATABLE      :: I_CRS2(:)         ! Row indicators for nonzero terms in scratch matrix CRS2
      INTEGER(LONG), ALLOCATABLE      :: I_CRS3(:)         ! Row indicators for nonzero terms in scratch matrix CRS3

      INTEGER(LONG), ALLOCATABLE      :: J_CCS1(:)         ! Col numbers for nonzero terms in scratch matrix CCS1 
      INTEGER(LONG), ALLOCATABLE      :: J_CCS2(:)         ! Col numbers for nonzero terms in scratch matrix CCS2
      INTEGER(LONG), ALLOCATABLE      :: J_CCS3(:)         ! Col numbers for nonzero terms in scratch matrix CCS3

      INTEGER(LONG), ALLOCATABLE      :: J_CRS1(:)         ! Col numbers for nonzero terms in scratch matrix CRS1
      INTEGER(LONG), ALLOCATABLE      :: J_CRS2(:)         ! Col numbers for nonzero terms in scratch matrix CRS2
      INTEGER(LONG), ALLOCATABLE      :: J_CRS3(:)         ! Col numbers for nonzero terms in scratch matrix CRS3

      REAL(DOUBLE) , ALLOCATABLE      :: CCS1(:)           ! Compressed col storage scratch matrix
      REAL(DOUBLE) , ALLOCATABLE      :: CCS2(:)           ! Compressed col storage scratch matrix
      REAL(DOUBLE) , ALLOCATABLE      :: CCS3(:)           ! Compressed col storage scratch matrix

      REAL(DOUBLE) , ALLOCATABLE      :: CRS1(:)           ! Compressed row storage scratch matrix
      REAL(DOUBLE) , ALLOCATABLE      :: CRS2(:)           ! Compressed row storage scratch matrix
      REAL(DOUBLE) , ALLOCATABLE      :: CRS3(:)           ! Compressed row storage scratch matrix

      END MODULE SCRATCH_MATRICES
