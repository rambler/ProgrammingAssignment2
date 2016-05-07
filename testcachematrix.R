

testMatrixCaching <- function(size = 1000) {
  data <- rnorm(size*size)
  test <- matrix(data, nrow=size, ncol=size)
  testC <- makeCacheMatrix(test)
  startTime <- Sys.time()
  testR <- cacheSolve(testC)
  lap1Time <- Sys.time()
  testR <- cacheSolve(testC)
  lap2Time <- Sys.time()
  lap1duration <- as.double(difftime(lap1Time,startTime, units="secs"))
  lap2duration <- as.double(difftime(lap2Time,lap1Time, units="secs"))
  improvementPercent <- lap1duration/lap2duration
  print(improvementPercent)
}
  