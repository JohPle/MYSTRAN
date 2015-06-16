! ##################################################################################################################################

      SUBROUTINE WRITE_GRID_COORDS

! Writes grid coordinates in basic coords to the F06 file if user has Bulk Data PARAM PRTBASIC defined

      USE PENTIUM_II_KIND, ONLY       :  LONG
      USE IOUNT1, ONLY                :  F06
      USE SCONTR, ONLY                :  NGRID
      USE MODEL_STUF, ONLY            :  GRID, RGRID

      IMPLICIT NONE

      INTEGER(LONG)                   :: I, J                   ! DO loop indices

! **********************************************************************************************************************************
      WRITE(F06,1002)
      WRITE(F06,1003)
      DO I = 1,NGRID
         WRITE(F06,1004) GRID(I,1),(RGRID(I,J),J = 1,3)
      ENDDO
      WRITE(F06,*)   
      WRITE(F06,*)

! **********************************************************************************************************************************
 1002 FORMAT(//,48X,'GRID POINT COORDINATES IN BASIC COORDINATE SYSTEM')

 1003 FORMAT(/,36X,'GRID ID           X                 Y                 Z')

 1004 FORMAT(35X,I8,1X,1ES17.6,1X,1ES17.6,1X,1ES17.6)
 
! **********************************************************************************************************************************

      END SUBROUTINE WRITE_GRID_COORDS

