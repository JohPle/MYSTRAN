! ##################################################################################################################################
 
      SUBROUTINE GET_ELGP ( INT_ELEM_ID )
 
! Gets number of grid points for a given element based on the element's internal ID
 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG
      USE IOUNT1, ONLY                :  ERR, F04, F06, WRT_ERR, WRT_LOG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, MEFE, MELGP, METYPE 
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  GET_ELGP_BEGEND
      USE MODEL_STUF, ONLY            :  EDAT, EID, ELGP, ELMTYP, etype, EMG_IFE, EPNT, ERR_SUB_NAM, NELGP, NUM_EMG_FATAL_ERRS, TYPE
 
      USE GET_ELGP_USE_IFs

      IMPLICIT NONE

!nnn  DLL_EXPORT GET_ELGP
!nnn  DLL_IMPORT OURTIM
!nnn  DLL_IMPORT OUTA_HERE

      CHARACTER(LEN=LEN(BLNK_SUB_NAM)):: SUBR_NAME = 'GET_ELGP'
      CHARACTER( 1*BYTE)              :: FOUND       = 'N' ! 'Y' if we find the requested element tyoe

      INTEGER(LONG), INTENT(IN)       :: INT_ELEM_ID       ! Internal element ID
      INTEGER(LONG)                   :: EPNTK             ! Value from array EPNT at the row for this internal elem ID. It is the
!                                                            row number in array EDAT where data begins for this element. 
      INTEGER(LONG)                   :: I                 ! DO loop index
      INTEGER(LONG)                   :: NG                ! Number of GRID's for USERIN elem
      INTEGER(LONG)                   :: NS                ! Number of SPOINT's for USERIN elem
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = GET_ELGP_BEGEND

! **********************************************************************************************************************************
      IF (WRT_LOG >= SUBR_BEGEND) THEN
         CALL OURTIM
         WRITE(F04,9001) SUBR_NAME,TSEC
 9001    FORMAT(1X,A,' BEGN ',F10.3)
      ENDIF

! **********************************************************************************************************************************
      EPNTK = EPNT(INT_ELEM_ID)
      FOUND = 'N'
      TYPE  = ETYPE(INT_ELEM_ID)
      EID   = EDAT(EPNTK)

      IF (TYPE == 'USERIN  ') THEN

         NG = EDAT(EPNTK+2)
         NS = EDAT(EPNTK+3)
         ELGP = NG + NS
         FOUND = 'Y'

      ELSE

         DO I=1,METYPE
            IF (TYPE == ELMTYP(I)) THEN
               ELGP  = NELGP(I)
               FOUND = 'Y'
            ENDIF
         ENDDO

      ENDIF

! If we didn't find a valid element type write error and quit

      IF (FOUND == 'N') THEN
         NUM_EMG_FATAL_ERRS = NUM_EMG_FATAL_ERRS + 1
         FATAL_ERR = FATAL_ERR + 1
         IF (WRT_ERR > 0) THEN
            WRITE(ERR,1940) SUBR_NAME, TYPE
            WRITE(F06,1940) SUBR_NAME, TYPE
         ELSE
            IF (NUM_EMG_FATAL_ERRS <= MEFE) THEN
               ERR_SUB_NAM(NUM_EMG_FATAL_ERRS) = SUBR_NAME
               EMG_IFE(NUM_EMG_FATAL_ERRS,1) = 1940
            ENDIF
         ENDIF
         CALL OUTA_HERE ( 'Y' )
      ENDIF

! Check ELGP against max allowable (for coding error)

      IF ((ELGP < 1) .OR. (ELGP > MELGP)) THEN
         NUM_EMG_FATAL_ERRS = NUM_EMG_FATAL_ERRS + 1
         FATAL_ERR = FATAL_ERR + 1
         IF (WRT_ERR > 0) THEN
            WRITE(ERR,1933) SUBR_NAME, TYPE, EID, ELGP, MELGP 
            WRITE(F06,1933) SUBR_NAME, TYPE, EID, ELGP, MELGP
         ELSE
            IF (NUM_EMG_FATAL_ERRS <= MEFE) THEN
               ERR_SUB_NAM(NUM_EMG_FATAL_ERRS) = SUBR_NAME
               EMG_IFE(NUM_EMG_FATAL_ERRS,1) = 1933
               EMG_IFE(NUM_EMG_FATAL_ERRS,2) = ELGP
               EMG_IFE(NUM_EMG_FATAL_ERRS,3) = MELGP
            ENDIF
         ENDIF
         CALL OUTA_HERE ( 'Y' )
      ENDIF 

! **********************************************************************************************************************************
 1933 FORMAT(' *ERROR  1933: PROGRAMMING ERROR IN SUBROUTINE ',A                                                                   &
                    ,/,14X,' THE NUMBER OF GRID POINTS FOR ',A,' ELEMENT ',I8,', IS: ',I8                                          &
                    ,/,14X,' THE MINIMUM NUMBER IS 1 AND THE MAXIMUM NUMBER ALLOWED FOR ANY ELEMENT IS: ',I8) 

 1940 FORMAT(' *ERROR  1940: PROGRAMMING ERROR IN SUBROUTINE ',A                                                                   &
                    ,/,14X,' ELEMENT TYPE "',A,'" NOT FOUND IN ARRAY ELMTYP')

! **********************************************************************************************************************************
      IF (WRT_LOG >= SUBR_BEGEND) THEN
         CALL OURTIM
         WRITE(F04,9002) SUBR_NAME,TSEC
 9002    FORMAT(1X,A,' END  ',F10.3)
      ENDIF

      RETURN

      END SUBROUTINE GET_ELGP
