! ##################################################################################################################################

   MODULE REDUCE_A_LR_Interface

   INTERFACE

      SUBROUTINE REDUCE_A_LR

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  ERR, F04, F06, SC1, WRT_ERR, WRT_LOG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, LINKNO,   NDOFA, NDOFG, NDOFL, NDOFR, NSUB, SOL_NAME,                       &
                                         NTERM_KAA , NTERM_KLL , NTERM_KRL , NTERM_KRR ,                                           &
                                         NTERM_KAAD, NTERM_KLLD, NTERM_KRLD, NTERM_KRRD,                                           &
                                         NTERM_MAA , NTERM_MLL , NTERM_MRL , NTERM_MRR ,                                           &
                                         NTERM_PA  , NTERM_PL  , NTERM_PR
      USE TIMDAT, ONLY                :  TSEC, YEAR, MONTH, DAY, HOUR, MINUTE, SEC, SFRAC, STIME       
      USE CONSTANTS_1, ONLY           :  ONE
      USE DOF_TABLES, ONLY            :  TDOFI
      USE RIGID_BODY_DISP_MATS, ONLY  :  RBGLOBAL_ASET, RBGLOBAL_GSET, RBGLOBAL_LSET
      USE PARAMS, ONLY                :  EQCHK_OUTPUT, MATSPARS, PRTSTIFD, PRTSTIFF, PRTMASS, PRTFOR
      USE NONLINEAR_PARAMS, ONLY      :  LOAD_ISTEP
      USE SUBR_BEGEND_LEVELS, ONLY    :  REDUCE_A_LR_BEGEND
      USE SPARSE_MATRICES, ONLY       :  I_KAA , J_KAA , KAA , I_KLL , J_KLL , KLL , I_KRL , J_KRL , KRL , I_KRR , J_KRR , KRR ,   &
                                         I_KAAD, J_KAAD, KAAD, I_KLLD, J_KLLD, KLLD, I_KRLD, J_KRLD, KRLD, I_KRRD, J_KRRD, KRRD,   &
                                         I_MAA , J_MAA , MAA , I_MLL , J_MLL , MLL , I_MRL , J_MRL , MRL , I_MRR , J_MRR , MRR ,   &
                                         I_PA  , J_PA  , PA  , I_PL  , J_PL  , PL  , I_PR  , J_PR  , PR
      USE SPARSE_MATRICES, ONLY       :  SYM_KLL
      USE OUTPUT4_MATRICES, ONLY      :  ACT_OU4_MYSTRAN_NAMES, NUM_OU4_REQUESTS
 
      IMPLICIT NONE
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = REDUCE_A_LR_BEGEND

      END SUBROUTINE REDUCE_A_LR

   END INTERFACE

   END MODULE REDUCE_A_LR_Interface

