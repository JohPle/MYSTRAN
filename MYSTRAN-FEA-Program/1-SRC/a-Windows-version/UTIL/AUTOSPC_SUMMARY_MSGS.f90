! ##################################################################################################################################

      SUBROUTINE AUTOSPC_SUMMARY_MSGS ( ASPC_SUM_MSG1, ASPC_SUM_MSG2, ASPC_SUM_MSG3, WRT_AUTOSPC_RAT, NUM_ASPC_BY_COMP )

! Write summary of AUTOSPC action at several times in an execution

      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, F06
      USE PARAMS, ONLY                :  AUTOSPC_RAT

      IMPLICIT NONE

      CHARACTER(LEN=*), INTENT(IN)    :: ASPC_SUM_MSG1      ! Message to be printed out in the AUTOSPC summary table
      CHARACTER(LEN=*), INTENT(IN)    :: ASPC_SUM_MSG2      ! Message to be printed out in the AUTOSPC summary table
      CHARACTER(LEN=*), INTENT(IN)    :: ASPC_SUM_MSG3      ! Message to be printed out in the AUTOSPC summary table
      CHARACTER(LEN=*), INTENT(IN)    :: WRT_AUTOSPC_RAT    ! 'Y'/'N' indicator of whether to write AUTOSPC_RAT

      INTEGER(LONG), INTENT(IN)       :: NUM_ASPC_BY_COMP(6)! The number of SPC1's for each displ component
      INTEGER(LONG)                   :: I                  ! DO loop index
      INTEGER(LONG)                   :: TOT_NUM_ASPC       ! The sum of the NUM_ASPC_BY_COMP(I)

! **********************************************************************************************************************************
      TOT_NUM_ASPC = 0
      DO I=1,6
         TOT_NUM_ASPC =  TOT_NUM_ASPC + NUM_ASPC_BY_COMP(I)
      ENDDO

      WRITE(F06,*)
      WRITE(F06,101) ASPC_SUM_MSG1,ASPC_SUM_MSG2
      IF (WRT_AUTOSPC_RAT == 'Y') THEN
         WRITE(F06,102) AUTOSPC_RAT
      ENDIF
      DO I=1,6
         WRITE(F06,103) I, NUM_ASPC_BY_COMP(I)
      ENDDO
      WRITE(F06,104)
      WRITE(F06,105) ASPC_SUM_MSG3,TOT_NUM_ASPC

! **********************************************************************************************************************************
  101 FORMAT(' *INFORMATION: AUTOSPC Summary, ',A,1X,A,/)

  102 FORMAT(37X,'AUTOSPC_RAT =',1ES13.6,/)

  103 FORMAT(23X,'Number of DOF''s identified for AUTOSPC in component ',I2,'         = ',I12)

  104 FORMAT(88X,'------------')

  105 FORMAT(23X,'Total number of DOF''s identified ',A,'                 = ',I12/)

! **********************************************************************************************************************************

      END SUBROUTINE AUTOSPC_SUMMARY_MSGS

