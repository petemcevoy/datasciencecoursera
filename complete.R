complete <- function (directory, id=1:332) {
  
  x<-list()
  for (i in id) 
  {
    files <- paste0(directory, "//",formatC(i, width = 3, format = "d", flag = "0"),".csv")
    df<-read.csv(files)
    df<-df[complete.cases(df),]
    x<-rbind(x,c("id"=i, "nobs"=nrow(df)))
             
  }
  
  data.frame (x)
  
}