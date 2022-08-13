## The two functions following take the inverse of a given matrix and store it as cached data
## and look to see if there is a stored inverse matrix or if it needs to be inversed

## Takes the inverse of a given matrix and stores the value
makeCacheMatrix <- function(x = matrix()) {
        inverse <- NULL
        set <- function(y) {
                x <<- y
                inverse <<- NULL
        }
        get <- function() x
        setInverseMatrix <- function(solve) inverse <<- solve
        getInverseMatrix <- function() inverse
        list(set = set, get = get,
             setInverseMatrix = setInverseMatrix,
             getInverseMatrix = getInverseMatrix)
}


## Looks to see whether there is a stored inverse matrix, and uses the inverse matrix if it is available
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inverse <- x$getInverseMatrix()
        if(!is.null(inverse)) {
                message("Getting inversed matrix from cached data.")
                return(inverse)
        }
        data <- x$get()
        inverse <- solve(data, ...)
        x$setInverseMatrix(inverse)
        inverse
}
