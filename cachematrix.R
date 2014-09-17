 
## This function creates a special "matrix" object that can cache its inverse.

## This function returns a list of operations to set
## and get a matrix x from an existing matrix y which
## may not be in the current environment; and there
## are operations to set and get x's inverse matrix xi.
## This function was just a modefication of the first
## example, i.e. makeVector

makeCacheMatrix <- function(x = matrix()) {
        xi <- NULL
        set <- function(y) {
                x <<- y
                xi <<- NULL
        }
        get <- function() x
        setInverse <- function(inverse) xi <<- inverse
        getInverse <- function() xi
        list(set = set, get = get,
             setInverse = setInverse,
             getInverse = getInverse)
}



##  This function computes the inverse of the special "matrix" returned by makeCacheMatrix above.

 ## Function cacheSolve calculate the inverse matrix created
## by the function makeCachematrix. Its first variable is the output
## list from makeCacheMatrix. It first checks if the inverse matrix
## exists or not. When exists it will get it otherwise it will
## compute it.
## This function is just a modefication of the second example,
## i.e. the code cacheMean.
cacheSolve <- function(x, ...) {
        xi <- x$getInverse()
        if(!is.null(xi)) {
                message("getting cached data")
                return(xi)
        }
        data <- x$get()
        xi <- solve(data, ...)
        x$setInverse(xi)
        xi
}

