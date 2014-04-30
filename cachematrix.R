## This are two functions:
## function 1 makes a matrix, while function 2 will inverse the matrix

## This function takes an argument x of type matrix
makeCacheMatrix <- function(x = matrix()) { 
        ##Initiate matrix varible
        m <- NULL
        ##Set the function.In other words...the function exists
        set <- function(y) {
                        x <<- y
                        m <<- NULL
                }
        ##use the function
        get <- function() x
        #prepare the Inverse
        setMatInv <- function(MatInv) m <<- MatInv
        getMatInv <- function() m
        ##set ivaribales of the list for the next function
        list(set = set, get = get, setMatInv = setMatInv, getMatInv = getMatInv)
}


## This function takes an matrix and makes the invers matrix using rev()
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        ## query the x vector's cache 
        m <- x$getMatInv()
        ##If the matrix m contains something statement is fullfilled
        if(!is.null(m)) {
                ##Therefore, we return a message and the matrix
                message("getting cached data")
                return(m)
        }
        ##get the data for invers ordering
        data <- x$get()
        ##solve the matrix m 
        m <- solve(data, ...)
        #you have to set x as the new inversee matrix
        x$setMatInv(m)
        #return results
        m
}
