## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) { # Defining to make matrix
    m <- NULL                               # Create a NULL Matrix
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x                      # Call the function
  setinv <- function(solve) m <<- solve
  getinv <- function() m
  list(set = set, get = get,               # Store the output in the list
       setinv = setinv,
       getinv = getinv)
}

## Write a short comment describing this function

  cacheSolve <- function(x, ...) {
  m <- x$getinv()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinv(m)
  m
}


