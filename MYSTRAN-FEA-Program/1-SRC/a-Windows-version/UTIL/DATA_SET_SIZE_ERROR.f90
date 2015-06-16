! ##################################################################################################################################
      SUBROUTINE DATA_SET_SIZE_ERROR ( FILNAM, DATA_SET_NAME, DATA_NAME, INT1, INT2 )

! Writes message indicating that a dimension of a data set about to be read from an unformatted file is not what was expected
! and then aborts

      USE PENTIUM_II_KIND, ONLY       :  LONG
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F06, LINK1A
      USE SCONTR, ONLY                :  FATAL_ERR

      USE DATA_SET_SIZE_ERROR_USE_IFs

      IMPLICIT NONE

      CHARACTER(LEN=*), INTENT(IN)    :: DATA_SET_NAME     ! Name of data set read from FILNAM
      CHARACTER(LEN=*), INTENT(IN)    :: DATA_NAME         ! Name of data variable that should have been read
      CHARACTER(LEN=*), INTENT(IN)    :: FILNAM            ! Nmae of file data was read from

      INTEGER(LONG)   , INTENT(IN)    :: INT1              ! Size of data variable that should have been read
      INTEGER(LONG)   , INTENT(IN)    :: INT2              ! Size of data variable read
      INTEGER(LONG)                   :: I                 ! DO loop Index
      INTEGER(LONG)                   :: IEND1             ! Index
      INTEGER(LONG)                   :: IEND2             ! Index

! **********************************************************************************************************************************
      DO I=LEN(FILNAM),1,-1
         IF (FILNAM(I:I) /= ' ') THEN
            IEND1 = I
            EXIT
         ENDIF
      ENDDO

      DO I=LEN(DATA_SET_NAME),1,-1
         IF (DATA_SET_NAME(I:I) /= ' ') THEN
            IEND2 = I
            EXIT
         ENDIF
      ENDDO

      WRITE(ERR,925) FILNAM(1:IEND1), DATA_SET_NAME(1:IEND2), DATA_NAME, INT1, INT2
      WRITE(F06,925) FILNAM(1:IEND1), DATA_SET_NAME(1:IEND2), DATA_NAME, INT1, INT2
      FATAL_ERR = FATAL_ERR + 1
      CALL OUTA_HERE ( 'Y' )
 
! **********************************************************************************************************************************
  925 FORMAT(' *ERROR   925: ERROR READING FILE: '                                                                                 &
                    ,/,15X,A                                                                                                       &
                    ,/,14X,' DIMENSION OF DATA SET: "',A,'"'                                                                       &
                    ,/,14x,' SHOULD BE ',A,' = ',I8,' BUT IS ',I8,'.'                                                              &
                    ,/,15X,A)

! **********************************************************************************************************************************

      END SUBROUTINE DATA_SET_SIZE_ERROR