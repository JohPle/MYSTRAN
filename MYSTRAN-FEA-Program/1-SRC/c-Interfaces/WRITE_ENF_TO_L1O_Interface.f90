! ##################################################################################################################################

   MODULE WRITE_ENF_TO_L1O_Interface

   INTERFACE

      SUBROUTINE WRITE_ENF_TO_L1O

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  ENF, ENFFIL, ENFSTAT, ENF_MSG, ERR, F04, F06, L1O, LINK1O, L1OSTAT, L1O_MSG, WRT_LOG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, NDOFSG, NGRID, NSPC, NUM_SPC_RECORDS, NUM_SPC1_RECORDS, WARN_ERR
      USE TIMDAT, ONLY                :  TSEC
      USE PARAMS, ONLY                :  SUPWARN
      USE DOF_TABLES, ONLY            :  TSET_CHR_LEN, TSET
      USE MODEL_STUF, ONLY            :  SPCSET
      USE SUBR_BEGEND_LEVELS, ONLY    :  WRITE_ENF_TO_L1O_BEGEND
 
      IMPLICIT NONE
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = WRITE_ENF_TO_L1O_BEGEND

      END SUBROUTINE WRITE_ENF_TO_L1O

   END INTERFACE

   END MODULE WRITE_ENF_TO_L1O_Interface

