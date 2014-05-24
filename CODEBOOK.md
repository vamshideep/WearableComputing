
Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals taccxyz and tyyroxyz. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tbodyaccxyz and tgravityaccxyz) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tbodyaccjerkxyz and tbodygyrojerkxyz). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tbodyaccmag, tgravityaccmag, tbodyaccjerkmag, tbodygyromag, tbodygyrojerkmag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fbodyaccxyz, fbodyaccjerkxyz, fbodygyroxyz, fbodyaccjerkmag, fbodygyromag, fbodygyrojerkmag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'xyz' is used to denote 3-axial signals in the X, Y and Z directions.

The set of variables that were estimated from these signals are: 

mean: Mean value
std: Standard deviation

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle variable:

gravitymean
tbodyaccmean
tbodyaccjerkmean
tbodygyromean
tbodygyrojerkmean

The complete list of variables of each feature vector is here
=============================================================

|    | names.sds.                        |
|----|-----------------------------------|
| 1  | subject                           |
| 2  | activity                          |
| 3  | tbodyaccmeanx                     |
| 4  | tbodyaccmeany                     |
| 5  | tbodyaccmeanz                     |
| 6  | tbodyaccstdx                      |
| 7  | tbodyaccstdy                      |
| 8  | tbodyaccstdz                      |
| 9  | tgravityaccmeanx                  |
| 10 | tgravityaccmeany                  |
| 11 | tgravityaccmeanz                  |
| 12 | tgravityaccstdx                   |
| 13 | tgravityaccstdy                   |
| 14 | tgravityaccstdz                   |
| 15 | tbodyaccjerkmeanx                 |
| 16 | tbodyaccjerkmeany                 |
| 17 | tbodyaccjerkmeanz                 |
| 18 | tbodyaccjerkstdx                  |
| 19 | tbodyaccjerkstdy                  |
| 20 | tbodyaccjerkstdz                  |
| 21 | tbodygyromeanx                    |
| 22 | tbodygyromeany                    |
| 23 | tbodygyromeanz                    |
| 24 | tbodygyrostdx                     |
| 25 | tbodygyrostdy                     |
| 26 | tbodygyrostdz                     |
| 27 | tbodygyrojerkmeanx                |
| 28 | tbodygyrojerkmeany                |
| 29 | tbodygyrojerkmeanz                |
| 30 | tbodygyrojerkstdx                 |
| 31 | tbodygyrojerkstdy                 |
| 32 | tbodygyrojerkstdz                 |
| 33 | tbodyaccmagmean                   |
| 34 | tbodyaccmagstd                    |
| 35 | tgravityaccmagmean                |
| 36 | tgravityaccmagstd                 |
| 37 | tbodyaccjerkmagmean               |
| 38 | tbodyaccjerkmagstd                |
| 39 | tbodygyromagmean                  |
| 40 | tbodygyromagstd                   |
| 41 | tbodygyrojerkmagmean              |
| 42 | tbodygyrojerkmagstd               |
| 43 | fbodyaccmeanx                     |
| 44 | fbodyaccmeany                     |
| 45 | fbodyaccmeanz                     |
| 46 | fbodyaccstdx                      |
| 47 | fbodyaccstdy                      |
| 48 | fbodyaccstdz                      |
| 49 | fbodyaccmeanfreqx                 |
| 50 | fbodyaccmeanfreqy                 |
| 51 | fbodyaccmeanfreqz                 |
| 52 | fbodyaccjerkmeanx                 |
| 53 | fbodyaccjerkmeany                 |
| 54 | fbodyaccjerkmeanz                 |
| 55 | fbodyaccjerkstdx                  |
| 56 | fbodyaccjerkstdy                  |
| 57 | fbodyaccjerkstdz                  |
| 58 | fbodyaccjerkmeanfreqx             |
| 59 | fbodyaccjerkmeanfreqy             |
| 60 | fbodyaccjerkmeanfreqz             |
| 61 | fbodygyromeanx                    |
| 62 | fbodygyromeany                    |
| 63 | fbodygyromeanz                    |
| 64 | fbodygyrostdx                     |
| 65 | fbodygyrostdy                     |
| 66 | fbodygyrostdz                     |
| 67 | fbodygyromeanfreqx                |
| 68 | fbodygyromeanfreqy                |
| 69 | fbodygyromeanfreqz                |
| 70 | fbodyaccmagmean                   |
| 71 | fbodyaccmagstd                    |
| 72 | fbodyaccmagmeanfreq               |
| 73 | fbodybodyaccjerkmagmean           |
| 74 | fbodybodyaccjerkmagstd            |
| 75 | fbodybodyaccjerkmagmeanfreq       |
| 76 | fbodybodygyromagmean              |
| 77 | fbodybodygyromagstd               |
| 78 | fbodybodygyromagmeanfreq          |
| 79 | fbodybodygyrojerkmagmean          |
| 80 | fbodybodygyrojerkmagstd           |
| 81 | fbodybodygyrojerkmagmeanfreq      |
| 82 | angletbodyaccmeangravity          |
| 83 | angletbodyaccjerkmeangravitymean  |
| 84 | angletbodygyromeangravitymean     |
| 85 | angletbodygyrojerkmeangravitymean |
| 86 | anglexgravitymean                 |
| 87 | angleygravitymean                 |
| 88 | anglezgravitymean                 |

I have cleaned up the orginal data set by performing the following tasks
=========================================================================

- Combined training data with test data to create one data set
- Added variable names for each column of the data 
- Converted all variable names to lowercase
- Removed symbols and special characters 
- Added subjects info for each observation
- Added activity information for each observation
- Replaced activity info with more meaningful descriptive names
- Choose only mean and standandard deviation variables from the entire dataset
- Created a second independent tidy data set with the average of each variable for each activity and each subject


Detailed steps that have been performed to get to the dataset:
=========================================================================

- Check for UCI HAR Dataset folder
- Make sure the files are available in the folder
- Read all the values from features.txt file to variables and all values from activity_lables.txt to activity data tables
- Read the training data into the train variables
- Read the testing data into the test variables
- Combine train data and test data in that order 
- Rename the column names to use information from features file
- Combine train activity and test activity
- Combine training subject and test subjects
- Rename the column name to subject
- Before combining all data, subject and related activity into one data table, lets replace activity numbers
with descriptive names present in the activity_labels file
- Storing all activites data into a temp variable for merging 
- Created an order variable to store the order of activities 
- Merge activities data with all y (to replace numericals with activity name)
- since merge command sorts the data after merging, we are going to restore the order of the data
- Replace numbers with equivalent descriptive activity names
- Change the name of the column to activity from "V1"
- Complete data set with all values
- Modify the column names for all the data
- convert all column names to lower case and then remove all instances of "-" from the columns
- Remove all instances of "("
- Remove all instances of ")"
- Remove all instances of ","
- Push all properly formated names to column names of our dataset
- Find columns that have mean or standard deviations in their names, please note I included gravityMean, tBodyAccMean, tBodyAccJerkMean, tBodyGyroMean, tBodyGyroJerkMean, activity and subjects as well
- Data with only mean and standard deviation for each measurement
- Melt the data set with activity and subjects as Id's
- dcast them to include all the combinations of subject and activity for each variable and perform mean
- Write the resulting tidy set to UCI HAR Dataset folder
