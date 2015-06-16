! ##################################################################################################################################

      SUBROUTINE CHECK_TE_MATRIX ( TE_IN, NAME_IN )

! Checks TE_IN(t)*TE_IN to see if the element transformation matrix times its transpose is an identity matrix

      USE PENTIUM_II_KIND, ONLY       :  LONG, DOUBLE
      USE IOUNT1, ONLY                :  BUG

      IMPLICIT NONE

      CHARACTER(LEN=*), INTENT(IN)    :: NAME_IN           ! Name for output purposes

      INTEGER(LONG)                   :: I,J               ! DO loop indices

      REAL(DOUBLE), INTENT(IN)        :: TE_IN(3,3)        ! Input TE matrix
      REAL(DOUBLE)                    :: DUM1(3,3)         ! Dummy matrix in a matrix multiply
      REAL(DOUBLE)                    :: DUM2(3,3)         ! Dummy matrix in a matrix multiply

! **********************************************************************************************************************************
      DO I=1,3
         DO J=1,3
            DUM1(I,J) = TE_IN(I,J)
         ENDDO
      ENDDO

      CALL MATMULT_FFF_T ( DUM1, TE_IN, 3, 3, 3, DUM2 )
      WRITE(BUG,1) NAME_IN, NAME_IN
      DO I=1,3
         WRITE(BUG,2) (DUM2(I,J),J=1,3)
      ENDDO
      WRITE(BUG,*)

      RETURN

! **********************************************************************************************************************************
    1 FORMAT('  Check on ',A,'(t)*',A,' to see if it is the identity matrix:',/,                                                   &
             '  -----------------------------------------------------------------')

    2 FORMAT(3(1ES14.6))

      END SUBROUTINE CHECK_TE_MATRIX
