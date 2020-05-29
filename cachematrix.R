## this is programming assignment 2 for week 3
## this function can set a matrix with the ability to cache the inverse

## sets matrix, gets matrix, sets inverse, gets inverse

makeCacheMatrix <- function(x = matrix()) {
	i <- NULL
	set <- function(y){
		x <<- y
		i<<- NULL
	}
	get <- function() x
	setinverse <- function(inverse) i <<- inverse
	getinverse <- function() i
	list(set= set, get= get, 
		setinverse = setinverse,
		getinverse = getinverse)
}


## This function will compute inverse of matrix if already not cached

cacheSolve <- function(x, ...) {
	i <- x$getinverse()
	if(!is.null(i)){
		message("getting cached data")
		return(i)
	}
	data <- x$get()
	i <- solve(data, ...)
	x$setinverse(i)
	i
        ## Return a matrix that is the inverse of 'x'
}
