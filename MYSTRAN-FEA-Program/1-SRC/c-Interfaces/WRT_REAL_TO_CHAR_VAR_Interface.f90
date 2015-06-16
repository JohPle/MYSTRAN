! ##################################################################################################################################

   MODULE WRT_REAL_TO_CHAR_VAR_Interface

   INTERFACE

      SUBROUTINE WRT_REAL_TO_CHAR_VAR ( REAL_VAR, NROWS, NCOLS, ROW_NUM, CHAR_VAR )


      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  ERR, F06
      USE SCONTR, ONLY                :  FATAL_ERR

      IMPLICIT NONE

      INTEGER(LONG), INTENT(IN)       :: NCOLS                ! Number of cols in array REAL_VAR
      INTEGER(LONG), INTENT(IN)       :: NROWS                ! Number of rows in array REAL_VAR
      INTEGER(LONG), INTENT(IN)       :: ROW_NUM              ! Row number in array REAL_VAR to write

      CHARACTER(14*BYTE), INTENT(OUT) :: CHAR_VAR(NCOLS)      ! Character representation of the real data in one row of REAL_VAR

      REAL(DOUBLE) , INTENT(IN)       :: REAL_VAR(NROWS,NCOLS)! 

      END SUBROUTINE WRT_REAL_TO_CHAR_VAR

   END INTERFACE

   END MODULE WRT_REAL_TO_CHAR_VAR_Interface

