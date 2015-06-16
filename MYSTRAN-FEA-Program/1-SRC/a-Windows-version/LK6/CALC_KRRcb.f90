! ##################################################################################################################################

      SUBROUTINE CALC_KRRcb
 
! Calculates the R-set row and col matrix KRRcb in the CB transformation matrix:

!                                  KRRcb = KRR + KRL*DLR
 
! For a description of Craig-Bamptom analyses, see Appendix D to the MYSTRAN User's Referance Manual


      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FACTORED_MATRIX, FATAL_ERR, KRRcb_SDIA,                                     &
                                         NDOFL, NDOFR, NTERM_DLR, NTERM_KRL, NTERM_KRR, NTERM_KRRcb, NTERM_KRRcbs
      USE TIMDAT, ONLY                :  TSEC
      USE CONSTANTS_1, ONLY           :  ONE
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG
      USE PARAMS, ONLY                :  MKLFAC61, MKLSTATS, SOLLIB, SPARSTOR, SUPINFO
      USE SPARSE_MATRICES , ONLY      :  SYM_DLR, SYM_KRL, SYM_KRR
      USE SPARSE_MATRICES , ONLY      :  I_KRL, J_KRL, KRL, I_KRR, J_KRR, KRR, I_DLR, J_DLR, DLR,                                  &
                                         I_KRRcb, J_KRRcb, KRRcb, I_KRRcbs, J_KRRcbs, KRRcbs
      USE SCRATCH_MATRICES
      USE LAPACK_DPB_MATRICES, ONLY   :  ABAND
      USE MKL_DSS
      USE SUBR_BEGEND_LEVELS, ONLY    :  CALC_KRRcb_BEGEND

      USE CALC_KRRcb_USE_IFs

      IMPLICIT NONE
 
      TYPE(MKL_DSS_HANDLE)            :: HANDLE

      CHARACTER(LEN=LEN(BLNK_SUB_NAM)):: SUBR_NAME = 'CALC_KRRcb'
      CHARACTER(  1*BYTE)             :: CALC_INERTIA      ! If Y then calc matrix inertia when SYM_MAT_DECOMP_IntMKL is called
      CHARACTER(  1*BYTE)             :: EQUED             ! 'Y' if KRRcb stiff matrix was equilibrated in subr EQUILIBRATE    
      CHARACTER(  1*BYTE)             :: SYM_CRS3          ! Storage format for matrix CRS3 (either 'Y' for sym storage or
!                                                            'N' for nonsymmetric storage)

      INTEGER(LONG)                   :: AROW_MAX_TERMS    ! Output from MATMULT_SFS_NTERM and input to MATMULT_SFS
      INTEGER(LONG)                   :: DEB_PRT(2)        ! Debug numbers to say whether to write ABAND and/or its decomp to output
!                                                            file in called subr SYM_MAT_DECOMP_LAPACK
      INTEGER(LONG)                   :: I,J               ! DO loop indices
      INTEGER(LONG)                   :: IER_DECOMP        ! Overall error indicator
      INTEGER(LONG)                   :: INFO        = -1  ! Input value for subr SYM_MAT_DECOMP_LAPACK (don't quit on sing KRRCB)

      INTEGER(LONG)                   :: NTERM_CRS1        ! Number of terms in matrix CRS1  
      INTEGER(LONG)                   :: NTERM_CRS3        ! Number of terms in matrix CRS3
      INTEGER(LONG)                   :: NUM_KRRcb_DIAG_ZEROS! Number of zeros on the diag of 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = CALC_KRRcb_BEGEND

      REAL(DOUBLE)                    :: DETERMINANT       ! Determinant of MAT
      REAL(DOUBLE)                    :: EQUIL_SCALE_FACS(NDOFR)
                                                           ! LAPACK_S values returned from subr SYM_MAT_DECOMP_LAPACK
      REAL(DOUBLE)                    :: INERTIA(3)        ! Matrix inertia
      REAL(DOUBLE)                    :: K_INORM           ! Inf norm of KRRcb matrix (det in  subr COND_NUM)
      REAL(DOUBLE)                    :: RCOND             ! Recrip of cond no. of the KLL. Det in  subr COND_NUM

! **********************************************************************************************************************************
      IF (WRT_LOG >= SUBR_BEGEND) THEN
         CALL OURTIM
         WRITE(F04,9001) SUBR_NAME,TSEC
 9001    FORMAT(1X,A,' BEGN ',F10.3)
      ENDIF

! **********************************************************************************************************************************
! Calc KRRcb = KRR + KRL*DLR
                                                           ! CCS1 will be sparse CCS format version of sparse CRS matrix DLR
      IF (NTERM_KRL > 0) THEN                              ! Part I of KRRcb: calc KRL*DLR add it to KRR

         CALL ALLOCATE_SCR_CCS_MAT ( 'CCS1', NDOFR, NTERM_DLR, SUBR_NAME )
         CALL SPARSE_CRS_SPARSE_CCS ( NDOFL, NDOFR, NTERM_DLR, 'DLR', I_DLR, J_DLR, DLR, 'CCS1', J_CCS1, I_CCS1, CCS1, 'Y' )


                                                           ! I-1 , sparse multiply to get CRS1 = KRL*DLR. Use CCS1 for DLR CCS
         CALL MATMULT_SSS_NTERM ( 'KRL' , NDOFR, NTERM_KRL , SYM_KRL, I_KRL , J_KRL ,                                              &
                                  'DLR' , NDOFR, NTERM_DLR , SYM_DLR, J_CCS1, I_CCS1, AROW_MAX_TERMS,                              &
                                  'CRS1',        NTERM_CRS1 )

         CALL ALLOCATE_SCR_CRS_MAT ( 'CRS1', NDOFR, NTERM_CRS1, SUBR_NAME )

         CALL MATMULT_SSS ( 'KRL' , NDOFR, NTERM_KRL, SYM_KRL, I_KRL , J_KRL , KRL ,                                               &
                            'DLR' , NDOFR, NTERM_DLR, SYM_DLR, J_CCS1, I_CCS1, CCS1, AROW_MAX_TERMS,                               &
                            'CRS1', ONE  , NTERM_CRS1,         I_CRS1, J_CRS1, CRS1 )

         CALL DEALLOCATE_SCR_MAT ( 'CCS1')

         IF      (SPARSTOR == 'SYM   ') THEN               !      If SPARSTOR == 'SYM   ', rewrite CRS1 (= KRL*DLR) as sym in CRS3

            CALL SPARSE_CRS_TERM_COUNT ( NDOFR, NTERM_CRS1, 'CRS1 = KRL*DLR', I_CRS1, J_CRS1, NTERM_CRS3 )
            CALL ALLOCATE_SCR_CRS_MAT ( 'CRS3', NDOFR, NTERM_CRS3, SUBR_NAME )
            CALL CRS_NONSYM_TO_CRS_SYM ( 'CRS1 = KRL*DLR all nonzeros', NDOFR, NTERM_CRS1, I_CRS1, J_CRS1, CRS1,                   &
                                         'CRS3 = KRL*DLR stored sym'  ,        NTERM_CRS3, I_CRS3, J_CRS3, CRS3 )
            SYM_CRS3 = 'Y'

         ELSE IF (SPARSTOR == 'NONSYM') THEN               ! If SPARSTOR == 'NONSYM', rewrite CRS3 in CRS1 with NTERM_CRS3

            NTERM_CRS3 = NTERM_CRS1
            CALL ALLOCATE_SCR_CRS_MAT ( 'CRS3', NDOFR, NTERM_CRS3, SUBR_NAME )
            DO I=1,NDOFR+1
               I_CRS3(I) = I_CRS1(I)
            ENDDO
            DO I=1,NTERM_CRS3
               J_CRS3(I) = J_CRS1(I)
                 CRS3(I) =   CRS1(I)
            ENDDO
            SYM_CRS3 = 'N'

         ELSE                                              ! Error - incorrect SPARSTOR

            WRITE(ERR,932) SUBR_NAME, SPARSTOR
            WRITE(F06,932) SUBR_NAME, SPARSTOR
            FATAL_ERR = FATAL_ERR + 1
            CALL OUTA_HERE ( 'Y' )

         ENDIF
                                                           ! I-8 , sparse add to get KRRcb = KRR + CRS3 = KRR + KRL*DLR
         CALL MATADD_SSS_NTERM ( NDOFR, 'KRR', NTERM_KRR, I_KRR, J_KRR, SYM_KRR, 'KRL*DLR', NTERM_CRS3, I_CRS3, J_CRS3, SYM_CRS3,  &
                                      'KRRcb', NTERM_KRRcb )
         CALL ALLOCATE_SPARSE_MAT ( 'KRRcb', NDOFR, NTERM_KRRcb, SUBR_NAME )
         CALL MATADD_SSS ( NDOFR, 'KRR', NTERM_KRR, I_KRR, J_KRR, KRR, ONE, 'KRL*DLR', NTERM_CRS3, I_CRS3, J_CRS3, CRS3, ONE,      &
                                  'KRRcb', NTERM_KRRcb, I_KRRcb, J_KRRcb, KRRcb )

         CALL DEALLOCATE_SCR_MAT ( 'CRS1' )                ! I-9 , deallocate CRS1


         CALL DEALLOCATE_SCR_MAT ( 'CRS3' )                ! I-12, deallocate CRS3

      ELSE

      NTERM_KRRcb = NTERM_KRR                              ! Allocate KRRcb and equate to KRR since there is no KRL term
      CALL ALLOCATE_SPARSE_MAT ( 'KRRcb', NDOFR, NTERM_KRRcb, SUBR_NAME )

      DO I=1,NDOFR+1
         I_KRRcb(I) = I_KRR(I)
      ENDDO
      DO J=1,NTERM_KRRcb
         J_KRRcb(J) = J_KRR(J)
           KRRcb(J) =   KRR(J)
      ENDDO 

      ENDIF

! If DEBUG(104) > 0, check if KRRcb is singular. It should be singular regardless of the number of boundary DOF's.
! (KRR is singular if NDOFR = 6 and is a determinant set of supports. KRRcb should be singular always)   
! (CODE ONLY IMPLEMENTED FOR FOR SOLLIB = 'ZZPACK'. IntMKL COMMENTED OUT)                                                         

      IF (DEBUG(104) > 0) THEN

         CALL DEALLOCATE_LAPACK_MAT ( 'ABAND' )
         DEB_PRT(1) = 66
         DEB_PRT(2) = 67

         IF (SOLLIB == 'ZZPACK') THEN

            INFO = -1                                      ! Set INFO, on input, -1 so that SYM_MAT_DECOMP_LAPACK will not abort
            CALL SYM_MAT_DECOMP_LAPACK ( SUBR_NAME, 'KRRcb', 'R ', NDOFR, NTERM_KRRcb, I_KRRcb, J_KRRcb, KRRcb, 'N', 'N', 'N', 'N',&
                                         DEB_PRT, EQUED, KRRcb_SDIA, K_INORM, RCOND, EQUIL_SCALE_FACS, INFO )
            IF (INFO > 0) THEN                             ! KRRcb was singular as it should be
               WRITE(ERR,9971)
               WRITE(ERR,*)
               IF (SUPINFO == 'N') THEN
                  WRITE(F06,9971)
                  WRITE(F06,*)
               ENDIF
            ELSE                                           ! KRRcb was not singular. Model must be constrained from RB motion
               WRITE(ERR,9972)
               WRITE(ERR,*)
               IF (SUPINFO == 'N') THEN
                  WRITE(F06,9972)
                  WRITE(F06,*)
               ENDIF
            ENDIF

         ELSE IF (SOLLIB == 'IntMKL') THEN
   
            CALC_INERTIA = 'N'                             ! DO NOT! calc inertia unless SYM_MAT_DECOMP_IntMKL is used for eigens
            IF      (SPARSTOR == 'SYM   ') THEN
   
               CALL SYM_MAT_DECOMP_IntMKL ( 'KRRcb', HANDLE, MKLFAC61, NDOFR, NTERM_KRRcb, I_KRRcb, J_KRRcb, KRRcb,                &
                                             DETERMINANT, CALC_INERTIA, INERTIA, IER_DECOMP )
   
            ELSE IF (SPARSTOR == 'NONSYM') THEN
   
               CALL SPARSE_MAT_DIAG_ZEROS ( 'KRRcb', NDOFR, NTERM_KRRcb, I_KRRcb, J_KRRcb, NUM_KRRcb_DIAG_ZEROS )
               NTERM_KRRcbs = (NTERM_KRRcb  + (NDOFR - NUM_KRRcb_DIAG_ZEROS))/2
               CALL ALLOCATE_SPARSE_MAT ( 'KRRcbs', NDOFR, NTERM_KRRcbs, SUBR_NAME )
               CALL CRS_NONSYM_TO_CRS_SYM ( 'KRRcb' , NDOFR, NTERM_KRRcb , I_KRRcb , J_KRRcb , KRRcb,                              &
                                            'KRRcbs',        NTERM_KRRcbs, I_KRRcbs, J_KRRcbs, KRRcbs )
               CALL SYM_MAT_DECOMP_IntMKL ( 'KRRcbs', HANDLE, MKLFAC61, NDOFR, NTERM_KRRcbs, I_KRRcbs, J_KRRcbs, KRRcbs,           &
                                             DETERMINANT, CALC_INERTIA, INERTIA, IER_DECOMP )
   
            ELSE                                           ! Error - incorrect SPARSTOR
   
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

 9971 FORMAT(' *INFORMATION: MATRIX KRRcb WAS FOUND TO BE SINGULAR AS IT SHOULD BE. ANY ERRORS REGARDING SINGULARITY OF KRRcb',    &
                           ' SHOULD BE IGNORED')

 9972 FORMAT(' *INFORMATION: MATRIX KRRcb WAS CHECKED FOR SINGULARITY BUT WAS FOUND TO BE NONSINGULAR.',                           &
                           ' USER SHOULD CHECK MODEL TO MAKE SURE IT IS NOT RESTRAINED FROM RIGID BODY MOTION')

 9991 FORMAT(' *ERROR  9991: PROGRAMMING ERROR IN SUBROUTINE ',A                                                                   &
                    ,/,14X,' SOLLIB = ',A,' NOT PROGRAMMED ',A)

! **********************************************************************************************************************************
 
      END SUBROUTINE CALC_KRRcb