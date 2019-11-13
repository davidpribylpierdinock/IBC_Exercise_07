#Returns odd rows of a given dataframe

oddrows <- function(x){
  l = nrow(x)
  i = 1
  while(i<=l){
    print((x[i,]))
    i = i+2
  }
}

