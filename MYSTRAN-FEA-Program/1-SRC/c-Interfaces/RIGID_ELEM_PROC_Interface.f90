! ##################################################################################################################################

   MODULE RIGID_ELEM_PROC_Interface

   INTERFACE

      SUBROUTINE RIGID_ELEM_PROC

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  ERR, F04, F06, L1F, LINK1F, L1F_MSG, SC1, WRT_ERR, WRT_LOG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, NRECARD
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  RIGID_ELEM_PROC_BEGEND

      IMPLICIT NONE
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = RIGID_ELEM_PROC_BEGEND
 
      END SUBROUTINE RIGID_ELEM_PROC

   END INTERFACE

   END MODULE RIGID_ELEM_PROC_Interface

