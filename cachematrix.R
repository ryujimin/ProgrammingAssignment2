## Calculate inverse of Matrix with cahcing the result

## Create special Vector containing set,get,set result,get result

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y){
        x <<- y
        m <<- NULL
    }
    get <- function() x
    setinv <- function(inv) m <<- inv
    getinv <- function() m
    list(set = set, get = get, setinv = setinv, getinv = getinv)
}

## Get result from cache if we already Caculrate or Calculate inverse of matrix

cacheSolve <- function(x, ...) {
    m <- x$getinv()
    if(!is.null(m)){
        message('getting cached data')
        return(m)
    }
    data <- x$get()
    m <- solve(data)
    x$setinv(m)
    m
}
