! ##################################################################################################################################

   MODULE SET_SPARSE_MAT_SYM_Interface

   INTERFACE

      SUBROUTINE SET_SPARSE_MAT_SYM


      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F06

      USE PARAMS, ONLY                :  SPARSTOR, SUPINFO

      USE SPARSE_MATRICES, ONLY       :  SYM_KGG    , SYM_MGG    , SYM_MGGC   , SYM_MGGE   , SYM_MGGS   , SYM_PG     , SYM_RMG    ,&
                                         SYM_KGGD

      USE SPARSE_MATRICES, ONLY       :  SYM_KNN    , SYM_KNM    , SYM_KMM    , SYM_KMN    ,                                       &
                                         SYM_KNND   , SYM_KNMD   , SYM_KMMD   , SYM_KMND   ,                                       &
                                         SYM_MNN    , SYM_MNM    , SYM_MMN    , SYM_MMM    ,                                       &
                                         SYM_PN     , SYM_PM     ,                                                                 &
                                         SYM_RMN    , SYM_RMM    , SYM_GMN    , SYM_GMNt   , SYM_HMN    , SYM_LMN

      USE SPARSE_MATRICES, ONLY       :  SYM_KFF    , SYM_KFS    , SYM_KSF    , SYM_KSS    , SYM_KFSe   , SYM_KSSe   ,             &
                                         SYM_KFFD   , SYM_KFSD   , SYM_KSFD   , SYM_KSSD   , SYM_KFSDe  , SYM_KSSDe  ,             &
                                         SYM_MFF    , SYM_MSF    , SYM_MFS    , SYM_MSS    ,                                       &
                                         SYM_PF     , SYM_PF_TMP , SYM_PFYS   , SYM_PFYS1  , SYM_PS     , SYM_QSYS

      USE SPARSE_MATRICES, ONLY       :  SYM_KAA    , SYM_KAO    , SYM_KOO    , SYM_KMSM   , SYM_KMSMn  ,                          &
                                         SYM_KAAD   , SYM_KAOD   , SYM_KOOD   ,                                                    &
                                         SYM_MAA    , SYM_MAO    , SYM_MOO    ,                                                    &
                                         SYM_PA     , SYM_PO     ,                                                                 &
                                         SYM_GOA    , SYM_GOAt

      USE SPARSE_MATRICES, ONLY       :  SYM_KLL    , SYM_KRL    , SYM_KRR    , SYM_KLLs   , SYM_KRRcb  , SYM_KRRcbn ,&
                                         SYM_KRRcbs , SYM_KXX    , SYM_KLLD   , SYM_KRLD   , SYM_KRRD   , SYM_KLLDs  ,             &
                                         SYM_MPF0   , SYM_MLL    , SYM_MLLn   , SYM_MRL    , SYM_MLR    , SYM_MRR    , SYM_MLLs   ,&
                                         SYM_MRN    , SYM_MRRcb  , SYM_MRRcbn , SYM_MXX    , SYM_MXXn   ,                          &
                                         SYM_PL     , SYM_PR     ,                                                                 &
                                         SYM_DLR    , SYM_DLRt   , SYM_IRR    , SYM_PHIXA  , SYM_IF_LTM , SYM_CG_LTM , SYM_PHIZL  ,&
                                         SYM_PHIZL1 , SYM_PHIZL2 , SYM_LTM    , SYM_PHIZL1t

      END SUBROUTINE SET_SPARSE_MAT_SYM

   END INTERFACE

   END MODULE SET_SPARSE_MAT_SYM_Interface

