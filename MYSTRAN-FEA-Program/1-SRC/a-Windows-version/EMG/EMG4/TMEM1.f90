! ##################################################################################################################################
 	
      SUBROUTINE TMEM1 ( OPT, AREA, X2E, X3E, Y3E, BIG_BM )
  
! Constant strain membrane triangle

! Subroutine calculates:

!  1) PTE       = element thermal load vectors         , if OPT(2) = 'Y'
!  2) SEi, STEi = element stress data recovery matrices, if OPT(3) = 'Y'
!  3) KE        = element linea stiffness matrix       , if OPT(4) = 'Y'
!  4) PPE       = element pressure load matrix         , if OPT(5) = 'Y'
!  5) KED       = element differen stiff matrix calc   , if OPT(6) = 'Y' = 'Y'
 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  F04, WRT_LOG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, NSUB, NTSUB
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  TMEM1_BEGEND
      USE CONSTANTS_1, ONLY           :  ZERO, ONE, THREE
      USE MODEL_STUF, ONLY            :  ALPVEC, BE1, DT, EM, ELDOF, KE, PCOMP_LAM, PCOMP_PROPS, PRESS, PPE, PTE, SE1, STE1,       &
                                         SHELL_AALP, SHELL_A, SHELL_PROP_ALP, TREF
 
      USE TMEM1_USE_IFs

      IMPLICIT NONE 
 
!nnn  DLL_EXPORT TMEM1
!nnn  DLL_IMPORT OURTIM
!nnn  DLL_IMPORT MATMULT_FFF
!nnn  DLL_IMPORT MATMULT_FFF_T

      CHARACTER(LEN=LEN(BLNK_SUB_NAM)):: SUBR_NAME = 'TMEM1'
      CHARACTER(1*BYTE), INTENT(IN)   :: OPT(6)            ! 'Y'/'N' flags for whether to calc certain elem matrices

      INTEGER(LONG)                   :: I,J               ! DO loop indices
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = TMEM1_BEGEND
 
      REAL(DOUBLE) , INTENT(IN)       :: AREA              ! Element area
      REAL(DOUBLE) , INTENT(IN)       :: X2E               ! x coord of elem node 2
      REAL(DOUBLE) , INTENT(IN)       :: X3E               ! x coord of elem node 3
      REAL(DOUBLE) , INTENT(IN)       :: Y3E               ! y coord of elem node 3

      REAL(DOUBLE) , INTENT(OUT)      :: BIG_BM(3,ELDOF,1) ! Strain-displ matrix for this elem for all Gauss points (for all DOF's)

      REAL(DOUBLE)                    :: ALP(3)            ! Col of ALPVEC
      REAL(DOUBLE)                    :: BM(3,ELDOF)       ! Strain-displ matrix for this elem
      REAL(DOUBLE)                    :: AMB(3,ELDOF)      ! SHELL_A matrix times strain-displ matrix for this elem
      REAL(DOUBLE)                    :: DUM(ELDOF,ELDOF)  ! Needed for calc 18 x 18 KE  using MATMULT, since KE is MELDOF x MELDOF 
      REAL(DOUBLE)                    :: DUM1(ELDOF,1)     ! Intermediate matrix used in determining PTE thermal loads
      REAL(DOUBLE)                    :: EALP(3)           ! Intermed var used in calc STEi therm stress coeffs
      REAL(DOUBLE)                    :: EMB(3,ELDOF)      ! Mat'l matrix times strain-displ matrix for this elem
      REAL(DOUBLE)                    :: C01               ! Intermediate variable used in calc PTE, SEi, STEi, KE
      REAL(DOUBLE)                    :: C02               ! Intermediate variable used in calc PTE, SEi, STEi, KE
      REAL(DOUBLE)                    :: C03               ! Intermediate variable used in calc PTE, SEi, STEi, KE
      REAL(DOUBLE)                    :: C04               ! Intermediate variable used in calc PTE, SEi, STEi, KE
      REAL(DOUBLE)                    :: CT0               ! Intermediate variable used in calc PTE thermal loads
      REAL(DOUBLE)                    :: DUM0(3)           ! Intermediate matrix used in solving for KE stiffness matrix       
      REAL(DOUBLE)                    :: TBAR              ! Average elem temperature 
 
! **********************************************************************************************************************************
      IF (WRT_LOG >= SUBR_BEGEND) THEN
         CALL OURTIM
         WRITE(F04,9001) SUBR_NAME,TSEC
 9001    FORMAT(1X,A,' BEGN ',F10.3)
      ENDIF

! **********************************************************************************************************************************
! Determine element strain-displacement matrix.

      DO I=1,3
         DO J=1,ELDOF
            BM(I,J) = ZERO
         ENDDO 
      ENDDO 

      C01 = ONE/X2E
      C02 = ONE/Y3E
      C03 = (X3E - X2E)*C01*C02
      C04 = X3E*C01*C02

      BM(1, 1) = -C01
      BM(1, 7) =  C01

      BM(2, 2) =  C03
      BM(2, 8) = -C04
      BM(2,14) =  C02

      BM(3, 1) =  C03
      BM(3, 2) = -C01
      BM(3, 7) = -C04
      BM(3, 8) =  C01
      BM(3,13) =  C02

! **********************************************************************************************************************************
! If element is a composite and if it is a nonsym layup we need to calc BIG_BB for later use

      DO I=1,3
         DO J=1,ELDOF
            BIG_BM(I,J,1) = ZERO
         ENDDO
      ENDDO
  
      IF ((PCOMP_PROPS == 'Y') .AND. (PCOMP_LAM == 'NON')) THEN

         DO I=1,3
            DO J=1,18
               BIG_BM(I,J,1) = BM(I,J)
            ENDDO
         ENDDO

      ENDIF

! **********************************************************************************************************************************
! Determine element thermal loads. 

      IF (OPT(2) == 'Y') THEN

         CALL MATMULT_FFF_T ( BM, SHELL_AALP, 3, ELDOF, 1, DUM1 )

         DO J=1,NTSUB
            TBAR = (DT(1,J) + DT(2,J) + DT(3,J))/THREE
            CT0 = AREA*(TBAR - TREF(1))
            DO I=1,ELDOF
               PTE(I,J) = CT0*DUM1(I,1)
            ENDDO
         ENDDO

      ENDIF
  
! **********************************************************************************************************************************
! Calculate BE1, SE1 matrices (3 x ELDOF) for strain/stress data recovery.
! Note: strain/stress recovery matrices only make sense for individual plies (or whole elem if only 1 "ply")
 
      IF (OPT(3) == 'Y') THEN

         DO I=1,3
            DO J=1,ELDOF
               BE1(I,J,1) = BM(I,J)
            ENDDO
         ENDDO

! SE1, STE1 generated in elem coords. Then, in LINK9 the stresses, calc'd in elem coords, will be transformed to ply coords

         CALL MATMULT_FFF ( EM, BM, 3, 3, ELDOF, EMB )     ! Generate SE1 in element coords (at this point EM is elem coords)
         DO I=1,3
            DO J=1,ELDOF
               SE1(I,J,1) = EMB(I,J)
            ENDDO
         ENDDO

         ALP(1) = ALPVEC(1,1)
         ALP(2) = ALPVEC(2,1)
         ALP(3) = ALPVEC(3,1)

         CALL MATMULT_FFF ( EM, ALP, 3, 3, 1, EALP )
         DO J=1,NTSUB
            TBAR = (DT(1,J) + DT(2,J) + DT(3,J))/THREE
            DO I=1,3
               STE1(I,J,1) = EALP(I)*(TBAR - TREF(1))
            ENDDO
         ENDDO

      ENDIF
  
! **********************************************************************************************************************************
! Calculate element stiffness matrix KE.
 
      IF (OPT(4) == 'Y') THEN

         CALL MATMULT_FFF ( SHELL_A, BM, 3, 3, ELDOF, AMB )
         CALL MATMULT_FFF_T ( BM, AMB, 3, ELDOF, ELDOF, DUM )
         DO I=1,ELDOF
            DO J=1,ELDOF
               KE(I,J) = KE(I,J) + AREA*DUM(I,J)
            ENDDO
         ENDDO
 
      ENDIF
  
! **********************************************************************************************************************************
! Calculate element pressure load matrix PPE.
! NOTE: for this element work equivalent and static equivalent loads are the same
 
      IF (OPT(5) == 'Y') THEN

         DO J=1,NSUB
            PPE( 1,J) = AREA*PRESS(1,J)/THREE
            PPE( 2,J) = AREA*PRESS(2,J)/THREE
            PPE( 7,J) = AREA*PRESS(1,J)/THREE
            PPE( 8,J) = AREA*PRESS(2,J)/THREE
            PPE(13,J) = AREA*PRESS(1,J)/THREE
            PPE(14,J) = AREA*PRESS(2,J)/THREE
         ENDDO 
   
      ENDIF
  
! **********************************************************************************************************************************
      IF (WRT_LOG >= SUBR_BEGEND) THEN
         CALL OURTIM
         WRITE(F04,9002) SUBR_NAME,TSEC
 9002    FORMAT(1X,A,' END  ',F10.3)
      ENDIF

      RETURN

! **********************************************************************************************************************************

      END SUBROUTINE TMEM1
