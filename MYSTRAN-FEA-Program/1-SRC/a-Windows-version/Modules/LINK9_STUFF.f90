! ##################################################################################################################################

      MODULE LINK9_STUFF
  
! Grid point and element solution variables for data recovery LINK9

      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE

      IMPLICIT NONE
  
      SAVE

      CHARACTER( 1*BYTE), ALLOCATABLE :: MSPRNT(:,:)           ! Flags for whether to print margins of safety for ROD, BAR
      CHARACTER( 4*BYTE), ALLOCATABLE :: FTNAME(:)             ! Stress failure index name output with stresses/strains
  
      INTEGER(LONG)                   :: MAXREQ                ! Max number of rows needed for array OGEL

      INTEGER(LONG)     , ALLOCATABLE :: GID_OUT_ARRAY(:,:)    ! Array of integer grid no's for some output in LINK9

      INTEGER(LONG)     , ALLOCATABLE :: EID_OUT_ARRAY(:,:)    ! Array of elem no's (col 1) and num of plies (col 2) for that elem
!                                                                that are printed with certain outputs IN LINK9 

      INTEGER(LONG)     , ALLOCATABLE :: POLY_FIT_ERR_INDEX(:)! Index num for POLY_FIT_ERR (i.e. which of the 1 through 9 stress
!                                                                or strain values has the largest error in polynomial fit


      REAL(DOUBLE)      , ALLOCATABLE :: OGEL(:,:)             ! Master array for holding outputs in LINK9 until they are printed

      REAL(DOUBLE)      , ALLOCATABLE :: POLY_FIT_ERR(:)       ! Array of polynom fit errors for elems that extrapolate stress or
!                                                                strain values from one set of output points to another

      END MODULE LINK9_STUFF
