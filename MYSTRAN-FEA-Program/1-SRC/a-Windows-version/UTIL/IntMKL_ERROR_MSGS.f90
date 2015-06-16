! ##################################################################################################################################

      SUBROUTINE IntMKL_ERROR_MSGS ( IER )

      USE PENTIUM_II_KIND, ONLY       :  LONG
      USE IOUNT1, ONLY                :  ERR, F06

      IMPLICIT NONE

      INTEGER(LONG), INTENT(IN)       :: IER               ! Error indicator

! **********************************************************************************************************************************
      WRITE(ERR,1) IER
      WRITE(F06,1) IER

      RETURN

! **********************************************************************************************************************************
    1 FORMAT(' *ERROR      : MYSTRAN HAS QUIT DUE TO AN ERROR REPORTED FROM THE INTEL MATH KERNEL LIBRARY (MKL).'                  &
                    ,/,14X,' SEE THE INTEL MKL DOCUMENTATION WITH BCSLIB IER = ',I5,' FOR AN EXPLANATION OF THE ERROR.'            &
                    ,/,14X,' ALSO, TRY RUNNING THIS PROBLEM WITH BULK DATA PARAM ENTRY SOLLIB = ZZPACK')

! **********************************************************************************************************************************

      END SUBROUTINE IntMKL_ERROR_MSGS

