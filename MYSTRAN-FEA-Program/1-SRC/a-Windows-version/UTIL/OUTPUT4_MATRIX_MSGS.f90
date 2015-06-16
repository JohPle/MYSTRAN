! ##################################################################################################################################

      SUBROUTINE OUTPUT4_MATRIX_MSGS ( OUNT )

! Writes messages to F06 file regarding matrices that will be output in OUTOUT4 format

      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG
      USE IOUNT1, ONLY                :  ERR, F06, LEN_INPUT_FNAME, MOU4, OU4, OU4FIL, OU4_MSG, OU4STAT
      USE OUTPUT4_MATRICES, ONLY      :  ACT_OU4_MYSTRAN_NAMES, ACT_OU4_MYSTRAN_NAMES, ACT_OU4_OUTPUT_NAMES,                       &
                                         ALLOW_OU4_MYSTRAN_NAMES, ALLOW_OU4_OUTPUT_NAMES, NUM_OU4_REQUESTS, NUM_OU4_VALID_NAMES,   &
                                         OU4_FILE_UNITS
      USE PARAMS, ONLY                :  SUPINFO

      USE OUTPUT4_MATRIX_MSGS_USE_IFs

      IMPLICIT NONE

      CHARACTER(1*BYTE)               :: CDUM                        ! Var returned from called subr not used
                                                             
      CHARACTER(LEN(ALLOW_OU4_MYSTRAN_NAMES))                                                                                      &
                                      :: MYSTRAN_NAMES_I(NUM_OU4_VALID_NAMES)      
                                                                     ! OUTPUT4 matrix names written to one OU4 unit   

      CHARACTER(LEN(ALLOW_OU4_MYSTRAN_NAMES))                                                                                      &
                                      :: OUTPUT_NAMES_I(NUM_OU4_VALID_NAMES)      
                                                                     ! OUTPUT4 matrix names written to one OU4 unit   

      INTEGER(LONG), INTENT(IN)       :: OUNT(2)             ! File units to write messages to. Input to subr UNFORMATTED_OPEN.
      INTEGER(LONG)                   :: I,J                         ! DO loop indices
      INTEGER(LONG)                   :: IDUM                        ! Var returned from called subr not used
      INTEGER(LONG)                   :: NROWS_OU4(NUM_OU4_REQUESTS) ! Number of rows in a particular OUTPUT4 matrix
      INTEGER(LONG)                   :: NCOLS_OU4(NUM_OU4_REQUESTS) ! Number of cols in a particular OUTPUT4 matrix
      INTEGER(LONG)                   :: NOU4_UNITS                  ! Number of OU4 units for files requested
      INTEGER(LONG)                   :: NOU4_FILES                  ! Number of matrices to write to a specific OPi file

! **********************************************************************************************************************************
      DO I=1,MOU4                                          ! Initially set all to close status of 'DELETE'
         OU4STAT(I) = 'DELETE'                             ! (should have been done in module IOUNT1 but do it here to make sure)
      ENDDO

      NOU4_UNITS = 0                                       ! Reset to "KEEP' close status of units where OUTPUT4 files written
      DO I=1,NUM_OU4_REQUESTS
         DO J=1,MOU4
            IF (OU4_FILE_UNITS(I) == OU4(J)) THEN
               OU4STAT(J) = 'KEEP'
               EXIT
            ENDIF
         ENDDO
      ENDDO

      NOU4_UNITS = 0                                       ! Count the number of OUTPUT4 files that need to be kept
      DO I=1,MOU4
         IF (OU4STAT(I) == 'KEEP') THEN
            NOU4_UNITS = NOU4_UNITS + 1
         ENDIF
      ENDDO

      IF (NOU4_UNITS > 0) THEN
         WRITE(F06,*)
         WRITE(ERR,288) NUM_OU4_REQUESTS, NOU4_UNITS
            WRITE(F06,288) NUM_OU4_REQUESTS, NOU4_UNITS
         DO I=1,MOU4                                       ! Open and then close as "KEEP' the requested OUTPUT4 files
            NOU4_FILES = 0
            IF (OU4STAT(I) == 'KEEP') THEN
               WRITE(F06,289) OU4(I), OU4FIL(I)(1:LEN_INPUT_FNAME+3)
               DO J=1,NUM_OU4_REQUESTS
                  IF (OU4_FILE_UNITS(J) == OU4(I)) THEN
                     NOU4_FILES = NOU4_FILES + 1
                     MYSTRAN_NAMES_I(NOU4_FILES) = ACT_OU4_MYSTRAN_NAMES(J)
                     OUTPUT_NAMES_I(NOU4_FILES)  = ACT_OU4_OUTPUT_NAMES(J)
                  ENDIF
               ENDDO
               DO J=1,NOU4_FILES
                  IF (OUTPUT_NAMES_I(J) == MYSTRAN_NAMES_I(J)) THEN
                     WRITE(F06,290) J, OUTPUT_NAMES_I(J)
                  ELSE
                     WRITE(F06,291) J, OUTPUT_NAMES_I(J), MYSTRAN_NAMES_I(J)
                  ENDIF
               ENDDO
               WRITE(F06,*)
               CALL FILE_OPEN  ( OU4(I), OU4FIL(I), OUNT, 'REPLACE', OU4_MSG(I), 'NEITHER', 'UNFORMATTED', 'WRITE', 'REWIND',      &
                                 'Y', 'N', 'Y')
               CALL FILE_CLOSE ( OU4(I), OU4FIL(I), 'KEEP', 'Y' )
            ENDIF
         ENDDO
         WRITE(F06,*)
      ENDIF

! **********************************************************************************************************************************
  288 FORMAT(' *INFORMATION: THE FOLLOWING ',I3,' MATRICES HAVE BEEN REQUESTED TO BE WRITTEN TO ',I2,' OUTPUT4 FILES IN THE ORDER',&
                           ' LISTED BELOW:',/)

  289 FORMAT(14X,' OUTPUT4 file on unit ',I3,' has been created as: ',A,' and will contain the matrices:')

  290 FORMAT(23X,'(',I2,') ',A)

  291 FORMAT(23X,'(',I2,') ',A,3X,': this is MYSTRAN matrix ',A)

! **********************************************************************************************************************************

      END SUBROUTINE OUTPUT4_MATRIX_MSGS

