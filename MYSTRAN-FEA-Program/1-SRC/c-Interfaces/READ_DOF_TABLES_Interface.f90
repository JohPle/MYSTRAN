! ##################################################################################################################################

   MODULE READ_DOF_TABLES_Interface

   INTERFACE

      SUBROUTINE READ_DOF_TABLES


      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  FILE_NAM_MAXLEN, WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06, L1C, LINK1C, L1C_MSG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, DATA_NAM_LEN, MTDOF, NDOFG, NGRID
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  READ_DOF_TABLES_BEGEND
      USE DOF_TABLES, ONLY            :  TDOFI, TDOF, TSET

      IMPLICIT NONE

      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = READ_DOF_TABLES_BEGEND

      END SUBROUTINE READ_DOF_TABLES

   END INTERFACE

   END MODULE READ_DOF_TABLES_Interface

