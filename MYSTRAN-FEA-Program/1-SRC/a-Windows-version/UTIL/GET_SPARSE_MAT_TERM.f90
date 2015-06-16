! ##################################################################################################################################
 
      SUBROUTINE GET_SPARSE_MAT_TERM ( MATIN_NAME, I_MATIN, J_MATIN, MATIN, IROW, JCOL, N, NTERMS, MATIN_VAL )
 
! Given a row/col index, gets the real value from a sparse CRS matrix 

      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR
      USE TIMDAT, ONLY                :  TSEC
      USE CONSTANTS_1, ONLY           :  ZERO 
      USE SUBR_BEGEND_LEVELS, ONLY    :  GET_SPARSE_MAT_TERM_BEGEND

      USE GET_SPARSE_MAT_TERM_USE_IFs

      IMPLICIT NONE
 
      CHARACTER(LEN=LEN(BLNK_SUB_NAM)):: SUBR_NAME = 'GET_SPARSE_MAT_TERM'
      CHARACTER(LEN=*), INTENT(IN )   :: MATIN_NAME        ! Name of input matrix MATIN

      INTEGER(LONG), INTENT(IN)       :: N                 ! Row/col size of MATIN
      INTEGER(LONG), INTENT(IN)       :: NTERMS            ! Number of nonzero terms in sparse matrix MATIN
      INTEGER(LONG), INTENT(IN)       :: IROW              ! Row index of the term to retrieve from sparse MATIN
      INTEGER(LONG), INTENT(IN)       :: JCOL              ! Col index of the term to retrieve from sparse MATIN
      INTEGER(LONG), INTENT(IN)       :: I_MATIN(N+1)      ! Indices of the beginning terms in each row for MATIN values
      INTEGER(LONG), INTENT(IN)       :: J_MATIN(NTERMS)   ! Col numbers of nonzero term in MATIN
      INTEGER(LONG)                   :: NUM_TERMS_IN_ROW  ! No. terms in row IROW of MATIN
      INTEGER(LONG)                   :: I,J               ! DO loop indices
      INTEGER(LONG)                   :: K                 ! Counter
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = GET_SPARSE_MAT_TERM_BEGEND
 
      REAL(DOUBLE) , INTENT(IN)       :: MATIN(NTERMS)     ! Real vals in sparse matrix MATIN
      REAL(DOUBLE) , INTENT(OUT)      :: MATIN_VAL

! *********************************************************************************************************************************
      IF (WRT_LOG >= SUBR_BEGEND) THEN
         CALL OURTIM
         WRITE(F04,9001) SUBR_NAME,TSEC
 9001    FORMAT(1X,A,' BEGIN',F10.3)
      ENDIF

! **********************************************************************************************************************************
! Initialize output value

      MATIN_VAL = ZERO

! Make sure IROW, JCOL are valid row/col numbers of MATIN

      IF ((IROW < 1) .OR. (IROW > N)) THEN
         WRITE(ERR,929) SUBR_NAME, 'ROW', IROW, MATIN_NAME, 'ROW', N
         WRITE(F06,929) SUBR_NAME, IROW, MATIN_NAME, N
         FATAL_ERR = FATAL_ERR + 1
         CALL OUTA_HERE ( 'Y' )
      ENDIF

      IF ((JCOL < 1) .OR. (JCOL > N)) THEN
         WRITE(ERR,929) SUBR_NAME, 'COL', JCOL, MATIN_NAME, 'COL', N
         WRITE(F06,929) SUBR_NAME, JCOL, MATIN_NAME, N
         FATAL_ERR = FATAL_ERR + 1
         CALL OUTA_HERE ( 'Y' )
      ENDIF

      NUM_TERMS_IN_ROW = I_MATIN(IROW+1) - I_MATIN(IROW)
      K = I_MATIN(IROW)
      DO J=1,NUM_TERMS_IN_ROW
         IF (K > NTERMS) CALL ARRAY_SIZE_ERROR_1 ( SUBR_NAME, NTERMS, MATIN_NAME )
         IF (J_MATIN(K) == JCOL) THEN
            MATIN_VAL = MATIN(K)
         ENDIF
         K = K + 1
      ENDDO

! **********************************************************************************************************************************
      IF (WRT_LOG >= SUBR_BEGEND) THEN
         CALL OURTIM
         WRITE(F04,9002) SUBR_NAME,TSEC
 9002    FORMAT(1X,A,' END  ',F10.3)
      ENDIF

      RETURN

! **********************************************************************************************************************************
  929 FORMAT(' *ERROR   929: PROGRAMMING ERROR IN SUBROUTINE ',A                                                                   &
                    ,/,14X,' ATTEMPT TO GET ',A,' = ',I12,' FROM MATRIX ',A,' WHEN IT ONLY HAS ',A,'  NUMBERS 1 THRU ',I12)   

! **********************************************************************************************************************************

      END SUBROUTINE GET_SPARSE_MAT_TERM

