! ##################################################################################################################################

      MODULE MISC_MATRICES
  
! Other matrices that are not designated as full (MAT_FULL) or sparse (I_MAT, J_MAT, MAT)
  
      USE PENTIUM_II_KIND, ONLY       :  DOUBLE

      IMPLICIT NONE
   
      SAVE

      REAL(DOUBLE), ALLOCATABLE       :: UG_T123_MAT(:,:)      ! Matrix of UG_COL values for tranlation comps in a NGRID x 3 matrix
   
      END MODULE MISC_MATRICES
