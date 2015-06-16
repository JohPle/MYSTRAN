# MYSTRAN
A Fortran 90-based NASTRAN library solver developed by NASA

## Introduction

The original source for MYSTRAN (including some large F06s not included here) can be downloaded from http://opensource.gsfc.nasa.gov/projects/mystran/index.php

The software was originally developed by Dr Bill Case. It was last updated in 2012.  http://www.mystran.com/

I haven't built this code yet and don't know how it works.  At some point, I will probably update the layout to be less confusing (e.g. the LK1 to LK9 folders that just stand for link 1-9, rather than reader, process_K, and writer).

The goal of this project is to learn a bit about Fortran and make use of the methodology in the solver in pyNastran.  There is no plan to explicitly use MYSTRAN.  I'd like pyNastran to create [M] and [K] and use some external library (maybe in HDF5) to calculate the displacements, which are fed back into pyNastran to write the F06 and OP2.

## License

  MYSTRAN is available under the terms of the NASA Open Source Agreement
  (NOSA) version 1.3.  The complete terms of the license are specified
  in the LICENSE file.
