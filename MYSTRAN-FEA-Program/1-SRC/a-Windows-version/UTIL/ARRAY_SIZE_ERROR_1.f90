! ##################################################################################################################################
 
      SUBROUTINE ARRAY_SIZE_ERROR_1 ( INP_SUBR_NAME, NTERM_VAL, MATIN_NAME ) 
 
! Print error and quit when a subr tries to exceed allocated number of terms when storing/retrieving terms in an array 

      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  ARRAY_SIZE_ERROR_1_BEGEND
 
      USE ARRAY_SIZE_ERROR_1_USE_IFs

      IMPLICIT NONE
 
      CHARACTER(LEN=LEN(BLNK_SUB_NAM)):: SUBR_NAME = 'ARRAY_SIZE_ERROR_1'
      CHARACTER(LEN=*), INTENT(IN)    :: INP_SUBR_NAME     ! Subroutine in which the error was detected
      CHARACTER(LEN=*), INTENT(IN)    :: MATIN_NAME        ! Name of matrix (for output message purposes)

      INTEGER(LONG), INTENT(IN)       :: NTERM_VAL         ! Size of the array that was exceeded
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = ARRAY_SIZE_ERROR_1_BEGEND

! **********************************************************************************************************************************
      IF (WRT_LOG >= SUBR_BEGEND) THEN
         CALL OURTIM
         WRITE(F04,9001) SUBR_NAME,TSEC
 9001    FORMAT(1X,A,' BEGN ',F10.3)
      ENDIF

! **********************************************************************************************************************************
      WRITE(ERR,937) INP_SUBR_NAME, NTERM_VAL, MATIN_NAME
      WRITE(F06,937) INP_SUBR_NAME, NTERM_VAL, MATIN_NAME
      FATAL_ERR = FATAL_ERR + 1
      CALL OUTA_HERE ( 'Y' )                               ! Coding error (attempt to exceed allocated array size), so quit
 
! **********************************************************************************************************************************
      IF (WRT_LOG >= SUBR_BEGEND) THEN
         CALL OURTIM
         WRITE(F04,9002) SUBR_NAME,TSEC
 9002    FORMAT(1X,A,' END  ',F10.3)
      ENDIF

      RETURN

! **********************************************************************************************************************************
  937 FORMAT(' *ERROR   937: PROGRAMMING ERROR IN SUBROUTINE ',A                                                                   &
                    ,/,14X,' ATTEMPT TO EXCEED ALLOCATED ARRAY SIZE = ',I12                                                        &
                    ,/,14X,' WHILE STORING OR RETRIEVING TERMS IN ARRAY(S) = ',A) 

! **********************************************************************************************************************************

      END SUBROUTINE ARRAY_SIZE_ERROR_1
