! ##################################################################################################################################

      MODULE STF_TEMPLATE_ARRAYS

! Arrays used when the user wants to get a template of the stiffness array written to the F06 file. Not useful for large problens as
! it would produce, possibly, an enormous amount of printed output.

      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE

      IMPLICIT NONE

      SAVE

      LOGICAL           , ALLOCATABLE :: TEMPLATE(:,:)     ! Template array that shows where there are nonzero stiff terms in KGG

      CHARACTER( 1*BYTE), ALLOCATABLE :: CROW(:)           ! Char array of 'K' or '_' to print a template of a row of KGG

      END MODULE STF_TEMPLATE_ARRAYS
