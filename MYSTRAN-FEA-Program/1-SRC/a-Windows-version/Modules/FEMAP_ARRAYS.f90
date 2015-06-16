! ##################################################################################################################################

      MODULE FEMAP_ARRAYS
  
! Arrays needed to be allocated for output vectors for FEMAP

      USE PENTIUM_II_KIND, ONLY       :  LONG, DOUBLE

      IMPLICIT NONE
  
      SAVE

      INTEGER(LONG)    , ALLOCATABLE  :: FEMAP_EL_NUMS(:,:)! Array of elem and ply numbers for terms in FEMAP_ELEM_DATA

      REAL(DOUBLE)     , ALLOCATABLE  :: FEMAP_EL_VECS(:,:)! Real elem values for one FEMAP output vector for elem related outputs
      
      END MODULE FEMAP_ARRAYS
