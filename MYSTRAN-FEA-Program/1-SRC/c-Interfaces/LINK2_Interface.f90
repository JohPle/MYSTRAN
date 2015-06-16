! ##################################################################################################################################

   MODULE LINK2_Interface

   INTERFACE

      SUBROUTINE LINK2

  
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE

      USE IOUNT1, ONLY                :  WRT_LOG, ERR, F04, F06, L1A, ERRSTAT, SC1
      USE IOUNT1, ONLY                :  L2G,     L2H    , L2I   ,  L2O    , L2P   ,  L2Q
      USE IOUNT1, ONLY                :  LINK2G,  LINK2H , LINK2I , LINK2O , LINK2P , LINK2Q 
      USE IOUNT1, ONLY                :  L2G_MSG, L2H_MSG, L2I_MSG, L2O_MSG, L2P_MSG, L2Q_MSG

      USE SCONTR, ONLY                :  BLNK_SUB_NAM, COMM, FATAL_ERR, LINKNO,                                                    &
                                         NDOFG, NDOFM, NDOFN, NDOFS, NDOFSA, NDOFF, NDOFO, NDOFA, NDOFL, NDOFR,                    &
                                         NTERM_KGG , NTERM_KNN , NTERM_KNM , NTERM_KMM ,                                           &
                                         NTERM_KFF , NTERM_KFS , NTERM_KSS ,                                                       &
                                         NTERM_KAA , NTERM_KAO , NTERM_KOO ,                                                       &
                                         NTERM_KLL , NTERM_KRL , NTERM_KRR ,                                                       &
                                         NTERM_KGGD, NTERM_KNND, NTERM_KNMD, NTERM_KMMD,                                           &
                                         NTERM_KFFD, NTERM_KFSD, NTERM_KSSD,                                                       &
                                         NTERM_KAAD, NTERM_KAOD, NTERM_KOOD,                                                       &
                                         NTERM_KLLD, NTERM_KRLD, NTERM_KRRD,                                                       &
                                                     NTERM_MAA , NTERM_MLL ,                                                       &
                                                     NTERM_PA  , NTERM_PL  ,                                                       &
                                         NTERM_RMG , SOL_NAME  , WARN_ERR

      USE TIMDAT, ONLY                :  HOUR, MINUTE, SEC, SFRAC
      USE CONSTANTS_1, ONLY           :  ONE
      USE RIGID_BODY_DISP_MATS, ONLY  :  RBGLOBAL_GSET
      USE PARAMS, ONLY                :  CUSERIN, CUSERIN_XSET, EQCHK_OUTPUT, EQCHK_NORM, PRTSTIFF, PRTSTIFD, PRTMASS, PRTFOR,     &
                                         SUPINFO, SUPWARN
      USE NONLINEAR_PARAMS, ONLY      :  LOAD_ISTEP
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG

      USE SPARSE_MATRICES, ONLY       :  I_KGG, J_KGG, KGG, I_KGGD, J_KGGD, KGGD,                                                  &
                                         I_KAA, J_KAA, KAA, I_MAA, J_MAA, MAA, I_PA, J_PA , PA,                                    &
                                         I_KLL, J_KLL, KLL, I_MLL, J_MLL, MLL, I_PL, J_PL , PL
      USE SPARSE_MATRICES, ONLY       :  SYM_KGG
      USE OUTPUT4_MATRICES, ONLY      :  NUM_OU4_REQUESTS
      IMPLICIT NONE
 
      INTEGER(LONG)                   :: NROWS             ! Value of DOF size to pass to subr WRITE_USERIN_BD_CARDS
      INTEGER(LONG), PARAMETER        :: P_LINKNO  = 1     ! Prior LINK no's that should have run before this LINK can execute
      
      END SUBROUTINE LINK2

   END INTERFACE

   END MODULE LINK2_Interface

