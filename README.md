WearableComputing
=================

The purpose of this project is to demonstrate my ability to collect, work with, and clean a data set

Check for UCI HAR Dataset folder

Make sure the files are available in the folder

Read all the values from features.txt file to variables and all values from activity_lables.txt to activity data tables

Read the training data into the train variables

Read the testing data into the test variables

Combine train data and test data in that order 

Rename the column names to use information from features file

Combine train activity and test activity

Combine training subject and test subjects

Rename the column name to subject

Before combining all data, subject and related activity into one data table, lets replace activity numbers
with descriptive names present in the activity_labels file

Storing all activites data into a temp variable for merging 

Created an order variable to store the order of activities 

Merge activities data with all y (to replace numericals with activity name)

since merge command sorts the data after merging, we are going to restore the order of the data

Replace numbers with equivalent descriptive activity names

Change the name of the column to activity from "V1"

Complete data set with all values

Modify the column names for all the data

convert all column names to lower case and then remove all instances of "-" from the columns

Remove all instances of "("

Remove all instances of ")"

Remove all instances of ","

Push all properly formated names to column names of our dataset

Find columns that have mean or standard deviations in their names, please note I included gravityMean, tBodyAccMean, tBodyAccJerkMean, tBodyGyroMean, tBodyGyroJerkMean, activity and subjects as well

Data with only mean and standard deviation for each measurement

Melt the data set with activity and subjects as Id's

dcast them to include all the combinations of subject and activity for each variable and perform mean

Write the resulting tidy set to UCI HAR Dataset folder

