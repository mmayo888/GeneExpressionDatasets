library(foreign)

# NOTE: Class column can be anywhere, apparently. Need to locate and sift to the end.
# Set a relation name for each dataset -- they are currently all the same
# There is a stupid meta column in some datasets that need to be eliminated

convert <- function(tab_file){
  # Read in the tab file, skipping the first two lines
  data<-read.csv(paste("tab/", tab_file,".tab",sep=""),
                 sep="\t",skip=2,blank.lines.skip=TRUE)
  # Eliminate rows with NAs, which is mainly to get rid of the last blank line
  # in the data
  data<-data[complete.cases(data),]
  # Save the arff file
  write.arff(data,paste("arff/",tab_file,".arff",sep=""))
  # Report
  cat(tab_file,"\t",dim(data),"\n")
}

# The six main datasets
#convert("01_leukemia")
#convert("02_SRBCT")
#convert("03_MLL")
#convert("04_DLBCL")
#convert("05_prostata")
#convert("06_lung")

# Some other selected challenging ones
#convert("07_AMLGSE2191")
#convert("08_braintumor")
#convert("09_glioblastoma")
