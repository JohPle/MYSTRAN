! ##################################################################################################################################
  
      SUBROUTINE BSMIN3 ( XI, A, B, AREA, MESSAG, WRT_BUG_THIS_TIME, BS )
 
! Generates BS shear strain/displacement matrix for MIN3 triangle
 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  BUG, F04, WRT_BUG, WRT_LOG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, ELDT_BUG_BMAT_BIT, ELDT_BUG_BCHK_BIT
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  BSMIN3_BEGEND
      USE CONSTANTS_1, ONLY           :  ZERO, TWO
      USE MODEL_STUF, ONLY            :  EID, TYPE

      USE BSMIN3_USE_IFs

      IMPLICIT NONE
  
!nnn  DLL_EXPORT BSMIN3
!nnn  DLL_IMPORT OURTIM
!nnn  DLL_IMPORT BCHECK_2D

      CHARACTER(LEN=LEN(BLNK_SUB_NAM)):: SUBR_NAME = 'BSMIN3'
      CHARACTER(LEN=*), INTENT(IN)    :: MESSAG            ! Messag to print out if BCHECK is run
      CHARACTER( 1*BYTE), INTENT(IN)  :: WRT_BUG_THIS_TIME ! If 'Y' then write to BUG file if WRT_BUG array says to

      INTEGER(LONG)                   :: I,J               ! DO loop indices
      INTEGER(LONG)                   :: ID(9)             ! An input to subr BCHECK, called herein
      INTEGER(LONG), PARAMETER        :: NR        = 2     ! An input to subr BCHECK, called herein
      INTEGER(LONG), PARAMETER        :: NC        = 9     ! An input to subr BCHECK, called herein
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = BSMIN3_BEGEND
  
      REAL(DOUBLE) , INTENT(IN)       :: A(3)              ! Vector of x coord differences
      REAL(DOUBLE) , INTENT(IN)       :: AREA              ! Elem area
      REAL(DOUBLE) , INTENT(IN)       :: B(3)              ! Vector of y coord differences
      REAL(DOUBLE) , INTENT(IN)       :: XI(3)             ! Vector of area coordinates
      REAL(DOUBLE) , INTENT(OUT)      :: BS(2,9)           ! Output strain-displ matrix for this elem
      REAL(DOUBLE)                    :: A4                ! Constant for this elem
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
         DO J=1,9
            BS(I,J) = ZERO
         ENDDO
      ENDDO

! Calc outputs

      A4 = 4*AREA

      DO J=1,3
         BS(1,J) = B(J)/(TWO*AREA)
         BS(2,J) = A(J)/(TWO*AREA)
      ENDDO 
  
      BS(1,4) = -(B(1)*( XI(2)*B(3) - XI(3)*B(2))/A4)
      BS(1,5) = -(B(2)*(-XI(1)*B(3) + XI(3)*B(1))/A4)
      BS(1,6) = -(B(3)*( XI(1)*B(2) - XI(2)*B(1))/A4)
  
      BS(1,7) =  (XI(1)*(A4 - B(2)*A(3) + B(3)*A(2)) + B(1)*(-XI(2)*A(3) + XI(3)*A(2)))/A4
      BS(1,8) =  (XI(2)*(A4 + B(1)*A(3) - B(3)*A(1)) + B(2)*( XI(1)*A(3) - XI(3)*A(1)))/A4
      BS(1,9) =  (XI(3)*(A4 + B(2)*A(1) - B(1)*A(2)) + B(3)*(-XI(1)*A(2) + XI(2)*A(1)))/A4
  
      BS(2,4) = -(XI(1)*(A4 + A(2)*B(3) - A(3)*B(2)) + A(1)*( XI(2)*B(3) - XI(3)*B(2)))/A4
      BS(2,5) = -(XI(2)*(A4 - A(1)*B(3) + A(3)*B(1)) + A(2)*(-XI(1)*B(3) + XI(3)*B(1)))/A4
      BS(2,6) = -(XI(3)*(A4 - A(2)*B(1) + A(1)*B(2)) + A(3)*( XI(1)*B(2) - XI(2)*B(1)))/A4
  
      BS(2,7) = A(1)*(-XI(2)*A(3) + XI(3)*A(2))/A4
      BS(2,8) = A(2)*( XI(1)*A(3) - XI(3)*A(1))/A4
      BS(2,9) = A(3)*(-XI(1)*A(2) + XI(2)*A(1))/A4
  
      IF ((WRT_BUG_THIS_TIME == 'Y') .AND.(WRT_BUG(8) > 0)) THEN

         WRITE(BUG,1101) ELDT_BUG_BMAT_BIT, TYPE, EID
         WRITE(BUG,8901) SUBR_NAME
         DO I=1,2
            WRITE(BUG,8902) I,(BS(I,J),J=1,9)
            WRITE(BUG,*)
         ENDDO 
         WRITE(BUG,*)

      ENDIF

      IF ((WRT_BUG_THIS_TIME == 'Y') .AND.(WRT_BUG(9) > 0)) THEN

         ID(1) =  3
         ID(2) =  9
         ID(3) = 15
         ID(4) =  4
         ID(5) = 10
         ID(6) = 16
         ID(7) =  5
         ID(8) = 11
         ID(9) = 17
  
         WRITE(BUG,1101) ELDT_BUG_BCHK_BIT, TYPE, EID
         WRITE(BUG,9100)
         WRITE(BUG,9101) MESSAG
         WRITE(BUG,9102)
         WRITE(BUG,9103)
         WRITE(BUG,9104)
         CALL BCHECK_2D ( BS, 'S', ID, NR, NC, BW, 3 )

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

 8901 FORMAT(' Strain-displacement matrix BS for transverse shear portion of element in subr ',A,/)

 8902 FORMAT(' Row ',I2,/,9(1ES14.6))

 9100 FORMAT('                  Check on strain-displacement matrix BS for transverse shear portion of the element in subr BCHECK'/)

 9101 FORMAT('                                                               S T R A I N S'/,                                      &
             '                                                                  (',A,')')

 9102 FORMAT('                                                     Gxz            Gyz')

 9103 FORMAT(1X,'      Element displacements consistent with:')

 9104 FORMAT(1X,'      ---------------------------------------')

90003 FORMAT(1X,3(1ES19.11))

! **********************************************************************************************************************************

      END SUBROUTINE BSMIN3
