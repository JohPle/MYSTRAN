Please review the intro to "MYSTRAN-Users-Manual.pdf" in the
Documentation sub-folder for an overview of what the MYSTRAN
General Purpose Finite Element Program does

For a description of the file structure contained herein please see:
"MYSTRAN FEA Program File Structure.pdf" in the Documents subfolder
It will give some explanation of the unzipped file structure

There is some source code beginnings for linear buckling analyses
(BAR element only, so far) and for nonlinear static analyses.
Neither of these capabilities is complete at this time; however,
MYSTRAN is a complete linear static and eigenvalue analysis capability.

In order to use the Intel Math Kernel (MKL) library for solution to
statics problems, users will have to purchase the library from Intel.
The fortran code for implementing the library is contained in the
MYSTRAN code.