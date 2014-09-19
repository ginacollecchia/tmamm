setwd("/Users/szeitlin/mystuff/projects/MusicViz/tmamm/db")

df <- read.csv("ipod.csv")

library(ggplot2)

names(df)

p <- ggplot(df, aes(Skips, Plays))
p + geom_point()

#but really what we want is skips per time played, I think

#want to remove columns that are mostly NAs, i.e.:
Equalizer
Disc number and count
Track number and count
Volume.Adjustment

smaller <- df[,c(1:9,14:18,20,23:27)]

pairs(smaller)
symbols