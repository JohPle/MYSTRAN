! ##################################################################################################################################

   MODULE WRITE_PCOMP_EQUIV_Interface

   INTERFACE

      SUBROUTINE WRITE_PCOMP_EQUIV ( PCOMP_TM, PCOMP_IB, PCOMP_TS )


      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE CONSTANTS_1, ONLY           :  TWELVE
      USE IOUNT1, ONLY                :  ERR, F04, F06, WRT_ERR, WRT_LOG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, MEMATC, MID1_PCOMP_EQ, MID2_PCOMP_EQ, MID3_PCOMP_EQ,                        &
                                         MID4_PCOMP_EQ, MID1_PCOMP_EQ, MID2_PCOMP_EQ, MID3_PCOMP_EQ, MID4_PCOMP_EQ
      USE PARAMS, ONLY                :  EPSIL, PCOMPEQ, SUPINFO
      USE MODEL_STUF, ONLY            :  INTL_PID, PCOMP, RHO, SHELL_ALP, SHELL_A, SHELL_B, SHELL_D, SHELL_T, SHELL_T_MOD,         &
                                         TREF, ZS

      IMPLICIT NONE

      REAL(DOUBLE), INTENT(IN)        :: PCOMP_TM           ! Membrane thickness of PCOMP for equivalent PSHELL
      REAL(DOUBLE), INTENT(IN)        :: PCOMP_IB           ! Bending MOI of PCOMP for equivalent PSHELL
      REAL(DOUBLE), INTENT(IN)        :: PCOMP_TS           ! Transverse shear thickness of PCOMP for equivalent PSHELL

      END SUBROUTINE WRITE_PCOMP_EQUIV

   END INTERFACE

   END MODULE WRITE_PCOMP_EQUIV_Interface

