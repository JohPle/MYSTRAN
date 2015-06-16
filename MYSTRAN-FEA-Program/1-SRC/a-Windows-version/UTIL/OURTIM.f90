! ##################################################################################################################################
 
      SUBROUTINE OURTIM
 
! Returns time using Fortran DATE_AND_TIME intrinsic procedure
 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG
      USE TIMDAT, ONLY                :  HOUR, MINUTE, SEC, SFRAC, TSEC, DSEC

      USE OURTIM_USE_IFs

      IMPLICIT NONE
 
!nnn  DLL_EXPORT OURTIM

      CHARACTER( 8*BYTE)              :: DATE              ! Date returned from intrinsic function DATE_AND_TIME
      CHARACTER(10*BYTE)              :: TIME              ! Time returned from intrinsic function DATE_AND_TIME
      CHARACTER( 5*BYTE)              :: ZONE              ! Zone returned from intrinsic function DATE_AND_TIME
 
      INTEGER(LONG)                   :: OLD_HOUR          ! Value of HOUR   (module TIMDAT) when OURTIM was called
      INTEGER(LONG)                   :: OLD_MIN           ! Value of MINUTE (module TIMDAT) when OURTIM was called
      INTEGER(LONG)                   :: OLD_SEC           ! Value of SEC    (module TIMDAT) when OURTIM was called
      INTEGER(LONG)                   :: OLD_SFRAC         ! Value of SFRAC  (module TIMDAT) when OURTIM was called
      INTEGER(LONG)                   :: VALUES(8)         ! Contains year, month, day from intrinsic function DATE_AND_TIME
 
      INTRINSIC                       :: DATE_AND_TIME
 
! **********************************************************************************************************************************
      OLD_HOUR  = HOUR
      OLD_MIN   = MINUTE
      OLD_SEC   = SEC
      OLD_SFRAC = SFRAC
 
      CALL DATE_AND_TIME ( DATE, TIME, ZONE, VALUES )
 
      HOUR   = VALUES(5)
      MINUTE = VALUES(6)
      SEC    = VALUES(7)
      SFRAC  = VALUES(8)
 
! Reset OLD_HOUR for new day:
 
      IF (OLD_HOUR > HOUR) THEN
         OLD_HOUR = OLD_HOUR - 24
      ENDIF
 
! Check for first pass thru OURTIM (HOUR is initialized to -100 in the MYSTRAN.for) and calc DSEC, TSEC (module TIMDAT)
 
      IF (OLD_HOUR == -100) THEN
         DSEC = 0.0
         TSEC = 0.0
      ELSE
         DSEC = 3600*(HOUR-OLD_HOUR) + 60*(MINUTE-OLD_MIN)+(SEC-OLD_SEC) + .001*(SFRAC-OLD_SFRAC)
         TSEC = TSEC + DSEC
      ENDIF
 
      RETURN
 
      END SUBROUTINE OURTIM
