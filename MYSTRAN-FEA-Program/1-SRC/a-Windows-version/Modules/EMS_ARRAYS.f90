! ##################################################################################################################################

      MODULE EMS_ARRAYS
  
! Initial, linked list, representation of the G-set mass matrix for elem mass. This is the form in which the individual element mass
! matrices are assembled into the system mass matrix in subr EMP.

! See module STF_ARRAYS for an example of this linked list format

      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE

      IMPLICIT NONE
  
      SAVE

      INTEGER(LONG), ALLOCATABLE      :: EMSCOL(:)         ! See explanation below
      INTEGER(LONG), ALLOCATABLE      :: EMSPNT(:)         ! See explanation below
      INTEGER(LONG), ALLOCATABLE      :: EMSKEY(:)         ! See explanation below
 
      REAL(DOUBLE) , ALLOCATABLE      :: EMS(:)            ! See explanation below
  

!  EMS(I)    = 1D real array of the nonzero terms, above the diag, in the G-set elem mass matrix. Size is NTERM_EMG.

!  EMSKEY(I) = 1D integer array of pointers to where, in EMS, the 1st mass term for row I exists.
!              EMSKEY(I) = 0 if row I  is null. Size is NDOFA.

!  EMSPNT(I) = 1D integer array of pointers to where, in EMS, the 2nd and remaining mass terms for row I exist.
!              The 2nd term in row I is at EMSPNT(EMSKEY(I))          in EMS.
!              The 3rd term IN ROW i is at EMSPNT(EMSPNT(EMSKEY(I))), etc.
!              When a zero value of EMSPNT is reached in this scheme it means that there are no more terms in row I.
!              Size is NTERM_EMG.

!  EMSCOL(I) = 1D integer array of the column numbers of the terms in EMS(I). Size is NTERM_EMG.
  
     
      END MODULE EMS_ARRAYS
