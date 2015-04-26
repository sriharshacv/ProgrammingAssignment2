### Introduction

Hello I am SriHarsha. This is a blind imitation of the code given in the below example.
In this case we store inverse instead of a mean. 

The enigma lies in how R stores the references to the matrix and inverse variables.
It seems that the special object returned by the function makeCachedMatrix is nothing by a simple list with references to functions which are embedded in another function which created the 'special' object.
Especially when we instantiate multiple objects with it, I am lost as to how the references are maintained !! :(
I

### Assignment: Caching the Inverse of a Matrix

Assignment is to write a pair of functions that cache the inverse of a matrix.

Wrote the following functions:

1.  `makeCacheMatrix`: This function creates a special "matrix" object
    that can cache its inverse.
2.  `cacheSolve`: This function computes the inverse of the special
    "matrix" returned by `makeCacheMatrix` above. If the inverse has
    already been calculated (and the matrix has not changed), then
    `cacheSolve` should retrieve the inverse from the cache.

Computing the inverse of a square matrix can be done with the `solve`
function in R. For example, if `X` is a square invertible matrix, then
`solve(X)` returns its inverse.

Assuming that the matrix supplied is always
invertible.

In order to complete this assignment, you must do the following:

1.  Fork the GitHub repository containing the stub R files at
    [https://github.com/rdpeng/ProgrammingAssignment2](https://github.com/rdpeng/ProgrammingAssignment2)
    to create a copy under your own account.
2.  Clone your forked GitHub repository to your computer so that you can
    edit the files locally on your own machine.
3.  Edit the R file contained in the git repository and place your
    solution in that file (please do not rename the file).
4.  Commit your completed R file into YOUR git repository and push your
    git branch to the GitHub repository under your account.
5.  Submit to Coursera the URL to your GitHub repository that contains
    the completed R code for the assignment.

### Grading

This assignment will be graded via peer assessment.
