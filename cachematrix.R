## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

# 1. set & get the value of the matrix
# 2. set & get the value of inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setInv <- function(solveMatrix) inv <<- solveMatrix
  getInv <- function() inv
  list(set = set, get = get, setInv = setInv, getInv = getInv)
}


## Write a short comment describing this function

# Returns inverse of the matrix & assume matrix is always invertible.
# 1. Checks if inverse has already been computed
# 2. Gets result & doesn't compute
# 3. Otherwise, setinv function is used to set value in the cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getInv()
  if(!is.null(inv)){
    message("Getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data)
  x$setInv(inv)
  inv   
}
