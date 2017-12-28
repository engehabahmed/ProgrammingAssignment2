## This application consist of two function makeCacheMatrix and cacheSolve to 
## get the solve of Matri from Cache


## Write a short comment describing this function
## makeCacheMatrix to save a set and get the matrix

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        setMatrix <- function(y) {
                x <<- y
                m <<- NULL
        }
        getMatrix <- function() x
        setSolveMatrix <- function(solve) m <<- solve
        getSolveMatrix <- function() m
        list(setMatrix = setMatrix, getMatrix = getMatrix,
             setSolveMatrix = setSolveMatrix,
             getSolveMatrix = getSolveMatrix)
}


## Write a short comment describing this function
## cacheSolve to set and get the matrix from Cache

cacheSolve <- function(x, ...) {
       m <- x$getSolveMatrix()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$getMatrix()
        m <- solve(data, ...)
        x$setSolveMatrix(m)
        m    
}
