! ##################################################################################################################################

      MODULE RIGID_BODY_DISP_MATS

! Rigid body displacement matrices

      USE PENTIUM_II_KIND, ONLY :  BYTE, LONG, DOUBLE

      IMPLICIT NONE

      SAVE

      REAL(DOUBLE), ALLOCATABLE       :: RBGLOBAL_GSET(:,:)! NDOFG x 6 matrix of displacements for the G-set
      REAL(DOUBLE), ALLOCATABLE       :: RBGLOBAL_NSET(:,:)! NDOFN x 6 matrix of displacements for the N-set
      REAL(DOUBLE), ALLOCATABLE       :: RBGLOBAL_FSET(:,:)! NDOFF x 6 matrix of displacements for the F-set
      REAL(DOUBLE), ALLOCATABLE       :: RBGLOBAL_ASET(:,:)! NDOFA x 6 matrix of displacements for the A-set
      REAL(DOUBLE), ALLOCATABLE       :: RBGLOBAL_LSET(:,:)! NDOFL x 6 matrix of displacements for the L-set

      REAL(DOUBLE), ALLOCATABLE       :: TR6_CG(:,:)       ! NDOFR x 6 rigid body displ matrix for R-set rel to model CG
      REAL(DOUBLE), ALLOCATABLE       :: TR6_MEFM(:,:)     ! NDOFR x 6 rigid body displ matrix for R-set rel to MEFMGRID
      REAL(DOUBLE), ALLOCATABLE       :: TR6_0(:,:)        ! NDOFR x 6 rigid body displ matrix for R-set rel to model basic coords

      END MODULE RIGID_BODY_DISP_MATS
