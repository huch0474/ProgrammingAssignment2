## Basically I only replaced the "mean" function in the example 
## to "solve" function to create the matrix I want


## Using "solve" function to set up the matrix I want

makeCacheMatrix <- function(x = matrix()) {
	m<-NULL
	set<-function(y){
		x<<-y
		m<<-NULL
	}
	get<-function() x
	setmatrix<-function(solve) m<<-solve
	getmatrix<-function() m
	list(set=set,get=get,setmatrix=setmatrix,getmatrix=getmatrix)
}


## get the inverse of the matrix we got

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	m<-x$getmatrix()
	if(!is.null(m)){
		message("getting cached data")
		return(m)
    	}
    	data<-x$get()
    	m<-solve(data, ...)
    	x$setmatrix(m)
   	m
}
