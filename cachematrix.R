## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This function returns a list of operations to set 
## and get a matrix x from an exist matrix y
## which may not be in the current environment, and
## can also set and get its inverse xi if it exists 
## already. 
makeCacheMatrix <- function(x = matrix() {
          xi <- NULL
          set <- function(y) {
                 x <<- y
                 xi <<- NULL
          }
          get <- function() x
          setInverse <- function(solve) xi <<- solve
          getInverse <- function() xi
                  
          list(set = set, get = get,
               setInverse = setInverse,
               getInverse = getInverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {

        ## Return a matrix that is the inverse of 'x'
        
}
