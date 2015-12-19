## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
	matrix <- NULL
    	set <- function(y){
        x <<- y  
        matrix <<- NULL #store matrix in cache 
      }
    get <- function(){
		 x 
	}	
    setInverse <- function(solve){
	 matrix <<- solve 
	}
    getInverse <- function(){
	 m
	}
    list(set = set, get = get,
                 setInverse = setInverse,
                 getInverse = getInverse)  ## create list of functions
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
       m <- x$getInverse()                 #query the x matrix's cache
        if(!is.null(m)){                    #if there is a cache the inverse has been previously calculated
          message("getting cached data")    # sent message indicating this is just cache 
          return(m)                         # return the cache  
        }
        data <- x$get()                     # get the matrix used by makeCacheMatrix function 
        m <- solve(data, ...)               # calculate the inverse of the matrix
        x$setInverse(m)                     # store the inverse matrix in cache using the makeCacheMatrix set function
  }
