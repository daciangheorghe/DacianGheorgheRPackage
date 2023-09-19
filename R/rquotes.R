#' rquotes
#'
#' Converts backslashes in path to foward slashes. You have to add r"()" inside the function. \cr
#' For Example: \code{rquotes(r"(C:[\\]Users[\\]DacianGheorghe[\\]Documents\)")} returns: \code{"C:/Users/DacianGheorghe/Documents/"}.
rquotes <- function(a){
  a <- gsub(pattern="\\\\",replacement="/",x=a)
  return(a)
}


