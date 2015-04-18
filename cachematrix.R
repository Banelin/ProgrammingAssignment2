## The two following functions work with one another
## in order to store and solve the inverse of a matrix 
## creating a save in time for larger matix values that 
## will be used again in the future. 


## The makeCacheMatrix stores a list of functions
## pertaining to the matrix supplied by x 

makeCacheMatrix <- function(x = matrix()) {  # Change numeric to matrix
    m <- NULL
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
    get <- function() x
    setInverse <- function(solve) m <<- solve # Change mean to solve 
    getInverse <- function() m
    list(set = set, get = get,
         setInverse = setInverse, # Change setmean to setInverse
         getInverse = getInverse) # Change setmean to setInverse
}

## The cacheSolve function calculates the inverse 
## of matrix x.

## First it checks to see if the matrix inverse is
## already stored, if stored it displayes the stored data
## if not stored, it calculates the inverse and displays

cacheSolve <- function(x=matrix, ...) { # Change x to a matrix 
    m <- x$getInverse() # Change getmean to get getInverse
    if(!is.null(m)) {
        message("getting cached data")
        return(m)
    }
    data <- x$get()
    m <- solve(data, ...) # Change mean to solve 
    x$setInverse(m) # Change setmean to setInverse
    m
}
