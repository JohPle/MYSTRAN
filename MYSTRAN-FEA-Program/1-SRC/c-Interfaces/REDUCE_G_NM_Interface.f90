! ##################################################################################################################################

   MODULE REDUCE_G_NM_Interface

   INTERFACE

      SUBROUTINE REDUCE_G_NM

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  ERR, F04, F06, L1C, LINK1C, L1C_MSG, SC1, WRT_ERR, WRT_LOG

      USE SCONTR, ONLY                :  LINKNO    , NDOFG, NDOFN, NDOFM, NGRID, NSUB,                                             &
                                         NTERM_KGG , NTERM_KNN , NTERM_KNM , NTERM_KMM ,                                           &
                                         NTERM_KGGD, NTERM_KNND, NTERM_KNMD, NTERM_KMMD,                                           &
                                         NTERM_MGG , NTERM_MNN , NTERM_MNM , NTERM_MMM , NTERM_PG, NTERM_PN, NTERM_PM ,            &
                                         NTERM_GMN , NTERM_RMN , NTERM_RMM ,                                                       &
                                         PROG_NAME , SOL_NAME, BLNK_SUB_NAM
      USE TIMDAT, ONLY                :  HOUR, MINUTE, SEC, SFRAC, TSEC
      USE PARAMS, ONLY                :  AUTOSPC, AUTOSPC_NSET, EQCHK_OUTPUT, MATSPARS, PRTSTIFD, PRTSTIFF, PRTMASS, PRTFOR, SUPINFO
      USE NONLINEAR_PARAMS, ONLY      :  LOAD_ISTEP
      USE DOF_TABLES, ONLY            :  TDOF, TDOFI
      USE MODEL_STUF, ONLY            :  GRID_ID
      USE RIGID_BODY_DISP_MATS, ONLY  :  RBGLOBAL_GSET, RBGLOBAL_NSET
      USE SUBR_BEGEND_LEVELS, ONLY    :  REDUCE_G_NM_BEGEND
      USE SPARSE_MATRICES, ONLY       :  I_KGG , J_KGG , KGG , I_KGGD, J_KGGD, KGGD,                                               &
                                         I_KNN , J_KNN , KNN , I_KNM , J_KNM , KNM , I_KMM , J_KMM , KMM ,                         &
                                         I_KNND, J_KNND, KNND, I_KNMD, J_KNMD, KNMD, I_KMMD, J_KMMD, KMMD,                         &
                                         I_MGG , J_MGG , MGG , I_MNN , J_MNN , MNN , I_MNM , J_MNM , MNM , I_MMM , J_MMM , MMM ,   &
                                         I_PG  , J_PG  , PG  , I_PN  , J_PN  , PN  , I_PM  , J_PM  , PM  ,                         &
                                         I_RMG , J_RMG , RMG
                                         
      USE SPARSE_MATRICES, ONLY       :  SYM_KNN
      USE OUTPUT4_MATRICES, ONLY      :  ACT_OU4_MYSTRAN_NAMES, NUM_OU4_REQUESTS
      USE SCRATCH_MATRICES
 
      IMPLICIT NONE
               
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = REDUCE_G_NM_BEGEND

      END SUBROUTINE REDUCE_G_NM

   END INTERFACE

   END MODULE REDUCE_G_NM_Interface

