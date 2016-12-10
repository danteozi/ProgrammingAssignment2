## First function will create a special matrix which then can also cache its inverse.
## Second function will calculate an inverse of the function above. If inverse has been 
## calculated, then the function will fetch the inverse from the cache

## Write a short comment describing this function
## Function create a special matrix which also can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
  set <- function(y){
    x <<- y
  }
  get <- function() x
  list(set = set, get = get, setInv = setInv, getInv = getInv)

}

## test
## matix <- makeCacheMatrix(matrix(c(11,33,2,4),2,2))
## matix$get()
## matix$getInv()


## Function will get the inverse matrix from the above function, if inverse has been 
## calculate, then it will return the cached matrix

cacheSolve <- function(x, ...) {
        m <- x$getInv()
        if(!is.null(m)){
          message("getting cached data")
          return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setInv(m)
        m
}

## test
## cacheSolve(matix)
