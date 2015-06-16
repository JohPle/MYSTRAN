! ##################################################################################################################################
  
      SUBROUTINE BD_RSPLINE0 ( CARD, LARGE_FLD_INP, IRSPLINE )
  
! Processes RSPLINE Bulk Data Cards to count the number of fields that can have a grid or comp number.
! The first and last entries will be the 2 indep grids. Everything in between should be pairs of dep grid/comp entries 
 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, JCARD_LEN
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  BD_RSPLINE0_BEGEND

      USE BD_RSPLINE0_USE_IFs

      IMPLICIT NONE
 
      CHARACTER(LEN=LEN(BLNK_SUB_NAM)):: SUBR_NAME = 'BD_RSPLINE0'
      CHARACTER(LEN=*), INTENT(INOUT) :: CARD              ! A Bulk Data card
      CHARACTER(LEN=*), INTENT(IN)    :: LARGE_FLD_INP     ! If 'Y', CARD is large field format
      CHARACTER(LEN(CARD))            :: CHILD             ! "Child" card read in subr NEXTC, called herein
      CHARACTER(LEN=JCARD_LEN)        :: JCARD(10)         ! The 10 fields of characters making up CARD
      CHARACTER( 8*BYTE)              :: TOKTYP            ! Type of TOKEN returned from subr TOKCHK
 
      INTEGER(LONG), INTENT(OUT)      :: IRSPLINE          ! Count of number of grid/comp doublets on this RSPLINE logical card
      INTEGER(LONG)                   :: ICONT     = 0     ! Indicator of whether a cont card exists. Output from subr NEXTC
      INTEGER(LONG)                   :: IERR      = 0     ! Error indicator returned from subr NEXTC called herein
      INTEGER(LONG)                   :: J                 ! DO loop index
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = BD_RSPLINE0_BEGEND
 
! **********************************************************************************************************************************
      IF (WRT_LOG >= SUBR_BEGEND) THEN
         CALL OURTIM
         WRITE(F04,9001) SUBR_NAME,TSEC
 9001    FORMAT(1X,A,' BEGN ',F10.3)
      ENDIF

! **********************************************************************************************************************************
! RSPLINE Bulk Data Card:
 
!   FIELD   ITEM            EXPLANATION 
!   -----   ------------    -------------
!    2      EID             RSPLINE elem ID
!    3      D/L             Diam/length ratio of the rod used in determining the beam deflection relationship
!    4      G1              Indep grid at one end of the RSPLINE line
!    5-9    Gi,Ci           Dep grid/comps (dep grid/comps)

! on optional continuation entries:
!    2-9    contain either a grid or comp number. To be conservative each cont entry will be assumed to have an 8 dep entries

! Subsequent entries have the same format
 
! Max number of grids or comps on parent entry can be 6

      IRSPLINE = 6

! Count continuation entries. Each one can have up to 8 entries
  
      DO
         IF (LARGE_FLD_INP == 'N') THEN
            CALL NEXTC0  ( CARD, ICONT, IERR )
         ELSE
            CALL NEXTC20 ( CARD, ICONT, IERR, CHILD )
            CARD = CHILD
         ENDIF
         IF (ICONT == 1) THEN
            IRSPLINE = IRSPLINE + 8
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
  
      END SUBROUTINE BD_RSPLINE0
