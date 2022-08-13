## Put comments here that give an overall description of what your
## functions do

## Takes the inverse of a given matrix and stores the value
makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
               }
        get <- function() x
        setmatrix <- function(solve) m <<- solve
        getmatrix <- function() m
        list(set = set, get = get,
             setmatrix = setmatrix,
             getmatrix = getmatrix)
}


## Looks to see whether there is a stored inverse matrix, and uses the inverse matrix if it is available
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
