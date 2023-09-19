#' go
#'
#' This function load packages and sets some options. \cr
#' Run this function at the beginning of every R script.
go <- function(){
  library(conflicted)
  conflict_prefer("filter", "dplyr")
  library(ggplot2)
  library(tidyr)
  library(dplyr)
  library(tictoc)
  library(openxlsx)
  options(scipen = 999)
  rm(list = ls(envir = .GlobalEnv), envir = .GlobalEnv)
}
