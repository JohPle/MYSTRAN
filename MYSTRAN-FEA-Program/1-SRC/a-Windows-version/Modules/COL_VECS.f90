! ##################################################################################################################################

      MODULE COL_VECS
  
! 1D column vectors

      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE

      IMPLICIT NONE
  
      SAVE

      REAL(DOUBLE) , ALLOCATABLE      :: UA_COL(:)         ! A-set displ vector for 1 soln vec
      REAL(DOUBLE) , ALLOCATABLE      :: UF_COL(:)         ! F-set displ vector for 1 soln vec
      REAL(DOUBLE) , ALLOCATABLE      :: UG_COL(:)         ! G-set displ vector for 1 soln vec
      REAL(DOUBLE) , ALLOCATABLE      :: UL_COL(:)         ! L-set displ vector for 1 soln vec
      REAL(DOUBLE) , ALLOCATABLE      :: UM_COL(:)         ! M-set displ vector for 1 soln vec
      REAL(DOUBLE) , ALLOCATABLE      :: UN_COL(:)         ! N-set displ vector for 1 soln vec
      REAL(DOUBLE) , ALLOCATABLE      :: UO_COL(:)         ! O-set displ vector for 1 soln vec
      REAL(DOUBLE) , ALLOCATABLE      :: UO0_COL(:)        ! 1D array of all terms in UO0 = KOO(-1) x PO
      REAL(DOUBLE) , ALLOCATABLE      :: UR_COL(:)         ! R-set displ vector for 1 soln vec
      REAL(DOUBLE) , ALLOCATABLE      :: US_COL(:)         ! S-set displ vector for 1 soln vec
      REAL(DOUBLE) , ALLOCATABLE      :: YSe(:)            ! 1D array of enforced displs on the SE-set

      REAL(DOUBLE) , ALLOCATABLE      :: PHIXG_COL(:)      ! G-set accel vector for 1 soln vec (NDOFG x 2*NDOFR+NVEC)
      REAL(DOUBLE) , ALLOCATABLE      :: PHIXL_COL(:)      ! L-set accel vector for 1 soln vec (NDOFL x 2*NDOFR+NVEC)
      REAL(DOUBLE) , ALLOCATABLE      :: PHIXN_COL(:)      ! N-set accel vector for 1 soln vec (NDOFN x 2*NDOFR+NVEC)

      REAL(DOUBLE) , ALLOCATABLE      :: PHIXGP_COL(:)     ! G-set accel vector for 1 soln vec expanded to 2NDOFR+NVEC cols
      REAL(DOUBLE) , ALLOCATABLE      :: PHIXLP_COL(:)     ! L-set accel vector for 1 soln vec expanded to 2NDOFR+NVEC cols
      REAL(DOUBLE) , ALLOCATABLE      :: PHIXNP_COL(:)     ! N-set accel vector for 1 soln vec expanded to 2NDOFR+NVEC cols

      REAL(DOUBLE) , ALLOCATABLE      :: FA_COL(:)         ! A-set inertia load vector for 1 soln vec
      REAL(DOUBLE) , ALLOCATABLE      :: FF_COL(:)         ! F-set inertia load vector for 1 soln vec
      REAL(DOUBLE) , ALLOCATABLE      :: FG_COL(:)         ! G-set inertia load vector for 1 soln vec
      REAL(DOUBLE) , ALLOCATABLE      :: FL_COL(:)         ! L-set inertia load vector for 1 soln vec
      REAL(DOUBLE) , ALLOCATABLE      :: FM_COL(:)         ! M-set inertia load vector for 1 soln vec
      REAL(DOUBLE) , ALLOCATABLE      :: FN_COL(:)         ! N-set inertia load vector for 1 soln vec
      REAL(DOUBLE) , ALLOCATABLE      :: FO_COL(:)         ! O-set inertia load vector for 1 soln vec
      REAL(DOUBLE) , ALLOCATABLE      :: FR_COL(:)         ! R-set inertia load vector for 1 soln vec
      REAL(DOUBLE) , ALLOCATABLE      :: FS_COL(:)         ! S-set inertia load vector for 1 soln vec

      REAL(DOUBLE) , ALLOCATABLE      :: PG_COL(:)         ! G-set applied load vector for 1 soln vec
      REAL(DOUBLE) , ALLOCATABLE      :: PM_COL(:)         ! M-set load vector for 1 soln vec
      REAL(DOUBLE) , ALLOCATABLE      :: PS_COL(:)         ! S-set load vector for 1 soln vec
      REAL(DOUBLE) , ALLOCATABLE      :: PL_COL(:)         ! L-set load vector for 1 soln vec
      REAL(DOUBLE) , ALLOCATABLE      :: QGm_COL(:)        ! G-set MPC constraint load vector for 1 soln vec
      REAL(DOUBLE) , ALLOCATABLE      :: QGr_COL(:)        ! G-set I/F force  vec for 1 soln vec (G-set merge of QR_COL w/ zeros) 
      REAL(DOUBLE) , ALLOCATABLE      :: QGs_COL(:)        ! G-set SPC constr vec for 1 soln vec (G-set merge of QS_COL w/ zeros) 

      REAL(DOUBLE) , ALLOCATABLE      :: QM_COL(:)         ! M-set MPC constraint load vector for 1 soln vec
      REAL(DOUBLE) , ALLOCATABLE      :: QN_COL(:)         ! N-set MPC constraint load vector for 1 soln vec
      REAL(DOUBLE) , ALLOCATABLE      :: QS_COL(:)         ! S-set SPC constraint load vector for 1 soln vec
      REAL(DOUBLE) , ALLOCATABLE      :: QR_COL(:)         ! R-set I/F constraint load vector for 1 soln vec
      REAL(DOUBLE) , ALLOCATABLE      :: QSYS_COL(:)       ! QS = PS - QSYS, QSYS = KSSe*YS for 1 soln

      END MODULE COL_VECS

