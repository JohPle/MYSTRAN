! ##################################################################################################################################
  
      SUBROUTINE BSMIN4 ( PSH, DPSHX, DNXSHX, DNYSHX, IGAUS, JGAUS, MESSAG, WRT_BUG_THIS_TIME, BS )
 
! Generates BS shear starin/displacement matrix for MIN4 quad.
 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  BUG, F04, WRT_BUG, WRT_LOG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, ELDT_BUG_BMAT_BIT, ELDT_BUG_BCHK_BIT
      USE TIMDAT, ONLY                :  TSEC
      USE CONSTANTS_1, ONLY           :  ZERO
      USE SUBR_BEGEND_LEVELS, ONLY    :  BSMIN4_BEGEND
      USE MODEL_STUF, ONLY            :  EID, TYPE
  
      USE BSMIN4_USE_IFs

      IMPLICIT NONE
 
!nnn  DLL_EXPORT BSMIN4
!nnn  DLL_IMPORT OURTIM
!nnn  DLL_IMPORT BCHECK_2D

      CHARACTER(LEN=LEN(BLNK_SUB_NAM)):: SUBR_NAME = 'BSMIN4'
      CHARACTER(LEN=*), INTENT(IN)    :: MESSAG            ! Messag to print out if BCHECK is run
      CHARACTER( 1*BYTE), INTENT(IN)  :: WRT_BUG_THIS_TIME ! If 'Y' then write to BUG file if WRT_BUG array says to

      INTEGER(LONG), INTENT(IN)       :: IGAUS             ! I index of Gaus point (needed for some optional output)
      INTEGER(LONG), INTENT(IN)       :: JGAUS             ! J index of Gaus point (needed for some optional output)
      INTEGER(LONG)                   :: I,J               ! DO loop indices
      INTEGER(LONG)                   :: JJ                ! A computed index into array BS
      INTEGER(LONG)                   :: ID(12)            ! An input to subr BCHECK, called herein
      INTEGER(LONG), PARAMETER        :: NR        = 2     ! An input to subr BCHECK, called herein
      INTEGER(LONG), PARAMETER        :: NC        = 12    ! An input to subr BCHECK, called herein
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = BSMIN4_BEGEND
  
      REAL(DOUBLE) , INTENT(IN)       :: PSH(4)            ! 4 node bilinear isopar interp functions (used for bending)
      REAL(DOUBLE) , INTENT(IN)       :: DPSHX(2,4)        ! Derivatives of PSH shape functions wrt x and y
      REAL(DOUBLE) , INTENT(IN)       :: DNXSHX(2,4)       ! Derivatives of constrained interpolations NX wrt x, y
      REAL(DOUBLE) , INTENT(IN)       :: DNYSHX(2,4)       ! Derivatives of constrained interpolations NY wrt x, y
      REAL(DOUBLE) , INTENT(OUT)      :: BS(2,12)          ! Output strain-displ matrix for this elem
      REAL(DOUBLE)                    :: BW(2,14)          ! Output from subr BCHECK (matrix of 2 elem strains for 14 various elem
                                                             ! rigid body motions/constant strain distortions)
! **********************************************************************************************************************************
      IF (WRT_LOG >= SUBR_BEGEND) THEN
         CALL OURTIM
         WRITE(F04,9001) SUBR_NAME,TSEC
 9001    FORMAT(1X,A,' BEGN ',F10.3)
      ENDIF

! **********************************************************************************************************************************
! Initialize outputs

      DO I=1,2
         DO J=1,12
            BS(I,J) = ZERO
         ENDDO
      ENDDO

! Calc outputs

      JJ = 0
  
      DO J=1,4
  
         JJ = JJ + 1
         BS(1,JJ) = DPSHX(1,J)
         BS(2,JJ) = DPSHX(2,J)
  
         JJ = JJ + 1
         BS(1,JJ) = -DNXSHX(1,J)
         BS(2,JJ) = -DNXSHX(2,J) - PSH(J)
  
         JJ = JJ + 1
         BS(1,JJ) = DNYSHX(1,J) + PSH(J)
         BS(2,JJ) = DNYSHX(2,J)
  
      ENDDO 
  
      IF ((WRT_BUG_THIS_TIME == 'Y') .AND.(WRT_BUG(8) > 0)) THEN

         WRITE(BUG,1101) ELDT_BUG_BMAT_BIT, TYPE, EID
         WRITE(BUG,8901) IGAUS, JGAUS, SUBR_NAME
         DO I=1,2
            WRITE(BUG,8902) I,(BS(I,J),J=1,12)
            WRITE(BUG,*)
         ENDDO 
         WRITE(BUG,*)

      ENDIF

      IF ((WRT_BUG_THIS_TIME == 'Y') .AND.(WRT_BUG(9) > 0)) THEN

         ID( 1) =  3
         ID( 2) =  4
         ID( 3) =  5
         ID( 4) =  9
         ID( 5) = 10
         ID( 6) = 11
         ID( 7) = 15
         ID( 8) = 16
         ID( 9) = 17
         ID(10) = 21
         ID(11) = 22
         ID(12) = 23
  
         WRITE(BUG,1101) ELDT_BUG_BCHK_BIT, TYPE, EID
         WRITE(BUG,9100)
         WRITE(BUG,9101) MESSAG, IGAUS, JGAUS
         WRITE(BUG,9102)
         WRITE(BUG,9103)
         WRITE(BUG,9104)
         CALL BCHECK_2D ( BS, 'S', ID, NR, NC, BW, 4 )

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

 8901 FORMAT(' Strain-displacement matrix BS for Gauss point: I = ',I3,', J = ',I3,' for shear portion of element in subr '        &
             ,A,/)

 8902 FORMAT(' Row ',I2,/,6(1ES14.6))


 9100 FORMAT('                  Check on strain-displacement matrix BS for transverse shear portion of the element in subr BCHECK'/)

 9101 FORMAT('                                                        S T R A I N S'/,                                             &
             '                                 (',A,' for Gauss point: I = ',I3,', J = ',I3,')')

 9102 FORMAT('                                                     Gxz            Gyz')

 9103 FORMAT(1X,'      Element displacements consistent with:')

 9104 FORMAT(1X,'      ---------------------------------------')

90004 FORMAT(1X,4(1ES19.11))

! **********************************************************************************************************************************

      END SUBROUTINE BSMIN4
