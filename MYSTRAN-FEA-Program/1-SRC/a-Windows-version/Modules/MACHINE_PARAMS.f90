! ##################################################################################################################################

      MODULE MACHINE_PARAMS

! These are parameters that will be set by a LAPACK routine that knows the capability of the processor of the users computer

      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE

      IMPLICIT NONE

      SAVE

      REAL(DOUBLE)                    :: MACH_BASE         ! Base of the machine
      REAL(DOUBLE)                    :: MACH_EMAX         ! Largest exponent before overflow
      REAL(DOUBLE)                    :: MACH_EMIN         ! Minimum exponent before (gradual) underflow
      REAL(DOUBLE)                    :: MACH_EPS          ! Relative machine precision
      REAL(DOUBLE)                    :: MACH_LARGE_NUM    ! 1./MACH_SFMIN
      REAL(DOUBLE)                    :: MACH_PREC         ! eps*base
      REAL(DOUBLE)                    :: MACH_RMAX         ! Overflow threshold  - (base**emax)*(1-eps)
      REAL(DOUBLE)                    :: MACH_RMIN         ! Underflow threshold - base**(emin-1)
      REAL(DOUBLE)                    :: MACH_RND          ! 1.0 when rounding occurs in addition, 0.0 otherwise
      REAL(DOUBLE)                    :: MACH_SFMIN        ! Safe minimum, such that 1/sfmin does not overflow
      REAL(DOUBLE)                    :: MACH_T            ! Number of (base) digits in the mantissa

      END MODULE MACHINE_PARAMS
