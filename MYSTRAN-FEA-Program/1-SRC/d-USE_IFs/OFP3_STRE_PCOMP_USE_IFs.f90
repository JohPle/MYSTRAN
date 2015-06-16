      MODULE OFP3_STRE_PCOMP_USE_IFs

! USE Interface statements for all subroutines called by SUBROUTINE OFP3_STRE_PCOMP

      USE OURTIM_Interface
      USE IS_ELEM_PCOMP_PROPS_Interface
      USE GET_ELEM_NUM_PLIES_Interface
      USE EMG_Interface
      USE ELMDIS_Interface
      USE ELMDIS_PLY_Interface
      USE SUSER1_Interface
      USE ELEM_STRE_STRN_ARRAYS_Interface
      USE ROT_COMP_ELEM_AXES_Interface
      USE CALC_ELEM_STRESSES_Interface
      USE WRITE_PLY_STRESSES_Interface
      USE ALLOCATE_FEMAP_DATA_Interface
      USE WRITE_FEMAP_STRE_VECS_Interface
      USE DEALLOCATE_FEMAP_DATA_Interface

      END MODULE OFP3_STRE_PCOMP_USE_IFs
