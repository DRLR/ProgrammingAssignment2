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
        #
        setmean <- function(mean) m <<- mean
        getmean <- function() m
        ##reorder all rows using rev. FOR MORE INFO SEE ?REV
        list <- apply(data, 2, rev)
        ##make the matrix m from the list
        m <- as.matrix(list)
        #return results
        m
}


## This function takes an matrix and makes the invers matrix using rev()
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        ## query the x vector's cache 
        m <- x$getmean()
        ##If the matrix m contains something statement is fullfilled
        if(!is.null(m)) {
                ##Therefore, we return a message and the matrix
                message("getting cached data")
                return(m)
        }
        ##get the data for invers ordering
        data <- x$get()
        ##make the matrix m from the list
        m <- as.matrix(data)
        #return results
        m
}
