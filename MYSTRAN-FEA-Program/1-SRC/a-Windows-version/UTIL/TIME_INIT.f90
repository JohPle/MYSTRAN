! ##################################################################################################################################
 
      SUBROUTINE TIME_INIT
 
! Set time initializing parameters
 
      USE TIMDAT, ONLY                :  HOUR, MINUTE, SEC, SFRAC
 
      USE TIME_INIT_USE_IFs

      IMPLICIT NONE
 
!nnn  DLL_EXPORT TIME_INIT

! **********************************************************************************************************************************
! Set time initializing parameters

      HOUR   = -100                                        ! Used in subr OURTIM so subr begin times start, in a LINK, at 0.
      MINUTE =    0
      SEC    =    0
      SFRAC  =    0

! **********************************************************************************************************************************

      END SUBROUTINE TIME_INIT
