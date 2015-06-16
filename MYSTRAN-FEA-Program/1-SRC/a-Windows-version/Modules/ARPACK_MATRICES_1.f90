! ##################################################################################################################################

      MODULE ARPACK_MATRICES_1
  
! Matrices used by ARPACK for Lanczos method. 
  
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE

      IMPLICIT NONE
   
      SAVE

      LOGICAL      , ALLOCATABLE      :: SELECT(:)         ! See ARPACK subroutine DSBAND for definition

      INTEGER(LONG), ALLOCATABLE      :: IWORK(:)          ! See ARPACK subroutine DSBAND for definition

      REAL(DOUBLE) , ALLOCATABLE      :: RESID(:)          ! See ARPACK subroutine DSBAND for definition
      REAL(DOUBLE) , ALLOCATABLE      :: RFAC(:,:)         ! See ARPACK subroutine DSBAND for definition
      REAL(DOUBLE) , ALLOCATABLE      :: VBAS(:,:)         ! See ARPACK subroutine DSBAND for definition
      REAL(DOUBLE) , ALLOCATABLE      :: WORKD(:)          ! See ARPACK subroutine DSBAND for definition
      REAL(DOUBLE) , ALLOCATABLE      :: WORKL(:)          ! See ARPACK subroutine DSBAND for definition
   
      END MODULE ARPACK_MATRICES_1
