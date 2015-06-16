! ##################################################################################################################################

      SUBROUTINE FILE_INQUIRE ( MESSAGE )

! Inquires about whether files are opened. Writes results to file F06

      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  FILE_NAM_MAXLEN,  MOT4,    MOU4,    WRT_LOG

      USE IOUNT1, ONLY                :  ANS,     BUG,     EIN,     ENF,     ERR,     F04,     F06,     IN0,     IN1,     NEU,     &
                                         SEQ,     SC1,     SPC,                                                                    &
                                         F21,     F22,     F23,     F24,     F25,                                                  &
                                         L1A,     L1B,     L1C,     L1D,     L1E,     L1F,     L1G,     L1H,     L1I,     L1J,     &
                                         L1K,     L1L,     L1M,     L1N,     L1O,     L1P,     L1Q,     L1R,     L1S,     L1T,     &
                                         L1U,     L1V,     L1W,     L1X,     L1Y,     L1Z,                                         &
                                         L2A,     L2B,     L2C,     L2D,     L2E,     L2F,     L2G,     L2H,     L2I,     L2J,     &
                                         L2K,     L2L,     L2M,     L2N,     L2O,     L2P,     L2Q,     L2R,     L2S,     L2T,     &
                                         L3A,     L4A,     L4B,     L4C,     L4D,     L5A,     L5B,     OT4,     OU4

      USE IOUNT1, ONLY                :  ANSFIL,  BUGFIL,  EINFIL,  ENFFIL,  ERRFIL,  F04FIL,  F06FIL,  IN0FIL,  INFILE,  NEUFIL,  &
                                         SEQFIL,  SPCFIL,                                                                          &
                                         F21FIL,  F22FIL,  F23FIL,  F24FIL,  F25FIL,                                               &
                                         LINK1A,  LINK1B,  LINK1C,  LINK1D,  LINK1E,  LINK1F,  LINK1G,  LINK1H,  LINK1I,  LINK1J,  &
                                         LINK1K,  LINK1L,  LINK1M,  LINK1N,  LINK1O,  LINK1P,  LINK1Q,  LINK1R,  LINK1S,  LINK1T,  &
                                         LINK1U,  LINK1V,  LINK1W,  LINK1X,  LINK1Y,  LINK1Z,                                      &
                                         LINK2A,  LINK2B,  LINK2C,  LINK2D,  LINK2E,  LINK2F,  LINK2G,  LINK2H,  LINK2I,  LINK2J,  &
                                         LINK2K,  LINK2L,  LINK2M,  LINK2N,  LINK2O,  LINK2P,  LINK2Q,  LINK2R,  LINK2S,  LINK2T,  &
                                         LINK3A,  LINK4A,  LINK4B,  LINK4C,  LINK4D,  LINK5A,  LINK5B,  OT4FIL,  OU4FIL

      USE SCONTR, ONLY                :  BLNK_SUB_NAM
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  FILE_INQUIRE_BEGEND

      USE FILE_INQUIRE_USE_IFs

      IMPLICIT NONE
 
      LOGICAL                         :: LEXIST            ! True if file exists
      LOGICAL                         :: LOPND             ! True if file is opened

      CHARACTER(LEN=LEN(BLNK_SUB_NAM)):: SUBR_NAME = 'FILE_INQUIRE'
      CHARACTER(LEN=*), INTENT(IN)    :: MESSAGE           ! Message written when this subr is called
      CHARACTER( 3*BYTE)              :: FIL(100)          ! Descriptor of a MYSTRAN file
      CHARACTER(FILE_NAM_MAXLEN*BYTE) :: FILNAM(100)       ! Filename                     
      CHARACTER( 3*BYTE), PARAMETER   :: OPI(MOU4) = (/'OP1','OP2','OP3','OP4','OP5','OP6','OP7','OP8','OP9'/)
      CHARACTER(14*BYTE)              :: ANSE              ! Message set based on value of LEXIST
      CHARACTER(10*BYTE)              :: ANSO              ! Message set based on value of LOPND

      INTEGER(LONG)                   :: I                 ! DO loop index
      INTEGER(LONG)                   :: UNT(100)          ! Unit number of a MYSTRAN file
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = FILE_INQUIRE_BEGEND

! **********************************************************************************************************************************
      IF (WRT_LOG >= SUBR_BEGEND) THEN
         CALL OURTIM
         WRITE(F04,9001) SUBR_NAME,TSEC
 9001    FORMAT(1X,A,' BEGN ',F10.3)
      ENDIF

! **********************************************************************************************************************************
      FIL(  1) = 'SC1'   ;   UNT(  1) =  SC1               ! SC1 - don't need to do INQUIRE on it
      FIL(  2) = 'ANS'   ;   UNT(  2) =  ANS   ;   FILNAM(  2) = ANSFIL
      FIL(  3) = 'BUG'   ;   UNT(  3) =  BUG   ;   FILNAM(  3) = BUGFIL
      FIL(  4) = 'EIN'   ;   UNT(  4) =  EIN   ;   FILNAM(  4) = EINFIL
      FIL(  5) = 'ENF'   ;   UNT(  5) =  ENF   ;   FILNAM(  5) = ENFFIL
      FIL(  6) = 'ERR'   ;   UNT(  6) =  ERR   ;   FILNAM(  6) = ERRFIL
      FIL(  7) = 'F04'   ;   UNT(  7) =  F04   ;   FILNAM(  7) = F04FIL
      FIL(  8) = 'F06'   ;   UNT(  8) =  F06   ;   FILNAM(  8) = F06FIL
      FIL(  9) = 'L1A'   ;   UNT(  9) =  L1A   ;   FILNAM(  9) = LINK1A
      FIL( 10) = 'IN0'   ;   UNT( 10) =  IN0   ;   FILNAM( 10) = IN0FIL
      FIL( 11) = 'NEU'   ;   UNT( 11) =  NEU   ;   FILNAM( 11) = NEUFIL
      FIL( 12) = 'SEQ'   ;   UNT( 12) =  SEQ   ;   FILNAM( 12) = SEQFIL
      FIL( 13) = 'SPC'   ;   UNT( 13) =  SPC   ;   FILNAM( 13) = SPCFIL
      FIL( 14) = 'F21'   ;   UNT( 14) =  F21   ;   FILNAM( 14) = F21FIL
      FIL( 15) = 'F22'   ;   UNT( 15) =  F22   ;   FILNAM( 15) = F22FIL
      FIL( 16) = 'F23'   ;   UNT( 16) =  F23   ;   FILNAM( 16) = F23FIL
      FIL( 17) = 'F24'   ;   UNT( 17) =  F24   ;   FILNAM( 17) = F24FIL
      FIL( 18) = 'F25'   ;   UNT( 18) =  F25   ;   FILNAM( 18) = F25FIL
      FIL( 19) = 'L1B'   ;   UNT( 19) =  L1B   ;   FILNAM( 19) = LINK1B
      FIL( 20) = 'L1C'   ;   UNT( 20) =  L1C   ;   FILNAM( 20) = LINK1C
      FIL( 21) = 'L1D'   ;   UNT( 21) =  L1D   ;   FILNAM( 21) = LINK1D
      FIL( 22) = 'L1E'   ;   UNT( 22) =  L1E   ;   FILNAM( 22) = LINK1E
      FIL( 23) = 'L1F'   ;   UNT( 23) =  L1F   ;   FILNAM( 23) = LINK1F
      FIL( 24) = 'L1G'   ;   UNT( 24) =  L1G   ;   FILNAM( 24) = LINK1G
      FIL( 25) = 'L1H'   ;   UNT( 25) =  L1H   ;   FILNAM( 25) = LINK1H
      FIL( 26) = 'L1I'   ;   UNT( 26) =  L1I   ;   FILNAM( 26) = LINK1I
      FIL( 27) = 'L1J'   ;   UNT( 27) =  L1J   ;   FILNAM( 27) = LINK1J
      FIL( 28) = 'L1K'   ;   UNT( 28) =  L1K   ;   FILNAM( 28) = LINK1K
      FIL( 29) = 'L1L'   ;   UNT( 29) =  L1L   ;   FILNAM( 29) = LINK1L
      FIL( 30) = 'L1M'   ;   UNT( 30) =  L1M   ;   FILNAM( 30) = LINK1M
      FIL( 31) = 'L1N'   ;   UNT( 31) =  L1N   ;   FILNAM( 31) = LINK1N
      FIL( 32) = 'L1O'   ;   UNT( 32) =  L1O   ;   FILNAM( 32) = LINK1O
      FIL( 33) = 'L1P'   ;   UNT( 33) =  L1P   ;   FILNAM( 33) = LINK1P
      FIL( 34) = 'L1Q'   ;   UNT( 34) =  L1Q   ;   FILNAM( 34) = LINK1Q
      FIL( 35) = 'L1R'   ;   UNT( 35) =  L1R   ;   FILNAM( 35) = LINK1R
      FIL( 36) = 'L1S'   ;   UNT( 36) =  L1S   ;   FILNAM( 36) = LINK1S
      FIL( 37) = 'L1T'   ;   UNT( 37) =  L1T   ;   FILNAM( 37) = LINK1T
      FIL( 38) = 'L1U'   ;   UNT( 38) =  L1U   ;   FILNAM( 38) = LINK1U
      FIL( 39) = 'L1V'   ;   UNT( 39) =  L1V   ;   FILNAM( 39) = LINK1V
      FIL( 40) = 'L1W'   ;   UNT( 40) =  L1W   ;   FILNAM( 40) = LINK1W
      FIL( 41) = 'L1X'   ;   UNT( 41) =  L1X   ;   FILNAM( 41) = LINK1X
      FIL( 42) = 'L1Y'   ;   UNT( 42) =  L1Y   ;   FILNAM( 42) = LINK1Y
      FIL( 43) = 'L1Z'   ;   UNT( 43) =  L1Z   ;   FILNAM( 43) = LINK1Z
      FIL( 44) = 'L2A'   ;   UNT( 44) =  L2A   ;   FILNAM( 44) = LINK2A
      FIL( 45) = 'L2B'   ;   UNT( 45) =  L2B   ;   FILNAM( 45) = LINK2B
      FIL( 46) = 'L2C'   ;   UNT( 46) =  L2C   ;   FILNAM( 46) = LINK2C
      FIL( 47) = 'L2D'   ;   UNT( 47) =  L2D   ;   FILNAM( 47) = LINK2D
      FIL( 48) = 'L2E'   ;   UNT( 48) =  L2E   ;   FILNAM( 48) = LINK2E
      FIL( 49) = 'L2F'   ;   UNT( 49) =  L2F   ;   FILNAM( 49) = LINK2F
      FIL( 50) = 'L2G'   ;   UNT( 50) =  L2G   ;   FILNAM( 50) = LINK2G
      FIL( 51) = 'L2H'   ;   UNT( 51) =  L2H   ;   FILNAM( 51) = LINK2H
      FIL( 52) = 'L2I'   ;   UNT( 52) =  L2I   ;   FILNAM( 52) = LINK2I
      FIL( 53) = 'L2J'   ;   UNT( 53) =  L2J   ;   FILNAM( 53) = LINK2J
      FIL( 54) = 'L2K'   ;   UNT( 54) =  L2K   ;   FILNAM( 54) = LINK2K
      FIL( 55) = 'L2L'   ;   UNT( 55) =  L2L   ;   FILNAM( 55) = LINK2L
      FIL( 56) = 'L2M'   ;   UNT( 56) =  L2M   ;   FILNAM( 56) = LINK2M
      FIL( 57) = 'L2N'   ;   UNT( 57) =  L2N   ;   FILNAM( 57) = LINK2N
      FIL( 58) = 'L2O'   ;   UNT( 58) =  L2O   ;   FILNAM( 58) = LINK2O
      FIL( 59) = 'L2P'   ;   UNT( 59) =  L2P   ;   FILNAM( 59) = LINK2P
      FIL( 60) = 'L2Q'   ;   UNT( 60) =  L2Q   ;   FILNAM( 60) = LINK2Q
      FIL( 61) = 'L2R'   ;   UNT( 61) =  L2R   ;   FILNAM( 61) = LINK2R
      FIL( 62) = 'L2S'   ;   UNT( 62) =  L2S   ;   FILNAM( 62) = LINK2S
      FIL( 63) = 'L2T'   ;   UNT( 63) =  L2T   ;   FILNAM( 63) = LINK2T
      FIL( 64) = 'L3A'   ;   UNT( 64) =  L3A   ;   FILNAM( 64) = LINK3A
      FIL( 65) = 'L4A'   ;   UNT( 65) =  L4A   ;   FILNAM( 65) = LINK4A
      FIL( 66) = 'L4B'   ;   UNT( 66) =  L4B   ;   FILNAM( 66) = LINK4B
      FIL( 67) = 'L4C'   ;   UNT( 67) =  L4C   ;   FILNAM( 67) = LINK4C
      FIL( 68) = 'L4D'   ;   UNT( 68) =  L4D   ;   FILNAM( 68) = LINK4D
      FIL( 69) = 'L5A'   ;   UNT( 69) =  L5A   ;   FILNAM( 69) = LINK5A
      FIL( 70) = 'L5B'   ;   UNT( 70) =  L5B   ;   FILNAM( 70) = LINK5B

      DO I=1,MOU4
         FIL(70+I)      = 'OPI(I)'   ;   UNT(70+I)      =  OU4(I)   ;   FILNAM(70+I)      = OU4FIL(I)
      ENDDO
      DO I=1,MOT4
         FIL(70+MOU4+I) = 'OTI(I)'   ;   UNT(70+MOU4+I) =  OT4(I)   ;   FILNAM(70+MOU4+I) = OT4FIL(I)
      ENDDO

      WRITE(ERR,1)
      WRITE(ERR,2) MESSAGE 

      WRITE(F06,1)
      WRITE(F06,2) MESSAGE 

      DO I=2,70+MOU4+MOT4                                  ! Start at 2 since SC1 was 1 and we do not do INQUIRE on it
         IF (UNT(I) /= 0) THEN
           INQUIRE(FILE=FILNAM(I),EXIST=LEXIST,OPENED=LOPND)
           IF (LEXIST) THEN
               ANSE = 'exists'
            ELSE
               ANSE = 'does not exist'
            ENDIF
            IF (LOPND) THEN
               ANSO = '    opened'
            ELSE
               ANSO = 'not opened'
            ENDIF
            WRITE(ERR,2999) FIL(I), UNT(I), ANSE, ANSO, FILNAM(I)
            WRITE(F06,2999) FIL(I), UNT(I), ANSE, ANSO, FILNAM(I)
         ENDIF
      ENDDO 

! **********************************************************************************************************************************
      IF (WRT_LOG >= SUBR_BEGEND) THEN
         CALL OURTIM
         WRITE(F04,9002) SUBR_NAME,TSEC
 9002    FORMAT(1X,A,' END  ',F10.3)
      ENDIF

      RETURN

! **********************************************************************************************************************************
    1 FORMAT(' *******************************************************************************************************************')

    2 FORMAT(' Messages from subr FILE_INQUIRE on whether files are opened ',A)

 2999 FORMAT(1X,A3,' on unit ',I4,1X,A14,' and is ',A10,' with file name = ',A)

! **********************************************************************************************************************************

      END SUBROUTINE FILE_INQUIRE
