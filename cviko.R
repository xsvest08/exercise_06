FindSorted <- function(vector_number){
  x <- as.integer(vector_number)
  for (i in 1:(length(x)-1)){
    if (x[i] < x[i+1]){
      next
    }
    else if(x[i] > x[i+1]){
      
      return(i)
    }
  }
}
FindSorted(c(0,1,2,3,6,7,4,5,8))


IndicateAscending <- function(vector_number){
  #ascending -> 0
  #descending -> 1
  x <- as.integer(vector_number)
  a_d <- c()
  for (i in 1:(length(x)-1)){
    if (x[i] < x[i+1]){
      a_d <- append(a_d,0)
    }
    else if(x[i] > x[i+1]){
      a_d <- append(a_d,1)
    }
  }
  return(a_d)
}
IndicateAscending(c(0,4,5,3,2,1,6,7,8))


BreakPointSort <- function(vector_number){
  x <- as.integer(vector_number)
  x1 <- as.integer(c(0,x,max(x)+1))
  #find asc/desc
  
  
}

BreakPointSort(c(5,1,4,3,7,8,9,2,6))