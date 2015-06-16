! ##################################################################################################################################
 
      SUBROUTINE MKCARD ( JCARD, CARD )
 
! Routine to create CARD from the 10 CHAR input JCARD fields
 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG
      USE SCONTR, ONLY                :  JCARD_LEN
 
      USE MKCARD_USE_IFs

      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)            :: JCARD(10)         ! The 10 fields of characters making up CARD
      CHARACTER(LEN=10*JCARD_LEN), INTENT(OUT):: CARD              ! A MYSTRAN data card
 
      INTEGER(LONG)                           :: I                 ! DO loop index
      INTEGER(LONG)                           :: K1,K2             ! Range for setting CARD = JCARD
 
! **********************************************************************************************************************************
! Initialize outputs

      CARD(1:) = ' '

      DO I=1,10
         K1 = JCARD_LEN*(I-1) + 1
         K2 = K1 + JCARD_LEN - 1
         CARD(K1:K2) = JCARD(I)(1:JCARD_LEN)
      ENDDO 
 
      RETURN

! **********************************************************************************************************************************
 
      END SUBROUTINE MKCARD
