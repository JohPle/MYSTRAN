! ##################################################################################################################################
 
      SUBROUTINE SUSER1
 
!  Calc's stresses for user supplied subroutine elements
 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  SUSER1_BEGEND
      USE MODEL_STUF, ONLY            :  TYPE
 
      USE SUSER1_USE_IFs

      IMPLICIT NONE 
 
      CHARACTER(LEN=LEN(BLNK_SUB_NAM)):: SUBR_NAME = 'SUSER1'

      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = SUSER1_BEGEND
 
! **********************************************************************************************************************************
      IF (WRT_LOG >= SUBR_BEGEND) THEN
         CALL OURTIM
         WRITE(F04,9001) SUBR_NAME,TSEC
 9001    FORMAT(1X,A,' BEGN ',F10.3)
      ENDIF

! **********************************************************************************************************************************
      WRITE(ERR,9204) SUBR_NAME,TYPE
      WRITE(F06,9204) SUBR_NAME,TYPE
      FATAL_ERR = FATAL_ERR + 1
      CALL OUTA_HERE ( 'Y' )
 
! **********************************************************************************************************************************
      IF (WRT_LOG >= SUBR_BEGEND) THEN
         CALL OURTIM
         WRITE(F04,9002) SUBR_NAME,TSEC
 9002    FORMAT(1X,A,' END  ',F10.3)
      ENDIF

      RETURN

! **********************************************************************************************************************************
 9204 FORMAT(' *ERROR  9204: PROGRAMMING ERROR IN SUBROUTINE ',A                                                                   &
                    ,/,14X,' CODE NOT WRITTEN FOR ELEMENT TYPE = ',A)

! **********************************************************************************************************************************
  
      END SUBROUTINE SUSER1
