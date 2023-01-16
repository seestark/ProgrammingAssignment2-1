## makeCacheMatrix() creates a special matrix that will inverse its own cache
cacheSolve()is the function used to calculate the invers of the matrix

## This is used to calculate the cache data

makeCacheMatrix <- function(x = matrix()) {
inv<- NULL
set<- function(y){
x<<-NULL
}
get <- function() x
setInverse <-function() inv <<- solve(x)
getInverse <- function() inv
list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
       inv <- x$getInverse()
if(is.null(inv)){return(inv)
}
data <- x$get()
inv <- solve(data, ...)
x$getInverse(inv)
}
