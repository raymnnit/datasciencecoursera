## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        m<-NULL  ##Setting the value of cache variable
	setmatrix <- function(y){ ##Function to set the matrix
		x <<- y ##local scoping of matrix X taken as input
		m <<- NULL ##local scoping of m as NULL
	}
	getmatrix <- function() x ##Gets the matrix x
	setinverse<- function(inv_matrix){ ##takes the inverse of the matrix and assigns it to m
		m<<- inv_matrix
		}
	getinverse<- function() m ##gets the inverse
	
   list(setmatrix=setmatrix, getmatrix=getmatrix, setinverse=setinverse, getinverse=getinverse) ##List containing the matrix
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        m <- x$getinverse ##Calling getinverse to get the matrix cached as inverse
	if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
	data <- x$getmatrix() ##In case the cached inverse is not available, getting the original matrix to invert
        
	m <- solve(data) ##Using solve to invert
        
	x$setinverse(m) ##Calling the setinverse function to assign 'data' to m variable
        m
}
