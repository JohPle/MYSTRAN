! ##################################################################################################################################
  
      SUBROUTINE WRITE_FILNAM ( FILNAM, UNT, BLEN )

! Writes file name, FILNAM, to unit UNT with a format that depends on the actual length, in characters, of FILNAM (used
! to avoid using 4 lines of screen to write a short file name when the allowable length of FILNAM is 256 bytes)
 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG
      USE IOUNT1, ONLY                :  FILE_NAM_MAXLEN, SC1
   
      USE WRITE_FILNAM_USE_IFs

      IMPLICIT NONE
  
      CHARACTER(LEN=*), INTENT(IN)    :: FILNAM            ! File name
      CHARACTER(15*BYTE)              :: LEADING_BLANKS    ! 
  
      INTEGER(LONG), INTENT(IN)       :: UNT               ! Unit number of file FILNAM to write to
      INTEGER(LONG), INTENT(IN)       :: BLEN              ! Length, in char's, of blanks to print before filnam
      INTEGER(LONG)                   :: I                 ! DO loop index
      INTEGER(LONG)                   :: FLEN              ! Length, in char's, of FILNAM (non-blanks)
   
! **********************************************************************************************************************************
! Find actual length of file name
    
      DO I=LEN(FILNAM),1,-1
         IF (FILNAM(I:I) == ' ') THEN
            CYCLE
         ELSE
            FLEN = I
            EXIT
         ENDIF
      ENDDO

      LEADING_BLANKS(1:) = ' '

! Print filename with a format that depends on FLEN

      IF (UNT == SC1) THEN
         IF      ((FLEN >   0) .AND. (FLEN <=  63)) THEN
            WRITE(SC1,1001) LEADING_BLANKS(1:BLEN), FILNAM(1: 79)
         ELSE IF ((FLEN >  63) .AND. (FLEN <= 143)) THEN
            WRITE(SC1,1002) LEADING_BLANKS(1:BLEN), FILNAM(1:143)
         ELSE IF ((FLEN > 143) .AND. (FLEN <= 223)) THEN
            WRITE(SC1,1003) LEADING_BLANKS(1:BLEN), FILNAM(1:223)
         ELSE
            WRITE(SC1,1004) LEADING_BLANKS(1:BLEN), FILNAM
         ENDIF 
      ELSE
         IF      ((FLEN >   0) .AND. (FLEN <=  79)) THEN
            WRITE(UNT,1011) LEADING_BLANKS(1:BLEN), FILNAM(1: 79)
         ELSE IF ((FLEN >  79) .AND. (FLEN <= 158)) THEN
            WRITE(UNT,1012) LEADING_BLANKS(1:BLEN), FILNAM(1:159)
         ELSE IF ((FLEN > 159) .AND. (FLEN <= 239)) THEN
            WRITE(UNT,1013) LEADING_BLANKS(1:BLEN), FILNAM(1:239)
         ELSE
            WRITE(UNT,1014) LEADING_BLANKS(1:BLEN), FILNAM
         ENDIF
      ENDIF 
   
! **********************************************************************************************************************************
 1001 FORMAT(A,A63)

 1002 FORMAT(A,A143)

 1003 FORMAT(A,A223)

 1004 FORMAT(A,A256)

 1011 FORMAT(A,A65)

 1012 FORMAT(A,A144)

 1013 FORMAT(A,A223)

 1014 FORMAT(A,A256)

! **********************************************************************************************************************************
  
      END SUBROUTINE WRITE_FILNAM
