! ##################################################################################################################################

   MODULE WRITE_DOF_TABLES_Interface

   INTERFACE

      SUBROUTINE WRITE_DOF_TABLES


      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_LOG, F04, L1C, LINK1C, L1C_MSG
      USE SCONTR, ONLY                :  DATA_NAM_LEN, MTDOF, NDOFG, NGRID, BLNK_SUB_NAM
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  WRITE_DOF_TABLES_BEGEND
      USE DOF_TABLES, ONLY            :  TDOFI, TDOF, TSET

      IMPLICIT NONE

      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = WRITE_DOF_TABLES_BEGEND

      END SUBROUTINE WRITE_DOF_TABLES

   END INTERFACE

   END MODULE WRITE_DOF_TABLES_Interface

