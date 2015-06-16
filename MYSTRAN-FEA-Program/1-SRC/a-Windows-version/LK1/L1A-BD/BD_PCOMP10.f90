! ##################################################################################################################################
  
      SUBROUTINE BD_PCOMP10 ( CARD, LARGE_FLD_INP, IPLIES )
  
! Processes PCOMP1 Bulk Data Cards to determine the number of plies for a B.D. PCOMP1 entry

      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_LOG, F04, f06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, JCARD_LEN
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  BD_PCOMP10_BEGEND

      USE BD_PCOMP10_USE_IFs

      IMPLICIT NONE
 
      CHARACTER(LEN=LEN(BLNK_SUB_NAM)):: SUBR_NAME = 'BD_PCOMP10'
      CHARACTER(LEN=*), INTENT(INOUT) :: CARD              ! A Bulk Data card
      CHARACTER(LEN=*), INTENT(IN)    :: LARGE_FLD_INP     ! If 'Y', CARD is large field format
      CHARACTER(LEN(CARD))            :: CHILD             ! "Child" card read in subr NEXTC, called herein
      CHARACTER(LEN=JCARD_LEN)        :: JCARD(10)         ! The 10 fields of characters making up CARD
      CHARACTER(LEN(JCARD))           :: LAM               ! Field 9 of parent entry. Symmetry option
 
      INTEGER(LONG), INTENT(OUT)      :: IPLIES            ! Count of number of plies defined by this PCOMP1
      INTEGER(LONG)                   :: I                 ! DO loop index
      INTEGER(LONG)                   :: ICONT     = 0     ! Indicator of whether a cont card exists. Output from subr NEXTC
      INTEGER(LONG)                   :: IERR      = 0     ! Error indicator returned from subr NEXTC called herein
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = BD_PCOMP10_BEGEND
 
! **********************************************************************************************************************************
      IF (WRT_LOG >= SUBR_BEGEND) THEN
         CALL OURTIM
         WRITE(F04,9001) SUBR_NAME,TSEC
 9001    FORMAT(1X,A,' BEGN ',F10.3)
      ENDIF

! **********************************************************************************************************************************
! Make JCARD from CARD
 
      CALL MKJCARD ( SUBR_NAME, CARD, JCARD )
      LAM = JCARD(9)
 
! Count number of plies on continuation cards. There can be 2 plies/cont card and a ply is assumed to exist if any of the 4
! fields for the ply have any data
  
      IPLIES = 0
 
      DO 
         IF (LARGE_FLD_INP == 'N') THEN
            CALL NEXTC0  ( CARD, ICONT, IERR )
         ELSE
            CALL NEXTC20 ( CARD, ICONT, IERR, CHILD )
            CARD = CHILD
         ENDIF
         CALL MKJCARD ( SUBR_NAME, CARD, JCARD )

         IF (ICONT == 1) THEN
                                                           ! See if any data is in fields 2-5. If so, up ply count
            DO I=2,9
               IF (JCARD(I)(1:) /= ' ') THEN
                  IPLIES = IPLIES + 1
               ENDIF
            ENDDO
                                                           ! See if any data is in fields 6-9. If so, up ply count
         ELSE

            EXIT

         ENDIF

      ENDDO 
   
      IF (LAM(1:4) == 'SYM ') THEN
         IPLIES = 2*IPLIES
      ENDIF

! **********************************************************************************************************************************
      IF (WRT_LOG >= SUBR_BEGEND) THEN
         CALL OURTIM
         WRITE(F04,9002) SUBR_NAME,TSEC
 9002    FORMAT(1X,A,' END  ',F10.3)
      ENDIF

      RETURN

! **********************************************************************************************************************************
  
      END SUBROUTINE BD_PCOMP10
