! ##################################################################################################################################

      MODULE SPARSE_ALG_ARRAYS
  
! Arrays used in several of the sparse matrix operation routines (MATADD, MATMULT..., etc) written for MYSTRAN

      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE

      IMPLICIT NONE
  
      SAVE

      LOGICAL      , ALLOCATABLE      :: LOGICAL_VEC(:)    ! LOGICAL_VEC will be used to show which cols of C have terms in the
!                                                            MATADD_SSS subr

      CHARACTER( 3*BYTE), ALLOCATABLE :: ALG(:)            ! Which algorithm is used (#2 for terms above diag when SYM_A='Y'

      INTEGER(LONG), ALLOCATABLE      :: J_AROW(:)         ! Col numbers of terms in real array AROW (used in sparse mult subrs)

      REAL(DOUBLE) , ALLOCATABLE      :: REAL_VEC(:)       ! REAL_VEC will be used to temp store terms which will be in C in the
!                                                            MATADD_SSS subr

      REAL(DOUBLE) , ALLOCATABLE      :: AROW(:)           ! Array containing the nonzero terms from one row of A
!                                                            (used in sparse mult subrs)
  
      END MODULE SPARSE_ALG_ARRAYS
