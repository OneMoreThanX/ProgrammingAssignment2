## Put comments here that give an overall description of what your
## functions do

<<<<<<< HEAD
## This function creates an object used to cache the inverse matrix of x

makeCacheMatrix <- function(x = matrix()) {
  inv_m <- NULL
  set <- function(y){
    x <<- y
    inv_m <<- NULL
  }
  get <- function() x
  setinv <- function(i) inv_m <<- i
  getinv <- function() inv_m
  list(set = set,get = get,setinv = setinv,getinv = getinv)
}


## This function first checks whether the given matrix x can be inversed.
## If x can be inversed, which means det(x) is not 0, it will return its
## cached inverse matrix, or it will show an error message and return NULL

cacheSolve <- function(x, ...) {
  inv_m <- x$getinv()
  if(!is.null(inv_m)){
    message("Getting cache data")
    return(inv_m)
  }
  data <- x$get()
  if(det(data) == 0){
    message("This matrix cannot inverse.")
    inv_m <- NULL
  }
  else{
    inv_m <- solve(data)
  }
  x$setinv(inv_m)
  inv_m
=======
## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
>>>>>>> 7f657dd22ac20d22698c53b23f0057e1a12c09b7
}
