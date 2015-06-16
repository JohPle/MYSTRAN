! ##################################################################################################################################
 
      SUBROUTINE MKJCARD_08 ( CARD, JCARD_08 )
 
! Routine to create JCARD_08, a set of 10 CHAR fields (each of size 8 chars), from input char CARD
 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG
 
!     USE MKJCARD_08_USE_IFs

      IMPLICIT NONE
 
      CHARACTER(LEN=*)  , INTENT(IN)  :: CARD              ! A MYSTRAN data card
      CHARACTER( 8*BYTE), INTENT(OUT) :: JCARD_08(10)         ! The 10 fields of characters making up CARD
 
      INTEGER(LONG)                   :: I
      INTEGER(LONG)                   :: K1,K2             ! Range for setting CARD = JCARD_08
 
! **********************************************************************************************************************************
      DO I=1,10
         K1 = 8*(I-1) + 1
         K2 = K1 + 7
         JCARD_08(I)(1:8) = CARD(K1:K2)
      ENDDO 
 
      RETURN

! **********************************************************************************************************************************
 
      END SUBROUTINE MKJCARD_08
