! ##################################################################################################################################
  
      SUBROUTINE BCHECK_2D ( B, BTYPE, ID, NROWB, NCOLB, BW, NUM_GRIDS )
 
! Checks strain-displacement matrices for rigid body motion and constant strain for 2-D shell elements
! (6DOF per grid point and up to 4 grid points)
 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  BUG, F04, WRT_BUG, WRT_LOG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  BCHECK_BEGEND
      USE CONSTANTS_1, ONLY           :  ZERO, TWO
      USE MODEL_STUF, ONLY            :  TE, XEB, XEL
 
      USE BCHECK_2D_USE_IFs

      IMPLICIT NONE
  
!nnn  DLL_EXPORT BCHECK_2D
!nnn  DLL_IMPORT OURTIM
!nnn  DLL_IMPORT RIGID_BODY_DISP_MAT
!nnn  DLL_IMPORT MATMULT_FFF

      CHARACTER(LEN=LEN(BLNK_SUB_NAM)):: SUBR_NAME = 'BCHECK_2D'
      CHARACTER(LEN=*), INTENT(IN)    :: BTYPE             ! Type of B matrix ('M' for membrane, 'B' for bending, 'S' for shear)
      CHARACTER(45*BYTE)              :: MESSAG(14)        ! Output messages for the 14 modes of deformation (6 RB + 8 const strain)
  
      INTEGER(LONG), INTENT(IN)       :: NROWB             ! Number of rows in the input B matrix
      INTEGER(LONG), INTENT(IN)       :: NCOLB             ! Number of cols in the input B matrix
      INTEGER(LONG), INTENT(IN)       :: NUM_GRIDS         ! Number of grids for the input B matrix
      INTEGER(LONG), INTENT(IN)       :: ID(NCOLB)         ! List of elem DOF's for each of the elem grids (e.g 3,4,5 for each of
!                                                            4 grids for a 4 node plate bending elem 
      INTEGER(LONG)                   :: I,J,K             ! DO loop indices
      INTEGER(LONG)                   :: KK                ! A computed index into array W
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = BCHECK_BEGEND
  
      REAL(DOUBLE) , INTENT(IN)       :: B(NROWB,NCOLB)    ! Strain-displ matrix
      REAL(DOUBLE) , INTENT(OUT)      :: BW(NROWB,14)      ! Output from subr BCHECK_2D (matrix of NROWB elem strains for various
!                                                            elem rigid body motions/constant strain distortions)
      REAL(DOUBLE)                    :: GRD_COORDS(3)     ! 3 coords from XEB for one node of the element
      REAL(DOUBLE)                    :: REF_COORDS(3)     ! 3 coords from XEB for node 1
      REAL(DOUBLE)                    :: RB_DISP_0(6,6)    ! 6 x 6 RB matrix for one grid for this element in basic coords
      REAL(DOUBLE)                    :: RB_DISP_L(6,6)    ! 6 x 6 RB matrix for one grid for this element in elenent local coords
      REAL(DOUBLE)                    :: TE6(6,6)          ! 6 x 6 transformation matrix with TE as 2 diagonal 3 x 3 matrices
      REAL(DOUBLE)                    :: W(24,14)          ! Displs for the 14 modes of elem deformation (6 RB + 8 constant strain)
  
! **********************************************************************************************************************************
      IF (WRT_LOG >= SUBR_BEGEND) THEN
         CALL OURTIM
         WRITE(F04,9001) SUBR_NAME,TSEC
 9001    FORMAT(1X,A,' BEGN ',F10.3)
      ENDIF

! **********************************************************************************************************************************
! Initialize outputs

      DO I=1,NROWB
         DO J=1,14
            BW(I,J) = ZERO
         ENDDO
      ENDDO

! Form TE6 from 2 diagonal TE matrices

      DO I=1,6
         DO J=1,6
            TE6(I,J) = ZERO
         ENDDO
      ENDDO

      DO I=1,3
         DO J=1,3
            TE6(I,J)     = TE(I,J)
            TE6(I+3,J+3) = TE(I,J)
         ENDDO
      ENDDO

! Init W

      DO I=1,24
         DO J=1,14
            W(I,J) = ZERO
         ENDDO 
      ENDDO 
  
      MESSAG( 1) = '      Rigid Body Displacement,      T1  = 1.0' 
      MESSAG( 2) = '      Rigid Body Displacement,      T2  = 1.0' 
      MESSAG( 3) = '      Rigid Body Displacement,      T3  = 1.0' 
      MESSAG( 4) = '      Rigid Body Rotation,          R1  = 1.0' 
      MESSAG( 5) = '      Rigid Body Rotation,          R2  = 1.0' 
      MESSAG( 6) = '      Rigid Body Rotation,          R3  = 1.0' 
      MESSAG( 7) = '      Constant in-plane strain,     Exx = 1.0' 
      MESSAG( 8) = '      Constant in-plane strain,     Eyy = 1.0' 
      MESSAG( 9) = '      Constant in-plane strain,     Exy = 1.0' 
      MESSAG(10) = '      Constant curvature,           Cxx = 1.0' 
      MESSAG(11) = '      Constant curvature,           Cyy = 1.0' 
      MESSAG(12) = '      Constant curvature,           Cxy = 1.0' 
      MESSAG(13) = '      Constant transv shear strain, Gxz = 1.0' 
      MESSAG(14) = '      Constant transv shear strain, Gyz = 1.0' 
  
! Calc RB modes (cols 1-6 of W)

      DO I=1,NUM_GRIDS
         DO J=1,3
            GRD_COORDS(J) = XEB(I,J)
            REF_COORDS(J) = XEB(1,J)
         ENDDO
         CALL RIGID_BODY_DISP_MAT ( GRD_COORDS, REF_COORDS, RB_DISP_0 )
         CALL MATMULT_FFF ( TE6, RB_DISP_0, 6, 6, 6, RB_DISP_L )
         DO J=1,6
            DO K=1,6
               W(6*(I-1)+J,K) = RB_DISP_L(J,K)
            ENDDO
         ENDDO
      ENDDO

! Calc constant strain modes (cols 7-14 of W)

      DO K=1,4

         KK = 6*(K-1)

         W(KK+1, 7) =  XEL(K,1)                            ! This gives constant direct x strain

         W(KK+2, 8) =  XEL(K,2)                            ! This gives constant direct y strain

         W(KK+1, 9) =  XEL(K,2)/TWO                        ! The next 2 give constant shear xy strain
         W(KK+2, 9) =  XEL(K,1)/TWO

         W(KK+3,10) = -XEL(K,1)*XEL(K,1)/TWO
         W(KK+5,10) =  XEL(K,1)

         W(KK+3,11) = -XEL(K,2)*XEL(K,2)/TWO
         W(KK+4,11) = -XEL(K,2)

         W(KK+3,12) = -XEL(K,1)*XEL(K,2)/TWO
         W(KK+4,12) = -XEL(K,1)/TWO
         W(KK+5,12) =  XEL(K,2)/TWO

         W(KK+3,13) =  XEL(K,1)                            ! This gives constant transverse shear  strain

         W(KK+3,14) =  XEL(K,2)                            ! This gives constant transverse shear  strain

      ENDDO 

! Calc BW = B*W (but B has fewer cols since element has no stiffness for some DOF's)

      DO I=1,NROWB
         DO J=1,14
            BW(I,J) = ZERO
            DO K=1,NCOLB
               BW(I,J) = BW(I,J) + B(I,K)*W(ID(K),J)
            ENDDO 
         ENDDO 
      ENDDO 
  
! Write results

      IF ((BTYPE == 'B') .OR. (BTYPE == 'M')) THEN
         DO J=1,6
            WRITE(BUG,9101) MESSAG(J),(BW(I,J),I=1,NROWB)
         ENDDO
      ELSE IF (BTYPE == 'S') THEN 
         DO J=1,6
            WRITE(BUG,9201) MESSAG(J),(BW(I,J),I=1,NROWB)
         ENDDO
      ENDIF
      WRITE(BUG,*)        
  
      IF (BTYPE == 'B') THEN
         DO J=7,9
            WRITE(BUG,9101) MESSAG(J),(BW(I,J),I=1,NROWB)
         ENDDO
      ELSE IF (BTYPE == 'M') THEN
         WRITE(BUG,9102) MESSAG(7),(BW(I,7),I=1,NROWB)
         WRITE(BUG,9103) MESSAG(8),(BW(I,8),I=1,NROWB)
         WRITE(BUG,9104) MESSAG(9),(BW(I,9),I=1,NROWB)
      ELSE IF (BTYPE == 'S') THEN
         DO J=7,9
            WRITE(BUG,9201) MESSAG(J),(BW(I,J),I=1,NROWB)
         ENDDO
      ENDIF
      WRITE(BUG,*)        

      IF (BTYPE == 'B') THEN
         WRITE(BUG,9102) MESSAG(10),(BW(I,10),I=1,NROWB)
         WRITE(BUG,9103) MESSAG(11),(BW(I,11),I=1,NROWB)
         WRITE(BUG,9104) MESSAG(12),(BW(I,12),I=1,NROWB)
      ELSE IF (BTYPE == 'M') THEN
         DO J=10,12
            WRITE(BUG,9101) MESSAG(J),(BW(I,J),I=1,NROWB)
         ENDDO
      ELSE IF (BTYPE == 'S') THEN
         DO J=10,12
            WRITE(BUG,9201) MESSAG(J),(BW(I,J),I=1,NROWB)
         ENDDO
      ENDIF
      WRITE(BUG,*)        

      IF ((BTYPE == 'B') .OR. (BTYPE == 'M')) THEN
         DO J=13,14
           WRITE(BUG,9101) MESSAG(J),(BW(I,J),I=1,NROWB)
         ENDDO
      ELSE IF (BTYPE == 'S') THEN 
         WRITE(BUG,9202) MESSAG(13),(BW(I,13),I=1,NROWB)
         WRITE(BUG,9203) MESSAG(14),(BW(I,14),I=1,NROWB)
      ENDIF
      WRITE(BUG,*)        
  





! **********************************************************************************************************************************
      IF (WRT_LOG >= SUBR_BEGEND) THEN
         CALL OURTIM
         WRITE(F04,9002) SUBR_NAME,TSEC
 9002    FORMAT(1X,A,' END  ',F10.3)
      ENDIF

      RETURN

! **********************************************************************************************************************************
 9101 FORMAT(1X,A,3(1ES15.6),'  (should be 0, 0, 0)')

 9102 FORMAT(1X,A,3(1ES15.6),'  (should be 1, 0, 0)')

 9103 FORMAT(1X,A,3(1ES15.6),'  (should be 0, 1, 0)')

 9104 FORMAT(1X,A,3(1ES15.6),'  (should be 0, 0, 1)')

 9201 FORMAT(1X,A,2(1ES15.6),'  (should be 0, 0)')

 9202 FORMAT(1X,A,2(1ES15.6),'  (should be 1, 0)')

 9203 FORMAT(1X,A,2(1ES15.6),'  (should be 0, 1)')


! **********************************************************************************************************************************
 
      END SUBROUTINE BCHECK_2D
