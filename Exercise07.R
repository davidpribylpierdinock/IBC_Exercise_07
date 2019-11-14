#iris is a preloaded dataframe in Rstudio

#Returns odd rows of a given dataframe

oddrows <- function(x){
  l = nrow(x)
  i = 1
  while(i<=l){
    print((x[i,]))
    i = i+2
  }
}

# returns # of observations of a given species

speciesNumber <- function(sp){
  sum(iris$Species==sp)
}

#returns a dataframe to the console for flowers with a sepal width greater than inputed value

sepWid <- function(x = 1){
  n = sum(iris[,2]>x)
  sepList <- iris[1:n,]
  count = 1
  for(i in 1:nrow(iris)){
    if(iris[i,2]>x){
      sepList[count,] <- iris[i,]
      count = count + 1
    }
  }
  return(sepList)
}

#makes a dataframe in global environment from sepWid function (using 4 as an example width value)

sepWid_Data <- sepWid(4)

#returns .csv file for a specified species

speciesData <- function(x){
  spDat <- iris[iris$Species==x,]
  write.csv(spDat, paste(x,".csv"), row.names = FALSE)
}


