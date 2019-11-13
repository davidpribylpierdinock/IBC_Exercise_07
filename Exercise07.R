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

#returns a dataframe for flowers with a sepal width greater than inputed value
#DOESN"T WORK

sepWid <- function(x = 1){
  n = sum(iris[,2]>x)
  sepList <- iris[1:n,]
  count = 1
  i = 1
  for(i in nrow(iris)){
    if(iris[i,2]>x){
      sepList[count,] <- iris[i,]
      count = count + 1
    }
    i = i+1
  }
  return(sepList)
}
sepWid(3.5)



