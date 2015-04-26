## makeCacheMatrix function creates a special vector which is a list
## containing references to functions set,get,setinverse,getinverse 

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y){
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) inv <<- inverse
  getinverse <- function() inv
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}




## cacheSolve is the function which does the actual computation, caching as per the need 
## and stores the result back in the special vector

cacheSolve <- function(x, ...) {
  inv <- x$getinverse()
  if(!is.null(inv)){
    message("getting cached data")
    return(inv)
  }
  matrix_data <- x$get()
  inv <- solve(matrix_data)
  x$setinverse(inv)
  ## Return a matrix that is the inverse of 'x'
  inv
}
