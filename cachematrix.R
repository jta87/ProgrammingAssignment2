# This function creates a list containing the following functions:
# 1. 'setMatrix(X)' which sets the value of 'M' to be 'X'
# 2. 'getMatrix()' which returns the value of 'M'
# 3. 'setInverse(X)' which sets the value of 'inverse' to be 'X'
# 4. 'getInverse()' which returns the value of 'inverse'

makeCacheMatrix <- function(M=matrix()) {
  inverse <- NULL 
  setMatrix <- function(newMatrix)  {      # Defining the function 'setMatrix'
    M <<- newMatrix                        # The function assigns to 'M' the value 'newMatrix'
    inverse <<- NULL                       # Resets the value of 'inverse' 
  } 
  getMatrix <- function() {                # Defining the function 'getMatrix'
    M                                      # The function prints the value of 'M'
  }
  setInverse <- function(newInverse)  {    # Defining the function 'setInverse'
    inverse <<- newInverse                  # The function assigns to 'inverse' the value 'newInverse'
  } 
  getInverse <- function() {               # Defining the function 'getInverse'
    inverse                                # The function prints the value of 'Inverse'
  }
  list(setMatrix = setMatrix, getMatrix = getMatrix, setInverse = setInverse, getInverse = getInverse)     # Returns the list of function described above
}



# This function calculates the inverse of the matrix M. 
# If the inverse has been calculate before, the function retrieves the 
# information from the cache data.

cacheSolve <- function(a){
  
  inverse <- a$getInverse()
  
  if(is.null(inverse)){             # Checks if the value of 'inverse' is null
    M <- a$getMatrix()              # Since the value of 'inverse is null, find the inverse
    inverse <- solve(M)             
    a$setInverse(inverse)           # Store the value of the inverse
  }
  
  else{
    message("Getting inverse from cache data")     # As the value of 'inverse' is not null, we can print the stored value
  }
  inverse                           # Return the value of inverse
}