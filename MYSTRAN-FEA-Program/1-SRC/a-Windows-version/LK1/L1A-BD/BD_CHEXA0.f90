! ##################################################################################################################################
 
      SUBROUTINE BD_CHEXA0 ( CARD, LARGE_FLD_INP, DELTA_LEDAT )
 
! Processes CHEXA Bulk Data Cards to determine how many words to allocate to array EDAT for this element
 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, JCARD_LEN, MEDAT_CHEXA8, MEDAT_CHEXA20
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  BD_CHEXA0_BEGEND
 
      USE BD_CHEXA0_USE_IFs

      IMPLICIT NONE
 
      CHARACTER(LEN=LEN(BLNK_SUB_NAM)):: SUBR_NAME = 'BD_CHEXA'
      CHARACTER(LEN=*), INTENT(INOUT) :: CARD              ! A Bulk Data card
      CHARACTER(LEN=*), INTENT(IN)    :: LARGE_FLD_INP     ! If 'Y', CARD is large field format
      CHARACTER(LEN(CARD))            :: CHILD             ! "Child" card read in subr NEXTC, called herein
      CHARACTER(LEN=JCARD_LEN)        :: JCARD(10)         ! The 10 fields of characters making up CARD

      INTEGER(LONG)                   :: I                 ! DO loop index
      INTEGER(LONG)                   :: ICONT     = 0     ! Indicator of whether a cont card exists. Output from subr NEXTC
      INTEGER(LONG)                   :: IERR      = 0     ! Error indicator returned from subr NEXTC called herein
 
      INTEGER(LONG), INTENT(OUT)      :: DELTA_LEDAT       ! Delta number of words to add to LEDAT for this element
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = BD_CHEXA0_BEGEND
 
! **********************************************************************************************************************************
      IF (WRT_LOG >= SUBR_BEGEND) THEN
         CALL OURTIM
         WRITE(F04,9001) SUBR_NAME,TSEC
 9001    FORMAT(1X,A,' BEGN ',F10.3)
      ENDIF

! **********************************************************************************************************************************
! This element must have at least 1 continuation card since there must be at leas 8 grids defined (all corner nodes). The parent
! card has the element ID, property ID and the first 6 grids. The first continuation card must contain nodes 7 and 8 (in fields
! 2 and 3) but can also define any or all of nodes 9 thru 14 (in fields 4 - 9). If there is a 2nd continuation card it can define
! any or all of nodes 15 thru 20 (in fields 2 - 7). If we find any more than the mandatory 8 nodes we will assume a full complement
! of 20 nodes for safety

! Make JCARD from CARD
 
      CALL MKJCARD ( SUBR_NAME, CARD, JCARD )
 
      IF (LARGE_FLD_INP == 'N') THEN
         CALL NEXTC0  ( CARD, ICONT, IERR )
      ELSE
         CALL NEXTC20 ( CARD, ICONT, IERR, CHILD )
         CARD = CHILD
      ENDIF
      IF (ICONT == 1) THEN                                 ! There was a 1st continuation card (mandatory)
         DELTA_LEDAT = MEDAT_CHEXA8
         DO I=4,9
            IF (JCARD(I)(1:) /= ' ') THEN                  ! Some of fields 4 thru 9 have data so we will assume a 20 node HEXA
               DELTA_LEDAT = MEDAT_CHEXA20
               EXIT
            ENDIF
         ENDDO
      ELSE                                                 ! There was no 1st contin card. This is error that will be caught later
         DELTA_LEDAT = MEDAT_CHEXA20                       ! For this error, set DELTA_LEDAT to largest until error is caught
      ENDIF
!***********************************************************************************************************************************
      IF (WRT_LOG >= SUBR_BEGEND) THEN
         CALL OURTIM
         WRITE(F04,9002) SUBR_NAME,TSEC
 9002    FORMAT(1X,A,' END  ',F10.3)
      ENDIF

      RETURN

! **********************************************************************************************************************************
 
      END SUBROUTINE BD_CHEXA0
