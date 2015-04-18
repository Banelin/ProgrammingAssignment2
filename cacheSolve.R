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