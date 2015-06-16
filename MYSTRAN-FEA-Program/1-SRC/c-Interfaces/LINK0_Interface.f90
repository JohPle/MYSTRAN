! ##################################################################################################################################

   MODULE LINK0_Interface

   INTERFACE

      SUBROUTINE LINK0

  
      USE PENTIUM_II_KIND, ONLY       :  BYTE, SHORT, LONG, SINGLE, DOUBLE, QUAD

      USE IOUNT1, ONLY                :  MOU4, SC1, WRT_BUG, WRT_LOG
      USE IOUNT1, ONLY                :  ANS, BUG, ERR, F06, IN1, L1B, L1C, L1D, L1F, L1G, L1H, L1I, L1K, L1L, L1N, L1O, L1P, L1Q, &
                                         L1S, L1T, L1U, L1V , L1W, L1X, L1Y, OU4, SEQ

      USE IOUNT1, ONLY                :  ANSFIL, INFILE, LINK1B, LINK1C, LINK1D, LINK1F, LINK1H, LINK1I, LINK1K, LINK1L, LINK1N,   &
                                         LINK1O, LINK1P, LINK1Q, LINK1S, LINK1T, LINK1U, LINK1V, LINK1W, LINK1X, LINK1Y, OU4FIL,   &
                                         SEQFIL

      USE IOUNT1, ONLY                :  L1LSTAT, L1NSTAT, L1OSTAT, L1QSTAT, L1YSTAT

      USE IOUNT1, ONLY                :  L1B_MSG, L1C_MSG, L1D_MSG, L1F_MSG, L1H_MSG, L1I_MSG, L1K_MSG, L1L_MSG, L1N_MSG, L1O_MSG, &
                                         L1P_MSG, L1Q_MSG, L1S_MSG, L1T_MSG, L1U_MSG, L1V_MSG, L1W_MSG, L1X_MSG, L1Y_MSG, OU4_MSG, &
                                         SEQ_MSG

      USE SCONTR, ONLY                :  BANDIT_ERR, CHKPNT, COMM, DEMO_GRID_LIMIT, ENFORCED, EPSIL1_SET, FATAL_ERR, IBIT, KMAT_BW,&
                                         KMAT_DEN, LGRID, LINEAR_VALID_KEY, LINKNO, MBUG, MELDTS, NAOCARD, NCUSERIN,               &
                                         NDOFG, NDOFR, NDOFSE, NELE, NFORCE, NGRAV, NGRID, NMPC, NONLIN_VALID_KEY, NPCARD,         &
                                         NPUSERIN, NRFORCE, NRIGEL, NSLOAD, NSPC, NSPC1, NTCARD, NTERM_KGG, NUM_PARTVEC_RECORDS,   &
                                         NUM_SUPT_CARDS, NUM_USET_RECORDS, PROG_NAME, PROTECTED, RESTART, SOL_NAME, UNLOCK,        &
                                         UNLOCK_KEY_NUM, USERS_UNLOCK_KEY, WARN_ERR 

      USE SCONTR, ONLY                :  ELDT_BUG_DAT1_BIT, ELDT_BUG_DAT2_BIT, ELDT_BUG_MASS_BIT, ELDT_BUG_P_T_BIT ,               &
                                         ELDT_BUG_SE_BIT  , ELDT_BUG_KE_BIT  , ELDT_BUG_SHPJ_BIT, ELDT_BUG_BMAT_BIT,               &
                                         ELDT_BUG_BCHK_BIT, ELDT_F21_MASS_BIT, ELDT_F22_P_T_BIT , ELDT_F23_KE_BIT  ,               &
                                         ELDT_F24_SE_BIT
      use scontr, only                :  ndofo
      USE TIMDAT, ONLY                :  YEAR, MONTH, DAY, HOUR, MINUTE, SEC, SFRAC, STIME, TSEC
      USE DOF_TABLES, ONLY            :  TDOFI
      USE PARAMS, ONLY                :  CHKGRDS, EPSIL, EQCHK_OUTPUT, GRDPNT, GRIDSEQ, MEFMGRID, MEFMLOC, PRTCONN,                &
                                         PRTBASIC, PRTCORD, PRTDOF, PRTTSET, PRTSTIFD, PRTSTIFF, SETLKTK, SETLKTM, SOLLIB,         &
                                         SUPINFO, SUPWARN, WTMASS
      USE NONLINEAR_PARAMS, ONLY      :  LOAD_ISTEP
      USE MACHINE_PARAMS, ONLY        :  MACH_PREC
      USE MODEL_STUF, ONLY            :  ANY_GPFO_OUTPUT, EIG_METH, ELDT, ETYPE, MEFFMASS_CALC, NUM_EMG_FATAL_ERRS, PLY_NUM, OELDT
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG
      USE BANDIT_MODULE
      USE SP_ENVIRON_VARS, ONLY       :  ALLOWABLE_PROTECTED_SOLNS
      USE RIGID_BODY_DISP_MATS, ONLY  :  RBGLOBAL_GSET, TR6_CG, TR6_MEFM, TR6_0            
      USE SPARSE_MATRICES, ONLY       :  SYM_KGG, I_KGG, J_KGG, KGG
      USE KEY_VALUES, ONLY            :  NUM_KEYS, VALID_MYSTRAN_KEYS, VALID_LINEAR_KEYS, VALID_NONLIN_KEYS
      USE OUTPUT4_MATRICES, ONLY      :  NUM_OU4_REQUESTS, OU4_FILE_UNITS
  
      IMPLICIT NONE

                                                           ! Array used to tell subr ELDT_PROC_FOR_RESTART which ELDT to calc

      END SUBROUTINE LINK0

   END INTERFACE

   END MODULE LINK0_Interface

