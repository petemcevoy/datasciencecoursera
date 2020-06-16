

pollutantmean <- function (directory, pollutant, id = 1:332) {
  
  files <- paste0(directory, "//",formatC(id, width = 3, format = "d", flag = "0"),".csv")
  df.list<-lapply(files,read.csv)
  df.frame<-do.call(rbind, df.list)
  mean(df.frame[!is.na(df.frame[pollutant]),pollutant])
}

