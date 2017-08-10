library(foreign)
library(plyr)

convert <- function(tab_file){
  # Read in the first line of the tab file, which is the attribute name
  header<-read.csv(paste("tab/", tab_file,".tab",sep=""),
                   sep="\t",blank.lines.skip=TRUE,nrows=1,header=FALSE)
  # Read in the tab file, skipping the first two lineswhich are the attribute names
  # and the types
  data<-read.csv(paste("tab/", tab_file,".tab",sep=""),
                 sep="\t",skip=2,blank.lines.skip=TRUE)
  # Munge the header and the data
  for (i in 1:ncol(data)) 
    colnames(data)[i]=paste("a",i,"_",as.character(header[1,i]),sep="")
  # Eliminate rows with NAs, which is mainly to get rid of the last blank line
  # in the data
  data<-data[complete.cases(data),]
  # Do some dataset-specific adjustments
  if (tab_file=="07_AMLGSE2191"){
    # Remove the last meta column
    data<-data[,1:(ncol(data)-1)]
  } else if (tab_file=="01_leukemia"|tab_file=="03_MLL"
             |tab_file=="05_prostata"|tab_file=="06_lung"|
             tab_file=="09_glioblastoma"){
    # Move the class to the end
    data<-data[,c(2:(ncol(data)),1)]
  }
  # debug just before the arff file
  #print(dim(data))
  #print(data[1:3,1:3])
  # Save the arff file
  filename=paste("arff/",tab_file,".arff",sep="")
  write.arff(data,filename,relation=tab_file)
}

# The six main datasets
convert("01_leukemia")
convert("02_SRBCT")
convert("03_MLL")
convert("04_DLBCL")
convert("05_prostata")
convert("06_lung")

# Some other selected challenging ones
convert("07_AMLGSE2191")
convert("08_braintumor")
convert("09_glioblastoma")
