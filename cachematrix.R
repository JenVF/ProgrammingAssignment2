## Below are two functions used to create a special object that stores a matrix and cache's its inverse.
## The first function creates a matrix in which there is the list wiht a function to:
## set/define the matrix
## get this matrix
## set/calculate the inverse of this matrix
## get the inversed matrix

makeCacheMatrix <- function(x = matrix()) {
	im<-NULL
 	set<-function(y){
		x<<-y
		im<<-NULL
		}
	get<-function() x
	setinvmatrix<-function(solve) im<<- solve
	getinvmatrix<-function() im
	list(set=set, get=get, setinvmatrix=setinvmatrix, getinvmatrix=getinvmatrix)
}

## This function returns the inversed matrix. 

cacheSolve <- function(x, ...) {
	## It checks if the inversed matrix was previously calculated. 
	im <-x$getinvmatrix()
	if(!is.null(im)) {
		## If yes, it returns the previously calculated inversed matrix.
		message("getting cached data")
		return(im)
	}
	## If not, it calculates the inversed matrix.
	data <- x$get()
	im <- solve(data)
	x$setinvmatrix(im)
	im
	## Returns a matrix that is the inverse of 'x'
}


   







