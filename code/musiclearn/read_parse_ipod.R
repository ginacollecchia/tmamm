library(plyr)
library(Hmisc)

#### this was tricky for no good reason

setwd("~/mystuff/projects/MusicViz/tmamm/db/")

myfile <- "All_iPod_Music_Cleaned_Up_031114.txt"

getfile <- file(myfile, encoding = "UTF-16")

toptwo <- readLines(getfile, n=2, ok=TRUE) #just to check

tabled <- read.csv(getfile, quote="", sep="\t")

if(!file.exists("ipod.csv")){
  file.create("ipod.csv")
};

write.csv(tabled, "ipod.csv", sep = ",")

