WearableComputing
=================

The purpose of this project is to demonstrate my ability to collect, work with, and clean a data set

One of the most exciting areas in all of data science right now is wearable computing - see for example this article(http://www.insideactivitytracking.com/data-science-activity-tracking-and-the-battle-for-the-worlds-top-sports-brand/). Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data is collected from the accelerometers from the Samsung Galaxy S smartphone. 


Dataset Information:
======================================

A full description is available at the site where the data was obtained: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here is the data set for the purpose of this project
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, the authors captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 


I have cleaned up this data set and created the following files:
===========================================================================================

- 'README.md'

- 'CODEBOOK.md': Shows information about the variables, descriptions and details of cleanup process 

- 'run_analysis.R': R code to cleanup the original data (please make sure to have original data set in the folder "UCI HAR Dataset")

- 'tidydata.txt' : This is the tidy data set that has been created after running "run_analysis.R" code on the original data set


High level Steps/process performed to get to this data set:
============================================================================
- Combined training data with test data to create one data set
- Added variable names for each column of the data 
- Converted all variable names to lowercase
- Removed symbols and special characters 
- Added subjects info for each observation
- Added activity information for each observation
- Replaced activity info with more meaningful descriptive names
- Choose only mean and standandard deviation variables from the entire dataset
- Created a second independent tidy data set with the average of each variable for each activity and each subject


License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.




