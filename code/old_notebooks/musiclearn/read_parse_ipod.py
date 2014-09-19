__author__ = 'szeitlin'

#read in ipod "txt" file & clean it up into a usable table

#need to use universal 'rU' EOL, see unicode notes for details re: UTF16

import codecs

opened = codecs.open("All_iPod_Music_Cleaned_Up_031114.txt", 'rU', 'UTF16')

df = pandas.read_csv(opened, sep='\t')

#want to check if some of these columns can be dropped, i.e. if none of the rows have
#a value other than NaN?

#how to view all column names? (equivalent of names in R?)

names = df.columns.values.tolist()

#things to try first:

#histogram of #times played: see ipython notebook



#scatter plots:

#last played as a function of date added?

#track counts as a function of genre, or artist

#skips vs. number of times played


