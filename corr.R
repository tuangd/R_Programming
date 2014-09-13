corr <- function(directory, threshold = 0){
        mypath <- file.path(getwd(), directory)
        myfiles <- dir(mypath,pattern=".csv")
        corrAnswer <- numeric()
        for (i in 1:length(myfiles)) {
                newfile <- paste(mypath, myfiles[i], sep="/")
                mytempdata <- read.csv(newfile, head=TRUE)
                cmpCase <- sum(complete.cases(mytempdata))
                if (cmpCase > threshold){
                        forcompute <- na.omit(mytempdata)
                        forcompute2 <- forcompute[,2:3]
                        corrAnswer <- c(corrAnswer, cor(forcompute2[,1] , forcompute2[,2]))
                }
                rm(mytempdata)        
        }
        return(corrAnswer)
}