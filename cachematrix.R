## Author: Philipp
## Date:   2014-11-18
## Assignment 2: Inverse Matrix

# set up "matrix" with cacheable inverted value 
# (list of functions:
#  set matrix
#  get matrix
#  set (cache) inverse matrix
#  get inverse matrix from cache)
# 
# note: matrix with det(matrix) = 0 can't be inverted
# see assignement

makeCacheMatrix <- function(x = matrix()) {
  invm <- NULL
  set <- function(y) {
    x <<- y
    invm <<- NULL
  }
  get <- function() x
  setinv <- function(solve) invm <<- solve
  getinv <- function() invm
  list(set = set,
       get = get,
       setinv = setinv,
       getinv = getinv
  )
}


# returns cached value (inverted matrix)
# calculates inverted matrix if not cached

cacheSolve <- function(x, ...) {
  minv <- x$getinv()
  if(!is.null(minv)) {
    message("getting cached data")
    return(minv)
  }
  data <- x$get()
  minv <- solve(data)
  x$setinv(minv)
  minv
}

