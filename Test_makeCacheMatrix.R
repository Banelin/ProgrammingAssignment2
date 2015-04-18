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
