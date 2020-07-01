## The first function makes special vector to store cache inverse.
## The second one, firstly checks the existence of cached inverse matrix and if there is no such matrix, it calculates it.

## Makes a list for a matrix

makeCacheMatrix <- function(x = matrix()) {
      ins <- NULL
      setMatrix <- function(y) {
        x <<- y
        ins <<- NULL
      }
      
      getMatrix <- function() {
        x
      }
      
      setInverse <- function(inverse) {
        ins <<- inverse
      }
      getInverse <- function() {
        ins
      }
      
      list(setMatrix = setMatrix, getMatrix = getMatrix, setInverse = setInverse, getInverse = getInverse)
}


## Returns the inverse matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  
      ins <- x$getInverse()
      
      if(!is.null(ins)) {
        message("getting cashed data")
        return(ins)
      }
      
      data <- x$getMatrix()
      
      ins <- solve(data, ...)
      x$setInverse(ins)
      ins
      
}
