#I'm posting my assignment as an Issue since I couldn't commit it to the GitHub repository.

makeCacheMatrix <- function(x = matrix()) {
invmatrix <- NULL
setMatrix <- function(y) {
x <<- y
invmatrix <<- NULL
}

getmatrix <- function() x
setinverse <- function(inverse) invmatrix <<- inverse
getinverse <- function() invmatrix
list(setmatrix = setmatrix, getmatrix = getmatrix,
setnverse = setinverse, getinverse = getinverse)
}

#Return the value of the invertible matrix from the makeCacheMatrix function

cacheSolve <- function(x, ...) {

invmatrix <- x$getinverse()
if(!is.null(invmatrix)) {
return(invMatrix)
}
else {
MatrixData <- x$getMatrix()
invMatrix <- solve(MatrixData, ...)
x$setInverse(invMatrix)
return(invMatrix)
}

}
