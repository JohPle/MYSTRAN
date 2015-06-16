! ##################################################################################################################################
  
      SUBROUTINE BBMIN4 ( DPSHX, IGAUS, JGAUS, MESSAG, WRT_BUG_THIS_TIME, BB )
 
! Generates BB bending strain/displacement matrix for MIN4 quad.
 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  BUG, F04, WRT_BUG, WRT_LOG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, ELDT_BUG_BMAT_BIT, ELDT_BUG_BCHK_BIT
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  BBMIN4_BEGEND
      USE CONSTANTS_1, ONLY           :  ZERO
      USE MODEL_STUF, ONLY            :  EID, TYPE
 
      USE BBMIN4_USE_IFs

      IMPLICIT NONE
  
!nnn  DLL_EXPORT BBMIN4
!nnn  DLL_IMPORT OURTIM
!nnn  DLL_IMPORT BCHECK_2D

      CHARACTER(LEN=LEN(BLNK_SUB_NAM)):: SUBR_NAME = 'BBMIN4'
      CHARACTER(LEN=*), INTENT(IN)    :: MESSAG            ! Messag to print out if BCHECK is run
      CHARACTER( 1*BYTE), INTENT(IN)  :: WRT_BUG_THIS_TIME ! If 'Y' then write to BUG file if WRT_BUG array says to

      INTEGER(LONG), INTENT(IN)       :: IGAUS             ! I index of Gaus point (needed for some optional output)
      INTEGER(LONG), INTENT(IN)       :: JGAUS             ! J index of Gaus point (needed for some optional output)
      INTEGER(LONG)                   :: I,J               ! DO loop indices
      INTEGER(LONG)                   :: JJ                ! A computed index into array BB
      INTEGER(LONG)                   :: ID(8)             ! An input to subr BCHECK, called herein
      INTEGER(LONG), PARAMETER        :: NR        = 3     ! An input to subr BCHECK, called herein
      INTEGER(LONG), PARAMETER        :: NC        = 8     ! An input to subr BCHECK, called herein
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = BBMIN4_BEGEND
  
      REAL(DOUBLE) , INTENT(IN)       :: DPSHX(2,4)        ! Derivatives of the 4 node bilinear isopar interps wrt elem x and y
      REAL(DOUBLE) , INTENT(OUT)      :: BB(3,8)           ! Output strain-displ matrix for this elem
      REAL(DOUBLE)                    :: BW(3,14)          ! Output from subr BCHECK (matrix of 3 elem strains for 14 various elem
                                                             ! rigid body motions/constant strain distortions)
! **********************************************************************************************************************************
      IF (WRT_LOG >= SUBR_BEGEND) THEN
         CALL OURTIM
         WRITE(F04,9001) SUBR_NAME,TSEC
 9001    FORMAT(1X,A,' BEGN ',F10.3)
      ENDIF

! **********************************************************************************************************************************
! Initialize outputs

      DO I=1,3
         DO J=1,8
            BB(I,J) = ZERO
         ENDDO
      ENDDO

! Calc outputs

      JJ = 0
  
      DO J=1,4
  
         JJ = JJ + 1
         BB(1,JJ) = ZERO
         BB(2,JJ) = -DPSHX(2,J)
         BB(3,JJ) = -DPSHX(1,J)
  
         JJ = JJ + 1
         BB(1,JJ) = DPSHX(1,J)
         BB(2,JJ) = ZERO
         BB(3,JJ) = DPSHX(2,J)
  
      ENDDO 
  
      IF ((WRT_BUG_THIS_TIME == 'Y') .AND.(WRT_BUG(8) > 0)) THEN

         WRITE(BUG,1101) ELDT_BUG_BMAT_BIT, TYPE, EID
         WRITE(BUG,8901) IGAUS, JGAUS, SUBR_NAME
         DO I=1,3
            WRITE(BUG,8902) I,(BB(I,J),J=1,8)
            WRITE(BUG,*)
         ENDDO 
         WRITE(BUG,*)

      ENDIF

      IF ((WRT_BUG_THIS_TIME == 'Y') .AND.(WRT_BUG(9) > 0)) THEN

         ID( 1) =  4
         ID( 2) =  5
         ID( 3) = 10
         ID( 4) = 11
         ID( 5) = 16
         ID( 6) = 17
         ID( 7) = 22
         ID( 8) = 23
  
         WRITE(BUG,1101) ELDT_BUG_BCHK_BIT, TYPE, EID
         WRITE(BUG,9100)
         WRITE(BUG,9101) MESSAG, IGAUS, JGAUS
         WRITE(BUG,9102)
         WRITE(BUG,9103)
         WRITE(BUG,9104)
         CALL BCHECK_2D ( BB, 'B', ID, NR, NC, BW, 4 )

      ENDIF

! **********************************************************************************************************************************
      IF (WRT_LOG >= SUBR_BEGEND) THEN
         CALL OURTIM
         WRITE(F04,9002) SUBR_NAME,TSEC
 9002    FORMAT(1X,A,' END  ',F10.3)
      ENDIF

      RETURN

! **********************************************************************************************************************************
 1101 FORMAT(' ------------------------------------------------------------------------------------------------------------------',&
             '-----------------',/,                                                                                                &
             ' ELDATA(',I2,',PRINT) requests for ',A,' element number ',I8,/,                                                      &
             ' ==============================================================',/)

 8901 FORMAT(' Strain-displacement matrix BB for Gauss point: I = ',I3,', J = ',I3,' for bending portion of element in subr '      &
             ,A,/)

 8902 FORMAT(' Row ',I2,/,8(1ES14.6))

 9100 FORMAT('                          Check on strain-displacement matrix BB for bending portion of the element in subr BCHECK'/)

 9101 FORMAT('                                                               S T R A I N S'/,                                      &
             '                                           (',A,' for Gauss point: I = ',I3,', J = ',I3,')')

 9102 FORMAT('                                                     Cxx            Cyy            Cxy')

 9103 FORMAT(1X,'      Element displacements consistent with:')

 9104 FORMAT(1X,'      ---------------------------------------')

! **********************************************************************************************************************************

      END SUBROUTINE BBMIN4
