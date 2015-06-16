! ##################################################################################################################################
 
      SUBROUTINE BD_CQUAD0 ( CARD, LARGE_FLD_INP )
 
! Processes CQUAD Bulk Data Cards to increment:
!   (1) LMATANGLE   if the elem has a material prop angle
!   (2) LPLATEOFF   if the elem has an offset
!   (3) LPLATETHICK if the elem has thicknesses defined on a continuation entry
 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, JCARD_LEN, LMATANGLE, LPLATEOFF, LPLATETHICK
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  BD_CQUAD0_BEGEND
 
      USE BD_CQUAD0_USE_IFs

      IMPLICIT NONE
 
      CHARACTER(LEN=LEN(BLNK_SUB_NAM)):: SUBR_NAME = 'BD_CQUAD'
      CHARACTER(LEN=*), INTENT(INOUT) :: CARD              ! A Bulk Data card
      CHARACTER(LEN=*), INTENT(IN)    :: LARGE_FLD_INP     ! If 'Y', CARD is large field format
      CHARACTER(LEN(CARD))            :: CHILD             ! "Child" card read in subr NEXTC, called herein
      CHARACTER(LEN=JCARD_LEN)        :: JCARD(10)         ! The 10 fields of characters making up CARD
 
      INTEGER(LONG)                   :: ICONT     = 0     ! Indicator of whether a cont card exists. Output from subr NEXTC
      INTEGER(LONG)                   :: IERR      = 0     ! Error indicator returned from subr NEXTC called herein
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = BD_CQUAD0_BEGEND
 
! **********************************************************************************************************************************
      IF (WRT_LOG >= SUBR_BEGEND) THEN
         CALL OURTIM
         WRITE(F04,9001) SUBR_NAME,TSEC
 9001    FORMAT(1X,A,' BEGN ',F10.3)
      ENDIF

! **********************************************************************************************************************************
! Make JCARD from CARD

      CALL MKJCARD ( SUBR_NAME, CARD, JCARD )
 
! See if there is a material orientation angle. If so, increment LMATANGLE

      IF (JCARD(8)(1:) /= ' ') THEN
         LMATANGLE = LMATANGLE + 1
      ENDIF

! See if there is a plate offset. If so, increment LPLATEOFF

      IF (JCARD(9)(1:) /= ' ') THEN
         LPLATEOFF = LPLATEOFF + 1
      ENDIF

! Optional second card:

      IF (LARGE_FLD_INP == 'N') THEN
         CALL NEXTC0  ( CARD, ICONT, IERR )
      ELSE
         CALL NEXTC20 ( CARD, ICONT, IERR, CHILD )
         CARD = CHILD
      ENDIF
      IF (ICONT == 1) THEN                                ! Since there is a cont entry we assume 4 Ti are here
         IF (CARD(1:) /= ' ') THEN                        ! Only process continuation entries if 1st one is not totally blank
            LPLATETHICK = LPLATETHICK + 4
         ENDIF
      ENDIF

! **********************************************************************************************************************************
      IF (WRT_LOG >= SUBR_BEGEND) THEN
         CALL OURTIM
         WRITE(F04,9002) SUBR_NAME,TSEC
 9002    FORMAT(1X,A,' END  ',F10.3)
      ENDIF

      RETURN

! **********************************************************************************************************************************
 
      END SUBROUTINE BD_CQUAD0
