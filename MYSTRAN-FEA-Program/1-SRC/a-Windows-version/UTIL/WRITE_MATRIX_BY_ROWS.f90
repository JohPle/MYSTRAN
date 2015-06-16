! ##################################################################################################################################
 
      SUBROUTINE WRITE_MATRIX_BY_ROWS ( MAT_DESCR, MATOUT, NROWS, NCOLS )
 
! Writes a matrix one row at a time in a format that has 10 terms across the page (repeated until row is completely written)

      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  WRITE_MATRIX_BY_ROWS_BEGEND
 
      USE WRITE_VECTOR_USE_IFs

      IMPLICIT NONE
 
      CHARACTER(LEN=LEN(BLNK_SUB_NAM)):: SUBR_NAME = 'WRITE_MATRIX_BY_ROWS'
      CHARACTER(LEN=*), INTENT(IN)    :: MAT_DESCR          ! Character descriptor of the matrix to be printed
      CHARACTER(131*BYTE)             :: HEADER             ! MAT_DESCRIPTOR centered in a line of output

      INTEGER(LONG), INTENT(IN)       :: NROWS              ! Number of rows in matrix MATOUT
      INTEGER(LONG), INTENT(IN)       :: NCOLS              ! Number of cols in matrix MATOUT
      INTEGER(LONG)                   :: I,J,K              ! DO loop indices
      INTEGER(LONG)                   :: NUM_LEFT           !
      INTEGER(LONG)                   :: PAD                ! Number of spaces to pad in HEADER to center MAT_DESCRIPTOR
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = WRITE_MATRIX_BY_ROWS_BEGEND

      REAL(DOUBLE) , INTENT(IN)       :: MATOUT(NROWS,NCOLS)! Matrix to write out
      REAL(DOUBLE)                    :: MAT_LINE(10)       ! Up to 10 terms from one col of MATOUT
 
      INTRINSIC                       :: LEN

! **********************************************************************************************************************************
      IF (WRT_LOG >= SUBR_BEGEND) THEN
         CALL OURTIM
         WRITE(F04,9001) SUBR_NAME,TSEC
 9001    FORMAT(1X,A,' BEGN ',F10.3)
      ENDIF

! **********************************************************************************************************************************
      PAD = (132 - LEN(MAT_DESCR))/2
      HEADER(1:) = ' '
      HEADER(PAD+1:) = MAT_DESCR
      WRITE(F06,101) HEADER

      DO I=1,NROWS
         WRITE(F06,102) I
         NUM_LEFT = NCOLS
         DO J=1,NCOLS,10
            IF (NUM_LEFT >= 10) THEN
               DO K=1,10
                  MAT_LINE(K) = MATOUT(I,J+K-1)
               ENDDO
               WRITE(F06,103) (MAT_LINE(K),K=1,10)
            ELSE
               DO K=1,NUM_LEFT
                  MAT_LINE(K) = MATOUT(I,J+K-1)
               ENDDO
               WRITE(F06,103) (MAT_LINE(K),K=1,NUM_LEFT)
            ENDIF
            NUM_LEFT = NUM_LEFT - 10
         ENDDO
         WRITE(F06,*)
      ENDDO

! **********************************************************************************************************************************
      IF (WRT_LOG >= SUBR_BEGEND) THEN
         CALL OURTIM
         WRITE(F04,9002) SUBR_NAME,TSEC
 9002    FORMAT(1X,A,' END  ',F10.3)
      ENDIF

      RETURN

! **********************************************************************************************************************************
  101 FORMAT(1X,/,1X,131A,/)

  102 FORMAT(1X,'ROW ',I8,/,1X,'------------')

  103 FORMAT(1X,10(1ES14.6))

! **********************************************************************************************************************************
 
      END SUBROUTINE WRITE_MATRIX_BY_ROWS
