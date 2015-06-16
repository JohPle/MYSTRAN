! ##################################################################################################################################

   MODULE BD_PARAM_Interface

   INTERFACE

      SUBROUTINE BD_PARAM ( CARD )

  
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06

      USE SCONTR, ONLY                :  BLNK_SUB_NAM, ECHO, FATAL_ERR, IERRFL, JCARD_LEN, JF, MEPSIL, MPBARLU, NUM_USETSTR,       &
                                         WARN_ERR
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  BD_PARAM_BEGEND
      USE CONSTANTS_1, ONLY           :  ZERO, ONE
      USE MACHINE_PARAMS, ONLY        :  MACH_PREC
      USE DOF_TABLES, ONLY            :  TSET_CHR_LEN

      USE PARAMS, ONLY                :  ARP_TOL         , ART_KED         , ART_ROT_KED     , ART_TRAN_KED    ,                   &
                                         ART_MASS        , ART_ROT_MASS    , ART_TRAN_MASS   , AUTOSPC         , AUTOSPC_NSET    , &
                                         AUTOSPC_RAT     , AUTOSPC_INFO    , AUTOSPC_SPCF    , BAILOUT         ,                   &
                                         CBMIN3          , CBMIN4          , CBMIN4T         , CHKGRDS         ,                   &
                                         CUSERIN         , CUSERIN_EID     , CUSERIN_IN4     , CUSERIN_PID     , CUSERIN_SPNT_ID , &
                                         CUSERIN_XSET    , CUSERIN_COMPTYP ,                                                       &
                                         DARPACK         , EIGESTL         , EIGNORM2        , ELFORCEN        , EPSERR          , &
                                         EQCHK_REF_GRID  , EQCHK_NORM      , EQCHK_OUTPUT    , EQCHK_TINY      ,                   &
                                         EPSIL           , EMP0_PAUSE      , ESP0_PAUSE      , F06_COL_START   ,                   &
                                         GRDPNT          , GRIDSEQ         , HEXAXIS         ,                                     &
                                         IORQ1M          , IORQ1S          , IORQ1B          , IORQ2B          , IORQ2T          , &
                                         ITMAX           , KLLRAT          , KOORAT          , LANCMETH        , MATSPARS        , &
                                         MEMAFAC         , MIN4TRED        , MXALLOCA        , MAXRATIO        ,                   &
                                         MEFMCORD        , MEFMLOC         , MEFMGRID        ,                                     &
                                         MKLFAC21        , MKLFAC31        , MKLFAC41        , MKLFAC42        ,                   &
                                         MKLFAC61        , MKLFAC62        , MKLFAC63        , MKLMATST        , MKLSTATS        , &
                                         MPFOUT          , MXITERI         , MXITERL         , OTMSKIP         , POST            , &
                                         PBARLDEC        , PBARLSHR        , PCOMPEQ         , PCHSPC1         , PCMPTSTM        , &
                                         PRTBASIC        , PRTCONN         , PRTCORD         , PRTDISP         , PRTDLR          , &
                                         PRTDOF          , PRTFOR          , PRTHMN          , PRTGMN          , PRTGOA          , &
                                         PRTCGLTM        , PRTPHIZL        , PRTIFLTM        , PRTKXX          , PRTMXX          , &
                                         PRTOU4          , PRTPHIXA        , PRTMASS         , PRTMASSD        , PRTRMG          , &
                                         PRTSCP          , PRTPSET         , PRTTSET         , PRTUSET         ,                   &
                                         PRTSTIFD        , PRTSTIFF        , PRTUO0          ,                                     &
                                         PRTYS           , PRTQSYS         ,                                                       &
                                         Q4SURFIT        , QUADAXIS        , QUAD4TYP        , RCONDK          , RELINK3         , &
                                         SEQPRT          , SEQQUIT         , SETLKTM         , SETLKTK         , SHRFXFAC        , &
                                         SKIPMKGG        , SOLLIB          ,                                                       &
                                         SPC1QUIT        , SORT_MAX        , SPC1SID         , SPARSTOR        , STR_CID         , &
                                         SUPINFO         , SUPWARN                                                               , &
                                         THRESHK         , THRESHK_LAP     , TINY            ,                                     &
                                         TSTM_DEF        , USR_JCT         , USR_LTERM_KGG   , USR_LTERM_MGG   , WINAMEM         , &
                                         WTMASS
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: CARD              ! A Bulk Data card
      CHARACTER(15*BYTE)              :: PARNAM            ! The name of a parameter
 
      INTEGER(LONG)                   :: LOWER             ! Lower allowable value for an integer parameter
      INTEGER(LONG)                   :: UPPER             ! Upper allowable value for an integer parameter
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = BD_PARAM_BEGEND
  
      END SUBROUTINE BD_PARAM

   END INTERFACE

   END MODULE BD_PARAM_Interface

