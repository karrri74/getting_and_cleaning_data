The script is written as a function, so:
unzinp the Samsung data files to your working folder.
For the script to work dplyr package has to be installed, library(dplyr) not necessary
Download the zip file from : https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Copy paste y_train.txt, y_test.txt,X_train.txt,X_test.txt,subject_test.txt, subject_train.txt,features.txt,activity_labels.txt
to Your working folder.

In R write:
>source("run_analysis.R")
>x<-run_analysis()
>View(x)

to view the results.

The script is divided into 12 blocks:

1: read in the necessary files.
2: bind y_train,y_test, X_test,X_train,subject_test,subject_train together to from a dataframe with the measurements,
and grab the names of the variables from features.
3: clean workspace to free memory (not necessary on modern computers, mine however..).
4: add variables subject and activity to the names extracted from features and label the data.
5: subset the means and the standard deviations from the data and bind them together
6: clean workspace
7: replace activity variable with descriptive values
8: clean workspace
9: load dplyr package
10: group data by subject and activity (not sure if this was necessary, but just in case)
11: calculate means by subject and activity
12: return result


