! ##################################################################################################################################

   MODULE ROW_AT_COLJ_BEGEND_Interface

   INTERFACE

      SUBROUTINE ROW_AT_COLJ_BEGEND ( NAME, NROWS, NCOLS, NTERM, I_A, J_A, ROW_AT_COLJ_BEG, ROW_AT_COLJ_END )


      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, F04
      USE SCONTR, ONLY                :  BLNK_SUB_NAM
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  ROW_AT_COLJ_BEGEND_BEGEND

      IMPLICIT NONE

      CHARACTER(LEN=*), INTENT(IN )   :: NAME                  ! Name of input matrix A

      INTEGER(LONG), INTENT(IN )      :: NTERM                 ! No. terms in MATIN
      INTEGER(LONG), INTENT(IN )      :: NROWS                 ! No. rows in MATIN
      INTEGER(LONG), INTENT(IN )      :: NCOLS                 ! No. cols in MATIN
      INTEGER(LONG), INTENT(IN )      :: I_A(NROWS+1)          ! I_A(i+1) - I_A(i) is no. terms in row i of matrix A
      INTEGER(LONG), INTENT(IN )      :: J_A(NTERM)            ! Array of column numbers for matrix A
      INTEGER(LONG), INTENT(OUT)      :: ROW_AT_COLJ_BEG(NCOLS)! jth term is row number in MATIN where col j nonzeros begin 
      INTEGER(LONG), INTENT(OUT)      :: ROW_AT_COLJ_END(NCOLS)! jth term is row number in MATIN where col j nonzeros end
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = ROW_AT_COLJ_BEGEND_BEGEND

      END SUBROUTINE ROW_AT_COLJ_BEGEND

   END INTERFACE

   END MODULE ROW_AT_COLJ_BEGEND_Interface

