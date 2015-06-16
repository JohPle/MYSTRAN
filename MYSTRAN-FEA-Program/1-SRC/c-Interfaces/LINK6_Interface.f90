! ##################################################################################################################################

   MODULE LINK6_Interface

   INTERFACE

      SUBROUTINE LINK6

  
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE

      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06, ERRSTAT, MOU4, SC1,                             &
                                         L2I    , L2K    , L2L    , L2M    , L2N    , L3A    ,OU4,                        &
                                         LINK2I , LINK2K , LINK2L , LINK2M , LINK2N , LINK3A ,OU4FIL,                     &
                                         L2I_MSG, L2K_MSG, L2L_MSG, L2M_MSG, L2N_MSG, L3A_MSG,                            &
                                         L2ISTAT, L2KSTAT, L2LSTAT, L2MSTAT, L2NSTAT, OU4STAT, OU4_MSG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, COMM, FATAL_ERR, LINKNO, NDOFA, NDOFL, NDOFR, NUM_CB_DOFS, NUM_EIGENS, NVEC,&
                                         WARN_ERR

      USE SCONTR, ONLY                :  NTERM_CG_LTM, NTERM_DLR   , NTERM_PHIZL , NTERM_IF_LTM,                                   &
                                         NTERM_IRR   , NTERM_KLL   , NTERM_KRL   , NTERM_KRR   , NTERM_KRRcb ,                     &
                                         NTERM_KXX   , NTERM_MLL   , NTERM_MRL   , NTERM_MRN   , NTERM_MRR   , NTERM_MRRcb  ,      &
                                         NTERM_MXX   , NTERM_PHIXA  

      USE CONSTANTS_1, ONLY           :  ONE
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG
      USE PARAMS, ONLY                :  CUSERIN, CUSERIN_XSET, PRTPHIXA, SUPWARN
      USE TIMDAT, ONLY                :  HOUR, MINUTE, SEC, SFRAC
      USE MODEL_STUF, ONLY            :  MEFFMASS_CALC, MPFACTOR_CALC
      USE EIGEN_MATRICES_1, ONLY      :  GEN_MASS, EIGEN_VAL, EIGEN_VEC
      USE OUTPUT4_MATRICES
      USE LAPACK_DPB_MATRICES, ONLY   :  ABAND
      USE SPARSE_MATRICES, ONLY       :  I_CG_LTM, J_CG_LTM, CG_LTM, I_DLR   , J_DLR   , DLR   , I_PHIZL , J_PHIZL , PHIZL ,       &
                                         I_IF_LTM, J_IF_LTM, IF_LTM, I_IRR   , J_IRR   , IRR   , I_KLL   , J_KLL   , KLL   ,       &
                                         I_KRL   , J_KRL   , KRL   , I_KRR   , J_KRR   , KRR   ,       &
                                         I_KRRcb , J_KRRcb , KRRcb , I_KXX   , J_KXX   , KXX   ,                                   &
                                         I_MLL   , J_MLL   , MLL   , I_MRL   , J_MRL   , MRL   , I_MRN   , J_MRN   , MRN   ,       &
                                         I_MRRcb , J_MRRcb , MRRcb , I_MRR   , J_MRR   , MRR   , I_MXX   , J_MXX   , MXX   ,       &
                                         I_PHIXA , J_PHIXA , PHIXA

      IMPLICIT NONE
 
      INTEGER(LONG), PARAMETER        :: P_LINKNO  = 4       ! Prior LINK no's that should have run before this LINK can execute
      
      END SUBROUTINE LINK6

   END INTERFACE

   END MODULE LINK6_Interface

