! ##################################################################################################################################
 
      SUBROUTINE GET_MACHINE_PARAMS

! Use LAPACK function DLAMCH to get machine parameters for the users' computer

      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, F04
      USE SCONTR, ONLY                :  BLNK_SUB_NAM
      USE TIMDAT, ONLY                :  TSEC
      USE CONSTANTS_1, ONLY           :  ONE
      USE SUBR_BEGEND_LEVELS, ONLY    :  GET_MACHINE_PARAMS_BEGEND
      USE MACHINE_PARAMS, ONLY        :  MACH_BASE, MACH_EMAX, MACH_EMIN, MACH_EPS, MACH_PREC, MACH_RMAX, MACH_RMIN, MACH_RND,     &
                                         MACH_SFMIN, MACH_T, MACH_LARGE_NUM
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG
      USE LAPACK_BLAS_AUX
 
      USE GET_MACHINE_PARAMS_USE_IFs

      IMPLICIT NONE
 
      CHARACTER(LEN=LEN(BLNK_SUB_NAM)):: SUBR_NAME = 'GET_MACHINE_PARAMS'

      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = GET_MACHINE_PARAMS_BEGEND

! **********************************************************************************************************************************
      IF (WRT_LOG >= SUBR_BEGEND) THEN
         CALL OURTIM
         WRITE(F04,9001) SUBR_NAME,TSEC
 9001    FORMAT(1X,A,' BEGN ',F10.3)
      ENDIF

! **********************************************************************************************************************************
      MACH_EPS       = DLAMCH ('E')
      MACH_SFMIN     = DLAMCH ('S')
      MACH_BASE      = DLAMCH ('B')
      MACH_PREC      = DLAMCH ('P')
      MACH_T         = DLAMCH ('N') 
      MACH_RND       = DLAMCH ('R')    
      MACH_EMIN      = DLAMCH ('M')
      MACH_RMIN      = DLAMCH ('U') 
      MACH_EMAX      = DLAMCH ('L') 
      MACH_RMAX      = DLAMCH ('O')

      MACH_LARGE_NUM = ONE/MACH_SFMIN

! Write parameters to output file if requested

      IF (DEBUG(3) > 0) THEN
         WRITE(F06,2000)
         WRITE(F06,1000)
         WRITE(F06,1001) MACH_EPS
         WRITE(F06,1002) MACH_SFMIN
         WRITE(F06,1003) MACH_BASE
         WRITE(F06,1004) MACH_PREC
         WRITE(F06,1005) MACH_T
         WRITE(F06,1006) MACH_RND
         WRITE(F06,1007) MACH_EMIN
         WRITE(F06,1008) MACH_RMIN
         WRITE(F06,1009) MACH_EMAX
         WRITE(F06,1010) MACH_RMAX
         WRITE(F06,1011) MACH_LARGE_NUM
         WRITE(F06,2000)
         WRITE(F06,*)
      ENDIF

! **********************************************************************************************************************************
      IF (WRT_LOG >= SUBR_BEGEND) THEN
         CALL OURTIM
         WRITE(F04,9002) SUBR_NAME,TSEC
 9002    FORMAT(1X,A,' END  ',F10.3)
      ENDIF

      RETURN

! **********************************************************************************************************************************
 1000 FORMAT(' *INFORMATION: Machine parameters from LAPACK function DLAMCH:',/)

 1001 FORMAT(' LAPACK PARAMETER EPS        = ',1ES13.6,' = relative machine precision')

 1002 FORMAT(' LAPACK PARAMETER SFMIN      = ',1ES13.6,' = safe minimum, such that 1/SFMIN does not overflow')

 1003 FORMAT(' LAPACK PARAMETER BASE       = ',1ES13.6,' = base of the machine')

 1004 FORMAT(' LAPACK PARAMETER PREC       = ',1ES13.6,' = eps*base')

 1005 FORMAT(' LAPACK PARAMETER T          = ',1ES13.6,' = number of (base) digits in the mantissa')

 1006 FORMAT(' LAPACK PARAMETER RND        = ',1ES13.6,' = 1.0 when rounding occurs in addition, 0.0 otherwise')

 1007 FORMAT(' LAPACK PARAMETER EMIN       = ',1ES13.6,' = minimum exponent before (gradual) underflow')

 1008 FORMAT(' LAPACK PARAMETER RMIN       = ',1ES13.6,' = underflow threshold = base**(emin-1)')

 1009 FORMAT(' LAPACK PARAMETER EMAX       = ',1ES13.6,' = largest exponent before overflow')

 1010 FORMAT(' LAPACK PARAMETER RMAX       = ',1ES13.6,' = overflow threshold  = (base**emax)*(1-eps)')

 1011 FORMAT('        PARAMETER LARGE_NUM  = ',1ES13.6,' = 1./SFMIN')

 2000 FORMAT(' --------------------------------------------------------------------------------------------------')
! **********************************************************************************************************************************

      END SUBROUTINE GET_MACHINE_PARAMS
