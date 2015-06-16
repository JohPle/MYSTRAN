! ##################################################################################################################################

   MODULE ARPACK_INFO_MSG_Interface

   INTERFACE

      SUBROUTINE ARPACK_INFO_MSG ( SUBNAME, INFO, IPARAM, LWORKL, NEV, NCV )


      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE SCONTR, ONLY                :  PROG_NAME, FATAL_ERR, NDOFL, WARN_ERR
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE PARAMS, ONLY                :  DARPACK, SUPWARN
      USE MODEL_STUF, ONLY            :  EIG_N2

      IMPLICIT NONE

      CHARACTER(  6*BYTE), INTENT(IN):: SUBNAME            ! Name of subr w/ msg

      INTEGER, INTENT(IN)            :: INFO               ! Error msg number from ARPACK routine to do eigenvalue/vec calc
      INTEGER, INTENT(IN)            :: IPARAM(11)         ! Integer array from subr DSBAND (in module ARPACK_LANCZOS_1)
      INTEGER, INTENT(IN)            :: LWORKL             ! Length of array WORKL in subr dsband
      INTEGER, INTENT(IN)            :: NEV                !
      INTEGER, INTENT(IN)            :: NCV                !

      END SUBROUTINE ARPACK_INFO_MSG

   END INTERFACE

   END MODULE ARPACK_INFO_MSG_Interface

