pollutantmean <- function(directory, pollutant, id = 1:332){
        mypath <- file.path(getwd(), directory)
        myDataFrame <- data.frame()
        for (i in id) {
                newfilename <- sprintf("%03d.csv", i)
                newfile <- paste(mypath, newfilename, sep="/")
                myDataFrame <- rbind(myDataFrame, read.csv(newfile, header=TRUE))
        }
        print(mean(myDataFrame[[pollutant]], na.rm=TRUE))
}