! ##################################################################################################################################

      MODULE INPUTT4_MATRICES
  
! Data used in reading INPUTT4 binary matrices for substructure analyses in subr READ_IN4_FULL_MAT
  
      USE PENTIUM_II_KIND, ONLY        :  BYTE, LONG, DOUBLE

      IMPLICIT NONE

      SAVE
  
      INTEGER(LONG), ALLOCATABLE       :: IN4_COL_MAP(:)   ! Map to expand IN4_MAT to a full 6 comps/grid for a CUSERIN elem

      REAL(DOUBLE) , ALLOCATABLE       :: IN4_MAT(:,:)     ! INPUTT4 matrix read in subr READ_IN4_FULL_MAT

      END MODULE INPUTT4_MATRICES                                                    
