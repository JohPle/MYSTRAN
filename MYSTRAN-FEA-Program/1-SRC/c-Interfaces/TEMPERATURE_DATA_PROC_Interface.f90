! ##################################################################################################################################

   MODULE TEMPERATURE_DATA_PROC_Interface

   INTERFACE

      SUBROUTINE TEMPERATURE_DATA_PROC

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR,     F04,     F06,     L1K
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG,                            LINK1K
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG,                            L1K_MSG
      USE SCONTR, ONLY                :  DATA_NAM_LEN, NELE, NGRID, NTDAT, NTSUB, NSUB, BLNK_SUB_NAM
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  TEMPERATURE_DATA_PROC_BEGEND
      USE MODEL_STUF, ONLY            :  CETEMP, CETEMP_ERR, CGTEMP, CGTEMP_ERR, ETEMP, GTEMP, TDATA, TPNT, GRID_ID, ESORT1, ETYPE,&
                                         SCNUM, SUBLOD, eid
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG
 
      IMPLICIT NONE
 
      CHARACTER(  1*BYTE)             :: NOTE              ! Used to indicate whether or not to print out a message
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = TEMPERATURE_DATA_PROC_BEGEND
 
      END SUBROUTINE TEMPERATURE_DATA_PROC

   END INTERFACE

   END MODULE TEMPERATURE_DATA_PROC_Interface

