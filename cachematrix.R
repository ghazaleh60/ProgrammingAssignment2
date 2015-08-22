## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##The makeCacheMatrix function creates a special "matrix" a list containing a function to
## -set the value of the matrix
## -get the value of the matrix
## -set the value of the inverse matrix
## -get the value of the inverse matrix
makeCacheMatrix <- function(x = matrix()) {
in <- NULL
 set <- function(y) {
  x <<- y
  in <<- NULL
  }
   get <- function() x
   setInverse <- function(inverse) in <<- inverse
   getInverse <- function() in
   list(set = set,
        get = get,
        setInverse = setInverse,
        getInverse = getInverse)
}


## Write a short comment describing this function
## The cacheSolve function returns the inverse matrix which created by makeCacheMatrix, in this way that it will check
## if the inverse calculated before there will be nochange and if not it will inverse from the cache.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
      in <- x$getInverse()
       if (!is.null(in)) {
             message("getting cached data")
          return(in)
   }
            mat <- x$get()
            in <- solve(mat, ...)
            x$setInverse(in)
         in
}
