## Author: Philipp
## Date:   2014-11-18
## Assignment 2: Inverse Matrix

# testing cachematrix.R

source("cachematrix.R")

a = makeCacheMatrix(matrix(c(2,3,9,6), nrow=2, ncol=2))
b <- a$get()
class(b)
det(b)
cacheSolve(a)
# now it is cached
cacheSolve(a)
a$set(matrix(c(1,4,3,2), nrow=2, ncol=2))
# not calculated yet
a$getinv()
cacheSolve(a)
a$getinv()
# now it is cached
cacheSolve(a)





