corr <- function(directory, threshold =0) {
  df<- complete(directory)
  df <- df[df$nobs >= threshold,]
  x<-NULL
  if (nrow(df) > 0 ) { 
    files <- paste0(directory, "//",formatC(df$id, width = 3, format = "d", flag = "0"),".csv")
    for (i in files) 
    {
      df<-read.csv(i)
      df<-df[complete.cases(df),]
      x<-rbind(x,cor(df$sulfate,df$nitrate))
    }
  }
  x
  
}