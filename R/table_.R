#' table_
#'
#' makes table

table_ <- function(df_column){
  a <- as.data.frame(table(df_column,useNA="ifany"))
  a <- a[order(a$Freq),]
  a$Perc <- as.character(round((a$Freq / sum(a$Freq)) * 100,2))
  a$Perc <- paste0(a$Perc,"%")
  rownames(a) <- nrow(a):1
  return(a)
}
