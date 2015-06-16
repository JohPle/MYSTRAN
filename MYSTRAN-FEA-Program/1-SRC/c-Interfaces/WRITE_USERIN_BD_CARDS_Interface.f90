! ##################################################################################################################################

   MODULE WRITE_USERIN_BD_CARDS_Interface

   INTERFACE

      SUBROUTINE WRITE_USERIN_BD_CARDS ( NROWS, X_SET )


      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG
      USE IOUNT1, ONLY                :  ERR, F04, F06, F06FIL, MOU4, OU4, OU4FIL
      USE SCONTR, ONLY                :  JCARD_LEN, NCORD, NDOFG, NGRID, NVEC, WARN_ERR, BLNK_SUB_NAM
      USE TIMDAT, ONLY                :  START_YEAR, START_MONTH, START_DAY, START_HOUR, START_MINUTE, START_SEC, START_SFRAC
      USE DOF_TABLES, ONLY            :  TDOFI
      USE PARAMS, ONLY                :  CUSERIN_EID, CUSERIN_IN4, CUSERIN_PID, CUSERIN_SPNT_ID, CUSERIN_XSET,                     &
                                         CUSERIN_COMPTYP, SUPWARN
      USE MODEL_STUF, ONLY            :  CORD, RCORD, GRID_ID, GRID, RGRID 
      USE OUTPUT4_MATRICES, ONLY      :  ACT_OU4_OUTPUT_NAMES, NUM_OU4_REQUESTS, OU4_FILE_UNITS
      IMPLICIT NONE

      INTEGER(LONG), INTENT(IN)       :: NROWS                ! Size that is at least as large as any of the arrays below need

      CHARACTER(LEN=LEN(BLNK_SUB_NAM)):: SUBR_NAME = 'WRITE_USERIN_BD_ENTRIES'
      CHARACTER(LEN=*), INTENT(IN)    :: X_SET                ! Displ set that the USERIN element is connected to
      CHARACTER( 1*BYTE)              :: COMPS(6)             ! Array of displ comps for 1 grid in the USERIN_GRIDS array

      CHARACTER( 8*BYTE)              :: CORD_MSG = '"CID0"  '! Field 6 of CUSERIN and field 3 of CORD2R to indicate to user that
      CHARACTER(LEN=JCARD_LEN)        :: ICARD(NROWS,9)       ! Char array for fields 2-9 of CUSERIN or PUSERIN B.D. entries
      CHARACTER( 8*BYTE)              :: USERIN_COMPS(NROWS)  ! Char array of all of the displ comps for 1 USERIN_GRID

      INTEGER(LONG)                   :: FIRST                ! First of the USERIN_CORDS that is nonzero
      INTEGER(LONG)                   :: NUM_USERIN_GRIDS     ! Number of different R set grids
      INTEGER(LONG)                   :: USERIN_CORDS(NROWS,2)! Array of global coord ID's from X_SET_GRIDS (act, int ID's)
      INTEGER(LONG)                   :: USERIN_GRIDS(NROWS)  ! Array of different grid values from X_SET_GRIDS

      END SUBROUTINE WRITE_USERIN_BD_CARDS

   END INTERFACE

   END MODULE WRITE_USERIN_BD_CARDS_Interface

