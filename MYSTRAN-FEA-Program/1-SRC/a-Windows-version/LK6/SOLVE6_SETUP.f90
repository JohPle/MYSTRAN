! ##################################################################################################################################
 
      SUBROUTINE SOLVE6_SETUP ( CALLING_SUBR, HANDLE )

! Sets up the decomp of KLL or KLLs for either subr SOLVE_DLR or subr SOLVE_PHIZL1.
! (NOTE: this was previously code in both SOLVE_DLR and SOLVE_PHIZL1 but the only diff was in PARAM MKLFAC62,3 use)

! For a description of Craig-Bamptom analyses, see Appendix D to the MYSTRAN User's Referance Manual


      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, KLL_SDIA, NDOFL, NTERM_KLL, NTERM_KLLs
      USE TIMDAT, ONLY                :  TSEC
      USE PARAMS, ONLY                :  EPSIL, MKLFAC62, MKLFAC63, MKLSTATS, SOLLIB, SPARSTOR
      USE SUBR_BEGEND_LEVELS, ONLY    :  SOLVE6_SETUP_BEGEND
      USE SPARSE_MATRICES, ONLY       :  I_KLL, J_KLL, KLL, I_KLLs, J_KLLs, KLLs
      USE LAPACK_LIN_EQN_DPB
      USE MKL_DSS

      USE SOLVE6_SETUP_USE_IFs

      IMPLICIT NONE

      TYPE(MKL_DSS_HANDLE), INTENT(INOUT)::HANDLE

      CHARACTER(LEN=LEN(BLNK_SUB_NAM)):: SUBR_NAME = 'SOLVE6_SETUP'
      CHARACTER(LEN=*), INTENT(IN)    :: CALLING_SUBR      ! Name of subr that called thi one
      CHARACTER(  1*BYTE)             :: CALC_INERTIA      ! If Y then calc matrix inertia when SYM_MAT_DECOMP_IntMKL is called
      CHARACTER(  1*BYTE)             :: EQUED             ! 'Y' if KLL stiff matrix was equilibrated in subr EQUILIBRATE    
      CHARACTER(LEN(MKLFAC62))        :: MKLFAC6i          ! Parameter MKLFAC62 or MKLFAC63 depending on which subr calls this one
 
      INTEGER(LONG)                   :: DEB_PRT(2)        ! Debug numbers to say whether to write ABAND and/or its decomp to output
!                                                            file in called subr SYM_MAT_DECOMP_LAPACK (ABAND = band form of KOO)

      INTEGER(LONG)                   :: IER_DECOMP        ! Overall error indicator
      INTEGER(LONG)                   :: INFO        = 0   ! Input value for subr SYM_MAT_DECOMP_LAPACK (quit on sing KRRCB)
      INTEGER(LONG)                   :: IntMKL_IER        ! Intel MKL error code (see MKL documentation for values)
      INTEGER(LONG)                   :: NUM_KLL_DIAG_ZEROS! Number of zeros on the diag of KLL
      INTEGER(LONG)                   :: OPT               ! Option indicator for Intel MKL dss routines
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = SOLVE6_SETUP_BEGEND

      REAL(DOUBLE)                    :: DETERMINANT       ! Determinant of MAT
      REAL(DOUBLE)                    :: EQUIL_SCALE_FACS(NDOFL)
                                                           ! LAPACK_S values returned from subr SYM_MAT_DECOMP_LAPACK

      REAL(DOUBLE)                    :: INERTIA(3)        ! Matrix inertia
      REAL(DOUBLE)                    :: K_INORM           ! Inf norm of KLL matrix (det in  subr COND_NUM)
      REAL(DOUBLE)                    :: RCOND             ! Recrip of cond no. of the KLL. Det in  subr COND_NUM
 
! **********************************************************************************************************************************
      IF (WRT_LOG >= SUBR_BEGEND) THEN
         CALL OURTIM
         WRITE(F04,9001) SUBR_NAME,TSEC
 9001    FORMAT(1X,A,' BEGN ',F10.3)
      ENDIF

! **********************************************************************************************************************************
      IF      (CALLING_SUBR == 'SOLVE_DLR'   ) THEN
         MKLFAC6i = MKLFAC62
      ELSE IF (CALLING_SUBR == 'SOLVE_PHIZL1') THEN
         MKLFAC6i = MKLFAC63
      ELSE
         FATAL_ERR = FATAL_ERR + 1
         WRITE(ERR,972) SUBR_NAME, CALLING_SUBR
         WRITE(F06,972) SUBR_NAME, CALLING_SUBR
         CALL OUTA_HERE ( 'Y' )
      ENDIF

      DEB_PRT(1) = 64
      DEB_PRT(2) = 65

      IF (SOLLIB == 'ZZPACK') THEN

         INFO = 0
         EQUED = 'N'
         CALL SYM_MAT_DECOMP_LAPACK ( SUBR_NAME, 'KLL', 'L ', NDOFL, NTERM_KLL, I_KLL, J_KLL, KLL, 'Y', 'N', 'N', 'N', DEB_PRT,    &
                                      EQUED, KLL_SDIA, K_INORM, RCOND, EQUIL_SCALE_FACS, INFO )
         IF (EQUED == 'Y') THEN                            ! If EQUED == 'Y' then error. We don't want KLL equilibrated
            WRITE(ERR,6001) SUBR_NAME, EQUED
            WRITE(F06,6001) SUBR_NAME, EQUED
            FATAL_ERR = FATAL_ERR + 1
            CALL OUTA_HERE ( 'Y' )
         ENDIF

      ELSE IF (SOLLIB == 'IntMKL') THEN                    ! Use Intel Math Kernel Library (MKL)

         CALC_INERTIA = 'N'                                ! DO NOT! calc inertia unless SYM_MAT_DECOMP_IntMKL is used for eigens


         CALL SPARSE_MAT_DIAG_ZEROS ( 'KLL', NDOFL, NTERM_KLL, I_KLL, J_KLL, NUM_KLL_DIAG_ZEROS )

         IF      (SPARSTOR == 'SYM   ') THEN

            CALL SYM_MAT_DECOMP_IntMKL ( 'KLL ', HANDLE, MKLFAC6i, NDOFL, NTERM_KLL, I_KLL, J_KLL, KLL, DETERMINANT, CALC_INERTIA, &
                                          INERTIA, IER_DECOMP )

         ELSE IF (SPARSTOR == 'NONSYM') THEN               ! Convert to symmetric form before calling subr to decomp

            NTERM_KLLs = (NTERM_KLL  + (NDOFL - NUM_KLL_DIAG_ZEROS))/2
            CALL ALLOCATE_SPARSE_MAT ( 'KLLs', NDOFL, NTERM_KLLs, SUBR_NAME )
            CALL CRS_NONSYM_TO_CRS_SYM ( 'KLL', NDOFL, NTERM_KLL, I_KLL, J_KLL, KLL, 'KLLs', NTERM_KLLs, I_KLLs, J_KLLs, KLLs )
            CALL SYM_MAT_DECOMP_IntMKL ( 'KLLs', HANDLE, MKLFAC6i, NDOFL, NTERM_KLLs, I_KLLs, J_KLLs, KLLs, DETERMINANT,           &
                                          CALC_INERTIA, INERTIA, IER_DECOMP )
         ELSE                                              ! Error - incorrect SPARSTOR

            WRITE(ERR,932) SUBR_NAME, SPARSTOR
            WRITE(F06,932) SUBR_NAME, SPARSTOR
            FATAL_ERR = FATAL_ERR + 1
            CALL OUTA_HERE ( 'Y' )

         ENDIF

      ELSE

         FATAL_ERR = FATAL_ERR + 1
         WRITE(ERR,9991) SUBR_NAME, SOLLIB
         WRITE(F06,9991) SUBR_NAME, SOLLIB
         CALL OUTA_HERE ( 'Y' )

      ENDIF

! **********************************************************************************************************************************
      IF (WRT_LOG >= SUBR_BEGEND) THEN
         CALL OURTIM
         WRITE(F04,9002) SUBR_NAME,TSEC
 9002    FORMAT(1X,A,' END  ',F10.3)
      ENDIF

      RETURN

! **********************************************************************************************************************************
  932 FORMAT(' *ERROR   932: PROGRAMMING ERROR IN SUBROUTINE ',A                                                                   &
                    ,/,14X,' PARAMETER SPARSTOR MUST BE EITHER "SYM" OR "NONSYM" BUT VALUE IS ',A)

  972 FORMAT(' *ERROR   972: PROGRAMMING ERROR IN SUBROUTINE ',A                                                                   &
                    ,/,14X,' INVALID ARG CALLING_SUBR = ',A)

 6001 FORMAT(' *ERROR  6001: PROGRAMMING ERROR IN SUBROUTINE ',A                                                                   &
                    ,/,14X,' MATRIX KLL WAS EQUILIBRATED: EQUED = ',A,'. CODE NOT WRITTEN TO ALLOW THIS AS YET')

 9991 FORMAT(' *ERROR  9991: PROGRAMMING ERROR IN SUBROUTINE ',A                                                                   &
                    ,/,14X,' SOLLIB = ',A,' NOT PROGRAMMED ',A)

! **********************************************************************************************************************************
 
      END SUBROUTINE SOLVE6_SETUP
