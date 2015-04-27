## This function creates a cached inverse matrix, where the original matrix is a
## perfect square. Once cached, the second fuction either calls the inverse from
## memory, or retrieves original based on input.


## This fuction caches the original and inverse matrix of input.

makeCacheMatrix <- function(x = matrix()) {
  ninv <- NULL
  inv <- NULL
  ninv <<- x
  inv <<- solve(x)
}

## This function checks to see if input matrix is identical to cached matrix, if
## so, the function returns inverse from memory.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  if(!(identical(x,inv))) {
    message("getting cached data")
    print(inv)
    x <<- inv
  } else {
    print(ninv)
  }
}
