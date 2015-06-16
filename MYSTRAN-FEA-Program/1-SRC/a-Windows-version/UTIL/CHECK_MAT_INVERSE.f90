! ##################################################################################################################################

      SUBROUTINE CHECK_MAT_INVERSE ( MAT_NAME, A, AI, NSIZE )

! Checks whether a matrix (A) times its calculated inverse (AI) is the identity matrix

      USE PENTIUM_II_KIND, ONLY        : BYTE, DOUBLE, LONG
      USE IOUNT1, ONLY                 : ERR, F06
      USE CONSTANTS_1, ONLY            : ZERO
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG
      USE PARAMS, ONLY                 :  EPSIL

      IMPLICIT NONE

!nnn  DLL_IMPORT MATMULT_FFF

      CHARACTER(LEN=*), INTENT(IN)    :: MAT_NAME          ! Name of input matrix
      CHARACTER(11*BYTE)              :: COL(3)

      INTEGER(LONG), INTENT(IN)       :: NSIZE             ! Row/col size of input matrices
      INTEGER(LONG)                   :: I,J               ! DO loop indices
      INTEGER(LONG)                   :: IERR              ! Error indicator:
!                                                            IERR = 2 indicates SUM_DIAGS     > SMALL_NUM
!                                                            IERR = 3 indicates SUM_OFF_DIAGS > SMALL_NUM
!                                                            IERR = 5 indicates SUM_DIAGS and SUM_OFF_DIAGS > SMALL_NUM

      REAL(DOUBLE) , INTENT(IN)       :: A(NSIZE,NSIZE)    ! Matrix to invert
      REAL(DOUBLE) , INTENT(IN)       :: AI(NSIZE,NSIZE)   ! Inverse of A
      REAL(DOUBLE)                    :: IDENT(NSIZE,NSIZE)! A*AI should be the identity matrix
      REAL(DOUBLE)                    :: SMALL_NUM         ! Small number for comparing to near zero
      REAL(DOUBLE)                    :: SUM_DIAGS         ! Sum of diag terms from IDENT
      REAL(DOUBLE)                    :: SUM_OFF_DIAGS     ! Sum of off-diag terms from IDENT

! **********************************************************************************************************************************
! Initialize

      IERR = 0
      SMALL_NUM = EPSIL(1)

      CALL MATMULT_FFF ( A, AI, NSIZE, NSIZE, NSIZE, IDENT )

      IF (DEBUG(199) > 1) THEN

         WRITE(F06,1001) MAT_NAME                             ! Write input matrix
         DO I=1,NSIZE
            COL(I) = '        Col'
         ENDDO
         WRITE(F06,2001) (COL(I),I, I=1,NSIZE)
         DO I=1,NSIZE
            WRITE(F06,2002) I, (A(I,J),J=1,NSIZE)
         ENDDO
         WRITE (F06,*)

         WRITE(F06,1002)                                      ! Write inverse of input matrix
         DO I=1,NSIZE
            COL(I) = '        Col'
         ENDDO
         WRITE(F06,2001) (COL(I),I, I=1,NSIZE)
         DO I=1,NSIZE
            WRITE(F06,2002) I, (AI(I,J),J=1,NSIZE)
         ENDDO
         WRITE (F06,*)

         WRITE(F06,1003)                                      ! Write IDENT matrix
         DO I=1,NSIZE
            COL(I) = '        Col'
         ENDDO
         WRITE(F06,2001) (COL(I),I, I=1,NSIZE)
         DO I=1,NSIZE
            WRITE(F06,2002) I, (IDENT(I,J),J=1,NSIZE)
         ENDDO
         WRITE (F06,*)

      ENDIF

      SUM_DIAGS = ZERO
      DO I=1,NSIZE
         SUM_DIAGS = SUM_DIAGS + IDENT(I,I)
      ENDDO

      SUM_OFF_DIAGS = ZERO
      DO I=1,NSIZE
         DO J=1,NSIZE
            IF (J /= I) THEN
               SUM_OFF_DIAGS = SUM_OFF_DIAGS + IDENT(I,J)
            ENDIF
         ENDDO
      ENDDO

      WRITE(F06,4001) SUM_DIAGS
      WRITE(F06,4002) SUM_DIAGS/NSIZE
      WRITE(F06,4003) 100.D0*SUM_OFF_DIAGS
      WRITE(F06,*)

      IF ( DABS(SUM_DIAGS - NSIZE) > SMALL_NUM ) THEN
         IERR = 2
      ENDIF

      IF ( DABS(SUM_OFF_DIAGS) > SMALL_NUM ) THEN
         IERR = IERR + 3
      ENDIF

      IF (IERR > 0) THEN
         WRITE(ERR,9000) MAT_NAME
         WRITE(F06,9000) MAT_NAME
      ENDIF

      IF      (IERR == 2) THEN
         WRITE(ERR,9002)
         WRITE(F06,9002)
      ELSE IF (IERR == 3) THEN
         WRITE(ERR,9003)
         WRITE(F06,9003)
      ELSE IF (IERR == 5) THEN
         WRITE(ERR,9002)
         WRITE(F06,9002)
         WRITE(ERR,9003)
         WRITE(F06,9003)
      ENDIF

      RETURN

!**********************************************************************************************************************************
 1001 FORMAT(' ***************************************************************************************************************',/,&
             ' Input matrix is A with name =',A,//,' Input matrix A:',/,' --------------')

 1002 FORMAT(' AI = inverse of the input matrix:',/,' ---------------------------------')

 1003 FORMAT(' IDENT = A*AI:',/,' ------------')

 2001 FORMAT(5X,3(A,I3))

 2002 FORMAT(' Row',I3,':',3(1ES14.6))

 4001 FORMAT(' Sum of diagonal terms in IDENT = ',1ES14.6)

 4002 FORMAT(' Avg    diagonal term  in IDENT = ',1ES14.6)

 4003 FORMAT(' Sum of off diag terms in IDENT = ',1ES14.2,'% of a unity term in an identity matrix (which A*AI should be)')

 9000 FORMAT(' *INFORMATION: MATRIX ',A,' CANNOT BE INVERTED, OR THE INVERSE FAILED THE CHECK THAT IT TIMES ITS INVERSE IS THE',   &
                           ' IDENTITY MATRIX, DUE TO THE FOLLOWING:')

 9002 FORMAT('               IT FAILED THE INVERT CHECK IN THAT THE SUM OF THE DIAG TERMS IN THE 3x3 CHECK MATRIX WAS NOT = 3')

 9003 FORMAT('               IT FAILED THE INVERT CHECK IN THAT THE SUM OF THE OFF-DIAG TERMS IN THE 3x3 CHECK MATRIX WAS NOT = 0')

!**********************************************************************************************************************************

      END SUBROUTINE CHECK_MAT_INVERSE

