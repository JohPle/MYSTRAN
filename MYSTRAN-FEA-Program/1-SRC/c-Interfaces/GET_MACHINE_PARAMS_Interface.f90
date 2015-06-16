! ##################################################################################################################################

   MODULE GET_MACHINE_PARAMS_Interface

   INTERFACE

      SUBROUTINE GET_MACHINE_PARAMS


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
 
      IMPLICIT NONE
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = GET_MACHINE_PARAMS_BEGEND

      END SUBROUTINE GET_MACHINE_PARAMS

   END INTERFACE

   END MODULE GET_MACHINE_PARAMS_Interface

