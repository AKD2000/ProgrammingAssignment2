## The following function cache the inverse of a given matrix

makeCacheMatrix <- function(x = matrix()) {
  a <- NULL
  set <- function(y) {
    x <<- y
    a <<- NULL
  }
 
  get <- function() x
  
  setinverse <- function(solve) a <<- solve
  getinverse <- function() a
  
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  
  a <- x$getinverse()
  
  
  data <- x$get()
  a <- solve(data, ...)
  
  x$setinverse(a)
  i
}

