## Put comments here that give an overall description of what your
## functions do

## se crea cache de matriz 

makeCacheMatrix <- function(x = matrix()) {
  s <- NULL
  set <- function(y){
    x <<- y
    s <<- NULL
  }
  get <- function() x
  setinv <- function(solve) s <<- solve
  getinv <- function() s
  list(set=set, get=get, getinv=getinv, setinv=setinv)
}


## recuperar matriz invertida realizada

cacheSolve <- function(x, ...) {
        s <- x$getinv()
        if(!is.null(s)){
          message("matriz invertida")
          return(s)
        }
        matriz <- x$get()
        s <- solve(matriz, ...)
        x$setinv(s)
        s
}
