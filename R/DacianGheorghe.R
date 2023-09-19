#' DacianGheorghe
#'
#' \code{?DacianGheorghe} contains notes on various functions.\cr
#' Last update: 06/09/2023 14:30 \cr
#' Functions in DacianGheorghe Package
#' \strong{DacianGheorghe} \cr
#' \strong{go} \cr
#' \strong{table_} \cr
#' \strong{rquotes} \cr
#'
#' Location where packages are installed in R \cr
#' \code{.libPaths()}
#'
#' \code{setwd("C:/Users/dacia/OneDrive/Documents/R code/DaciNotesPackage")}
#'
#' Install package from github\cr
#' \code{devtools::install_github("daciangheorghe/DaciNotesPackageGithub")}
#'
#' read in CSV
#'\code{read.csv("workdata.sav")} = \code{read.csv2()} but different default sep and dec default parameters \cr
#' haven::read_sav("workdata.sav")} \cr
#' ook sav met package foreign
#'
#' Indien data uit spss komt dan kunnen variabelen vaak haven_labelled zijn.\cr
#' gebruik \code{factor()} om om te zetten naar factor, niet \code{as.factor()}
#' Keep objects\cr
#' \code{KEEP <- ls(); KEEP <- c(KEEP,"KEEP")}
#'
#' To delete all objects in local enviroment use \code{rm(list = ls())}. \cr
#' To delete all objects in global enviroment use \code{rm(list = ls(envir = .GlobalEnv), envir = .GlobalEnv)} or \code{rm(list = ls())} in R workspace.
#' To delete all objects in local enviroment except .., use \code{rm(list=setdiff(ls(), c("an object","another object")))}\cr
#' or \code{rm(list=setdiff(ls(), KEEP))}
#'
#' Turn on scientific notation with \cr
#' \code{options(scipen=0)}
#' Save df\cr
#' \code{save(result_QRM,file="result_QRM.Rda")}\cr
#' Load df\cr
#' \code{load("result_LRM.Rda")}\cr
#' \code{df <- load("result_LRM.Rda")} werkt niet!
#'
#' No \code{attach()}, houdt variabelen zoals ze waren toen attach() ingeroepen werdt
#'
#' \code{NROW()} en \code{NCOL()} voor vectors ipv \code{nrow()} en \code{ncol()}
#'
#' Aggregate by means\cr
#' \code{aggregate(df$A, list(df$GROUP), mean)}
#'
#' Extrapoleer geagregeerde data naar de volledige data dmv een group identifier \cr
#' \code{df_merged <- merge(df,agr,by="GROUP")}
#'
#' Detecteer en verwijder missing values \cr
#' \code{colSums(is.na(df))\cr
#' na.omit()}
#'
#' Get rid of single warning \cr
#' \code{suppressWarnings( {code} )}
#'
#' Maak table met labels \cr
#' \code{table(mtcars$vs,mtcars$hp,dnn=c("vs","hp"))} \cr
#' Waarbij vs: verticale labels & hp: horizontale labels.
#'
#' Filter meerdere condities voor zelfde en verschillende variabelen \cr
#' FIlter obv meerder OR values: \code{filter(colour == "blue" | colour == "red")} of \code{filter(colour \%in\% colorvec)} \cr
#' lijn hierboven zorgt voor error het gedeelte met de procent
#' Filter obv meerder AND values (meerdere kolommen dus ook): \code{filter(colour == "blue" & country == "Belgium")},
#' gebruik niet: \code{filter(colour == colorvec)}
#'
#' Code which only displays duplicate rows \cr
#' \code{df_dg[unlist(by(seq(nrow(df_dg)), df_dg$col1,function(x) if(length(x)-1) x)), ]}
#'
#' Rename column \cr
#' \code{df <- rename(df, numeric_var = OriginalNumericVar)}
#' zie '='
#'
#' Correctly set size and scale plots (run code before and together with ggplot) \cr
#' \code{ragg::agg_png(filename = "bla.png",width = 1400,height = 700, units = "px",res=300, scaling = 0.65)} \cr
#' Width and height to set size of plot, scaling to scale inside components. Experiment to find right scale. 0.65 good for Arial 11 tekst
#'
#' @section Package info:
#'
#' \emph{---copy text in notepad ---}\cr
#' Location of source code: \emph{C:\\Users\\DacianGheorghe\\OneDrive - UGent\\Misc\\R programming\\R packages\\DacianGheorgheRPackage} \cr
#' To update DacianGheorghe package run \code{library(roxygen2); roxygenise()} in DacianGheorgheRPackage.Rproj and upload folder to github \url{https://github.com/daciangheorghe/DacianGheorgheRPackage}. \cr
#' Run \code{devtools::install_github("daciangheorghe/DacianGheorgheRPackage")} anywhere else to reinstall package.
#'
DacianGheorghe <- function(){
  print("Press ?DacianGheorghe to see notes and comments.")
}
