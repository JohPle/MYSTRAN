! ##################################################################################################################################
 
      SUBROUTINE GET_ELEM_ONAME ( NAME )
 
! Gets element output name (used in LINK9 subr's which write elem and/or ply outputs) for a given element type
 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, METYPE 
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  GET_ELEM_ONAME_BEGEND
      USE MODEL_STUF, ONLY            :  ELEM_ONAME, ELMTYP, TYPE
 
      USE GET_ELEM_ONAME_USE_IFs

      IMPLICIT NONE

      CHARACTER(LEN=LEN(BLNK_SUB_NAM))            :: SUBR_NAME = 'GET_ELEM_ONAME'
      CHARACTER( 1*BYTE)                          :: FOUND       = 'N' ! 'Y' if we find the requested element tyoe
      CHARACTER(LEN=LEN(ELEM_ONAME)), INTENT(OUT) :: NAME              ! Name of an elem for output purposes in LINK9 WRTELi subr's

      INTEGER(LONG)                               :: I                 ! DO loop index
      INTEGER(LONG), PARAMETER                    :: SUBR_BEGEND = GET_ELEM_ONAME_BEGEND

! **********************************************************************************************************************************
      IF (WRT_LOG >= SUBR_BEGEND) THEN
         CALL OURTIM
         WRITE(F04,9001) SUBR_NAME,TSEC
 9001    FORMAT(1X,A,' BEGN ',F10.3)
      ENDIF

! **********************************************************************************************************************************
      NAME = ' '

      FOUND = 'N'
      DO I=1,METYPE
         IF (TYPE == ELMTYP(I)) THEN
            NAME  = ELEM_ONAME(I)
            FOUND = 'Y'
         ENDIF
      ENDDO

! Make sure we found a valid element type

      IF (FOUND == 'N') THEN
         WRITE(ERR,1940) SUBR_NAME, TYPE
         WRITE(F06,1940) SUBR_NAME, TYPE
         FATAL_ERR = FATAL_ERR + 1
         CALL OUTA_HERE ( 'Y' )
      ENDIF

! **********************************************************************************************************************************
 1940 FORMAT(' *ERROR  1940: PROGRAMMING ERROR IN SUBROUTINE ',A                                                                   &
                    ,/,14X,' ELEMENT TYPE "',A,'" NOT FOUND IN ARRAY ELMTYP')

! **********************************************************************************************************************************
      IF (WRT_LOG >= SUBR_BEGEND) THEN
         CALL OURTIM
         WRITE(F04,9002) SUBR_NAME,TSEC
 9002    FORMAT(1X,A,' END  ',F10.3)
      ENDIF

      RETURN

      END SUBROUTINE GET_ELEM_ONAME
