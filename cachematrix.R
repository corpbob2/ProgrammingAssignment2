## MakeCacheMatrix makes a list that contains functions that do the following
## 1. Set the value of the matrix
## 2. Get the value of the matrix
## 1. Set the value of the inverse of the matrix
## 2. Get the value of the inverse of the matrix

## Write a short comment describing this function

MakeCacheMatrix <- function(x = matrix()) {
	inv <- NULL
	set <- function(y) {
		inv <<- NULL
	}
	get <- function() x
	setinverse <- function(inverse) inv <<- inverse
	getinverse <- function() inv
	list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


## Returns the inverse of a Matrix

cacheSolve <- function(x, ...) {
	inv <- x$getinverse()
	if(!is.null(inv)) {
	message("getting cached data.")
	return(inv)
	}
	data <- x$get()
	inv <- solve(data)
	x$setinverse(inv)
	inv
}
