## Put comments here that give an overall description of what your
## functions do

## Creates an object that saves a matrix and its inverse and returns 
## the inverse without having to recalculate unless the inverse changed.

## Write a short comment describing this function

## This function has four parts:
## 1. set the matrix
## 2. get the matrix
## 3. setinv - sets the inverse of the matrix
## 4. getinv - gets the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setinv <- function(inverse) inv <<- inverse
  getinv <- function() inv
  list(set = set, get = get, setmean = setmean, getmean = getmean)
}


## Write a short comment describing this function

## Returns the inverse if the inverse is defined, or calculates the inverse,
## saves it, then returns the inverse of the matrix.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getinv()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data, ...)
  x$setinv(inv)
  inv
}
