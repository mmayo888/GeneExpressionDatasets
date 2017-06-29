#source("http://bioconductor.org/biocLite.R")
#biocLite("GEOquery")

library(knitr)
library(GEOquery)
library(foreign)

# http://bioconductor.org/packages/release/bioc/vignettes/GEOquery/inst/doc/GEOquery.html

# look up GDS numbers here:
# https://www.ncbi.nlm.nih.gov/sites/GDSbrowser

# lung adenocarcinoma dataset
 if (!exists("lung"))
   lung <- show(getGEO("GDS3257")) 
 data<-lung@table
 data<-t(data[,3:ncol(data)])
 data<-data.frame(data,lung@columns$tissue)
# write.arff(data,"lung.arff")

# myelodysplastic syndrome dataset
 if (!exists("myelo"))
   myelo <- show(getGEO("GDS3795")) 
 data<-myelo@table
 data<-t(data[,3:ncol(data)])
 data<-data.frame(data,myelo@columns$disease.state)
# write.arff(data,"myelo.arff")

# pulmanory hypertension dataset
 if (!exists("pulm"))
   pulm <- show(getGEO("GDS4549")) 
 data<-pulm@table
 data<-t(data[,3:ncol(data)])
 data<-data.frame(data,pulm@columns$disease.state)
# write.arff(data,"pulm.arff")

# pancreatic dataset
 if (!exists("panc"))
   panc <- show(getGEO("GDS4103")) 
 data<-panc@table
 data<-t(data[,3:ncol(data)])
 data<-data.frame(data,panc@columns$tissue)
# write.arff(data,"panc.arff")

# psoriais dataset
 if (!exists("psor"))
   psor <- show(getGEO("GDS4600")) 
 data<-psor@table
 data<-t(data[,3:ncol(data)])
 data<-data.frame(data,psor@columns$disease.state)
# write.arff(data,"psor.arff")
