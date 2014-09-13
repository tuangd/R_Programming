complete <- function(directory, id = 1:332){
        mypath <- file.path(getwd(), directory)
        nobs <- vector()
        for (i in id) {
                mytempdata <- data.frame()
                newfilename <- sprintf("%03d.csv", i)
                newfile <- paste(mypath, newfilename, sep="/")
                mytempdata <- read.csv(newfile, head=TRUE)
                countC <- sum(complete.cases(mytempdata))
                nobs <- c(nobs, countC)
                rm(mytempdata,countC)
                
        }
        myDataFrame <- data.frame(id , nobs)
        print(myDataFrame)
}