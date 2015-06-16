! ##################################################################################################################################
  
      SUBROUTINE BD_MPCADD0 ( CARD, LARGE_FLD_INP, IMPCADD )
  
! Processes MPCADD Bulk Data Cards to count the number of MPC set ID's on this logical MPCADD card. The calling routine
! determines the max number of set ID's over all MPCADD cards in the data deck
 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, JCARD_LEN
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  BD_MPCADD0_BEGEND

      USE BD_MPCADD0_USE_IFs

      IMPLICIT NONE
 
      CHARACTER(LEN=LEN(BLNK_SUB_NAM)):: SUBR_NAME = 'BD_MPCADD0'
      CHARACTER(LEN=*), INTENT(INOUT) :: CARD              ! A Bulk Data card
      CHARACTER(LEN=*), INTENT(IN)    :: LARGE_FLD_INP     ! If 'Y', CARD is large field format
      CHARACTER(LEN(CARD))            :: CHILD             ! "Child" card read in subr NEXTC, called herein
      CHARACTER(LEN=JCARD_LEN)        :: JCARD(10)         ! The 10 fields of characters making up CARD
 
      INTEGER(LONG), INTENT(OUT)      :: IMPCADD           ! Count of number of MPC set ID's defined on the MPCADD
      INTEGER(LONG)                   :: ICONT     = 0     ! Indicator of whether a cont card exists. Output from subr NEXTC
      INTEGER(LONG)                   :: IERR      = 0     ! Error indicator returned from subr NEXTC called herein
      INTEGER(LONG)                   :: J                 ! DO loop index
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = BD_MPCADD0_BEGEND

! **********************************************************************************************************************************
      IF (WRT_LOG >= SUBR_BEGEND) THEN
         CALL OURTIM
         WRITE(F04,9001) SUBR_NAME,TSEC
 9001    FORMAT(1X,A,' BEGN ',F10.3)
      ENDIF

! **********************************************************************************************************************************
! MPCADD Bulk Data Card routine
 
!   FIELD   ITEM            ARRAY ELEMENT
!   -----   ------------    -------------
!    2      MPCADD set ID    MPCADD(nmpcadd, 1)
!    3      MPC MPC set ID   MPCADD(nmpcadd, 2)
!    4      MPC MPC set ID   MPCADD(nmpcadd, 3)
!    5      MPC MPC set ID   MPCADD(nmpcadd, 4)
!    6      MPC MPC set ID   MPCADD(nmpcadd, 5)
!    7      MPC MPC set ID   MPCADD(nmpcadd, 6)
!    8      MPC MPC set ID   MPCADD(nmpcadd, 7)
!    9      MPC MPC set ID   MPCADD(nmpcadd, 8)
 
! 1st continuation card:
! 
!    2      MPC MPC set ID   MPCADD(nmpcadd, 9)
!    3      MPC MPC set ID   MPCADD(nmpcadd,10)
!    4      MPC MPC set ID   MPCADD(nmpcadd,11)
!    5      MPC MPC set ID   MPCADD(nmpcadd,12)
!    6      MPC MPC set ID   MPCADD(nmpcadd,13)
!    7      MPC MPC set ID   MPCADD(nmpcadd,14)
!    8      MPC MPC set ID   MPCADD(nmpcadd,15)
!    9      MPC MPC set ID   MPCADD(nmpcadd,16)
 
! Subsequent con't cards follow the same patterm as the 1st
 
 
! Make JCARD from CARD
 
      CALL MKJCARD ( SUBR_NAME, CARD, JCARD )
 
! IMPCADD will count the number of MPC set ID's on this MPCADD card. It starts with 1 since there is the MPCADD set ID.
 
! Count MPC set ID's on parent card

      IMPCADD = 1
      DO J=3,9
         IF (JCARD(J)(1:) == ' ') THEN
            CYCLE
         ELSE
            IMPCADD = IMPCADD + 1
         ENDIF
      ENDDO 
 
! Count MPC set ID's on optional continuation cards
  
      DO 
         IF (LARGE_FLD_INP == 'N') THEN
            CALL NEXTC0  ( CARD, ICONT, IERR )
         ELSE
            CALL NEXTC20 ( CARD, ICONT, IERR, CHILD )
            CARD = CHILD
         ENDIF
         CALL MKJCARD ( SUBR_NAME, CARD, JCARD )
         IF (ICONT == 1) THEN
            DO J=2,9
               IF (JCARD(J)(1:) == ' ') THEN
                  CYCLE
               ELSE
                  IMPCADD = IMPCADD + 1
               ENDIF
            ENDDO  
         ELSE
            EXIT
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
  
      END SUBROUTINE BD_MPCADD0
