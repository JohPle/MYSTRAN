! ##################################################################################################################################

   MODULE LINK1_Interface

   INTERFACE

      SUBROUTINE LINK1

  
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG

      USE IOUNT1, ONLY                :  WRT_LOG

      USE IOUNT1, ONLY                :  ERR, F04, F06, F21, F22, F23, F24, L1C, L1F, L1I, L1G, L1J, L1P, L1S, L1U, L1W, SC1
                                         
      USE IOUNT1, ONLY                :  F21FIL, F22FIL, F23FIL, F24FIL, LINK1C, LINK1F, LINK1I, LINK1G, LINK1J, LINK1P, LINK1S,   &
                                         LINK1U, LINK1W

      USE IOUNT1, ONLY                :  L1FSTAT, L1ISTAT, L1PSTAT, L1SSTAT, L1USTAT, L1WSTAT

      USE IOUNT1, ONLY                :  F21_MSG, F22_MSG, F23_MSG, F24_MSG, L1F_MSG, L1G_MSG, L1I_MSG, L1J_MSG, L1P_MSG, L1S_MSG, &
                                         L1U_MSG, L1W_MSG

      USE SCONTR, ONLY                :  BLNK_SUB_NAM, COMM, ELDT_F21_MASS_BIT, ELDT_F22_P_T_BIT, ELDT_F23_KE_BIT, ELDT_F24_SE_BIT,&
                                         FATAL_ERR, IBIT, LINKNO, LTERM_KGG, LTERM_KGGD, LTERM_MGGE, NDOFM, NFORCE,                &
                                         NGRAV, NMPC, NPLOAD, NRFORCE, NRIGEL, NSLOAD, NTERM_RMG, NTSUB, RESTART, SOL_NAME

      USE TIMDAT, ONLY                :  YEAR, MONTH, DAY, HOUR, MINUTE, SEC, SFRAC, STIME, TSEC
      USE DOF_TABLES, ONLY            :  TDOFI

      USE PARAMS, ONLY                :  EMP0_PAUSE, ESP0_PAUSE, SETLKTK, SKIPMKGG
      USE NONLINEAR_PARAMS, ONLY      :  LOAD_ISTEP
      USE MODEL_STUF, ONLY            :  OELDT
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG
  
      IMPLICIT NONE

      CHARACTER( 1*BYTE)              :: RESPONSE          ! User response ('Y' or 'N') to a screen prompt
     
      INTEGER(LONG), PARAMETER        :: P_LINKNO    = 0   ! Prior LINK no's that should have run before this LINK can execute

      END SUBROUTINE LINK1

   END INTERFACE

   END MODULE LINK1_Interface

