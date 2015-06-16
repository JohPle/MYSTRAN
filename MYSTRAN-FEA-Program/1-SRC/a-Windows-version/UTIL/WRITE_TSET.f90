! #################################################################################################################################
      SUBROUTINE WRITE_TSET

! Writes the NGRID x 6 TSET degree of freedom table to the F06 file based on user supplied Bulk Data Param PRTTSET

      USE PENTIUM_II_KIND, ONLY       :  LONG
      USE IOUNT1, ONLY                :  F04, F06, WRT_LOG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, MTSET, NGRID
      USE TIMDAT, ONLY                :  TSEC
      USE MODEL_STUF, ONLY            :  GRID, GRID_SEQ, INV_GRID_SEQ
      USE DOF_TABLES, ONLY            :  TSET
      USE SUBR_BEGEND_LEVELS, ONLY    :  WRITE_TSET_BEGEND

      USE WRITE_TSET_USE_IFs

      IMPLICIT NONE

      CHARACTER(LEN=LEN(BLNK_SUB_NAM)):: SUBR_NAME = 'WRITE_TSET'

      INTEGER(LONG)                   :: I,J               ! DO loop indices
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = WRITE_TSET_BEGEND

! **********************************************************************************************************************************
      IF (WRT_LOG >= SUBR_BEGEND) THEN
         CALL OURTIM
         WRITE(F04,9001) SUBR_NAME,TSEC
 9001    FORMAT(1X,A,' BEGN ',F10.3)
      ENDIF

! *********************************************************************************************************************************
      WRITE(F06,56)
      WRITE(F06,57)
      DO I=1,NGRID
         WRITE(F06,58) GRID(I,1), GRID_SEQ(I), INV_GRID_SEQ(I), (TSET(I,J),J = 1,MTSET)
      ENDDO   
      WRITE(F06,59)

! **********************************************************************************************************************************
      IF (WRT_LOG >= SUBR_BEGEND) THEN
         CALL OURTIM
         WRITE(F04,9002) SUBR_NAME,TSEC
 9002    FORMAT(1X,A,' END  ',F10.3)
      ENDIF

      RETURN

! *********************************************************************************************************************************
   56 FORMAT(54X,'DEGREE OF FREEDOM SET TABLE (TSET)',/)

   57 FORMAT(28X,'GRID    GRID_SEQ   INV_GRID_SEQ*      T1       T2       T3       R1       R2       R3',/)

   58 FORMAT(24X,I8,I12,I15,6(7X,A2))

   59 FORMAT(1X,/,29X,'* INV_GRID_SEQ = J meams that the J-th entry under GRID is sequenced GRID_SEQ(J)',//)

! *********************************************************************************************************************************

      END SUBROUTINE WRITE_TSET
