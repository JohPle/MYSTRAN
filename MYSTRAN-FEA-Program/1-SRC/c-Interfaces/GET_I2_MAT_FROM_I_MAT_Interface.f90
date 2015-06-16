! ##################################################################################################################################

   MODULE GET_I2_MAT_FROM_I_MAT_Interface

   INTERFACE

      SUBROUTINE GET_I2_MAT_FROM_I_MAT ( MAT_NAME, NROWS, NTERMS, I_MAT, I2_MAT ) 


      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  GET_I2_MAT_FROM_I_MAT_BEGEND

      IMPLICIT NONE

      CHARACTER(LEN=*), INTENT(IN)    :: MAT_NAME          ! Matrix name

      INTEGER(LONG), INTENT(IN)       :: NROWS             ! Number of rows in MAT
      INTEGER(LONG), INTENT(IN)       :: NTERMS            ! Number of matrix terms that should be in MAT
      INTEGER(LONG), INTENT(IN)       :: I_MAT(NROWS+1)    ! Row indicators for terms in matrix MAT
      INTEGER(LONG), INTENT(OUT)      :: I2_MAT(NTERMS)    ! Row numbers for terms in matrix MAT
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = GET_I2_MAT_FROM_I_MAT_BEGEND

      END SUBROUTINE GET_I2_MAT_FROM_I_MAT

   END INTERFACE

   END MODULE GET_I2_MAT_FROM_I_MAT_Interface

