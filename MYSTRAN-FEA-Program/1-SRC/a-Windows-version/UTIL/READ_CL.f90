! ##################################################################################################################################
 
      SUBROUTINE READ_CL ( FILNAM, NC_FILNAM )
 
! Gets command line string, when MYSTRAN is invoked (which should be the name of the input file), and counts the number (NC_FILNAM)
! of characters in the name (leading blanks ignored). 
 
      USE PENTIUM_II_KIND, ONLY       :  LONG
      USE IOUNT1, ONLY                :  FILE_NAM_MAXLEN

      USE READ_CL_USE_IFs

      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(OUT)   :: FILNAM            ! File name on command line
 
      INTEGER(LONG), INTENT(OUT)      :: NC_FILNAM         ! Length, in chars, of FILNAM (with leading blanks removed)
      INTEGER(LONG)                   :: I                 ! DO loop index
 
      INTRINSIC                       :: GETCL

! **********************************************************************************************************************************
! Initialize outputs

      NC_FILNAM = 0

! Get command line string which should contain the file name of the input data deck. GETCL strips out all leading
! blanks, before filename, on the command line. 
 
      FILNAM(1:FILE_NAM_MAXLEN) = ' '
 
      CALL GETCL ( FILNAM )
 
      DO I=1,FILE_NAM_MAXLEN
         IF (FILNAM(I:I) == ' ') THEN
            EXIT
         ELSE
            NC_FILNAM = NC_FILNAM + 1
            FILNAM(NC_FILNAM:NC_FILNAM) = FILNAM(I:I)
         ENDIF
      ENDDO   
 
      RETURN
 
      END SUBROUTINE READ_CL
