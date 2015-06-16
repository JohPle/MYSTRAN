! ##################################################################################################################################

   MODULE REDUCE_F_AO_Interface

   INTERFACE

      SUBROUTINE REDUCE_F_AO

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  ERR, F04, F06, SC1, WRT_ERR, WRT_LOG

      USE SCONTR, ONLY                :  BLNK_SUB_NAM, LINKNO, KOO_SDIA, NDOFF, NDOFG, NDOFA, NDOFO, NSUB, SOL_NAME,               &
                                         NTERM_KFF , NTERM_KAA , NTERM_KAO , NTERM_KOO ,                                           &
                                         NTERM_KFFD, NTERM_KAAD, NTERM_KAOD, NTERM_KOOD,                                           &
                                         NTERM_MFF , NTERM_MAA , NTERM_MAO , NTERM_MOO ,                                           &
                                         NTERM_PF  , NTERM_PA  , NTERM_PO  , NTERM_GOA
      USE PARAMS, ONLY                :  EQCHK_OUTPUT, MATSPARS, PRTSTIFD, PRTSTIFF, PRTMASS, PRTFOR
      USE NONLINEAR_PARAMS, ONLY      :  LOAD_ISTEP
      USE TIMDAT, ONLY                :  HOUR, MINUTE, SEC, SFRAC, TSEC
      USE DOF_TABLES, ONLY            :  TDOFI
      USE RIGID_BODY_DISP_MATS, ONLY  :  RBGLOBAL_GSET, RBGLOBAL_FSET, RBGLOBAL_ASET
      USE SUBR_BEGEND_LEVELS, ONLY    :  REDUCE_F_AO_BEGEND
      USE SPARSE_MATRICES, ONLY       :  I_KFF , J_KFF , KFF , I_KAA , J_KAA , KAA , I_KAO , J_KAO , KAO , I_KOO , J_KOO , KOO ,   &
                                         I_KFFD, J_KFFD, KFFD, I_KAAD, J_KAAD, KAAD, I_KAOD, J_KAOD, KAOD, I_KOOD, J_KOOD, KOOD,   &
                                         I_MFF , J_MFF , MFF , I_MAA , J_MAA , MAA , I_MAO , J_MAO , MAO , I_MOO , J_MOO , MOO ,   &
                                         I_PF  , J_PF  , PF  , I_PA  , J_PA  , PA  , I_PO  , J_PO  , PO
      USE SPARSE_MATRICES, ONLY       :  SYM_KAA
      USE SCRATCH_MATRICES
      USE MKL_DSS
 
      IMPLICIT NONE
               
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = REDUCE_F_AO_BEGEND

      END SUBROUTINE REDUCE_F_AO

   END INTERFACE

   END MODULE REDUCE_F_AO_Interface

