! ##################################################################################################################################

      SUBROUTINE WRT_REAL_TO_CHAR_VAR ( REAL_VAR, NROWS, NCOLS, ROW_NUM, CHAR_VAR )

! Writes real values in one row of array REAL_VAR to a character variable, CHAR_VAR. This is done so that we can change real
! zero's to character values. Then the calling routine that will write REAL_VAR values to the F06 file can have values such as
! '  0.0         ' written rather than the 1ES14.6 format: 0.000000E+00. This subr is written for word lengths of 14 bytes only

      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  ERR, F06
      USE SCONTR, ONLY                :  FATAL_ERR

      IMPLICIT NONE

      INTEGER(LONG), INTENT(IN)       :: NCOLS                ! Number of cols in array REAL_VAR
      INTEGER(LONG), INTENT(IN)       :: NROWS                ! Number of rows in array REAL_VAR
      INTEGER(LONG), INTENT(IN)       :: ROW_NUM              ! Row number in array REAL_VAR to write
      INTEGER(LONG)                   :: J                    ! DO loop index

      CHARACTER(14*BYTE), INTENT(OUT) :: CHAR_VAR(NCOLS)      ! Character representation of the real data in one row of REAL_VAR

      REAL(DOUBLE) , INTENT(IN)       :: REAL_VAR(NROWS,NCOLS)! 

! **********************************************************************************************************************************
      DO J=1,NCOLS
         CHAR_VAR(J)(1:) = ' '
      ENDDO

      DO J=1,NCOLS
         IF (REAL_VAR(ROW_NUM,J) == 0.0) THEN
            WRITE(CHAR_VAR(J),'(A)') '  0.0         '
         ELSE
            WRITE(CHAR_VAR(J),'(1ES14.6)') REAL_VAR(ROW_NUM,J)
         ENDIF
      ENDDO

      RETURN

! **********************************************************************************************************************************
!9102 FORMAT(' *ERROR  9102: PROGRAMMING ERROR IN SUBROUTINE ',A                                                                   &
!                   ,/,14X,' INPUT VARIABLE NUM_WORDS WAS = ',I8,' BUT CANNOT BE > MOGEL = ',I8)

! **********************************************************************************************************************************

      END SUBROUTINE WRT_REAL_TO_CHAR_VAR

