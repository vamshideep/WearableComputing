##Check for UCI HAR Dataset folder
if(!file.exists("UCI HAR Dataset")){print("Please make sure UCI HAR Dataset folder is available")}

##Make sure the files are available in the folder
list.files("./UCI HAR Dataset/")

## Read all the values from features.txt file to variables and all values from activity_lables.txt to activity data tables
variables <- read.table("./UCI HAR Dataset/features.txt")
activity <- read.table("./UCI HAR Dataset/activity_labels.txt")

##Read the training data into the train variables
train <- read.table("./UCI HAR Dataset/train/X_train.txt")
trainsubject <- read.table("./UCI HAR Dataset/train/subject_train.txt")
trainlabel <- read.table("./UCI HAR Dataset/train/y_train.txt")

##Read the testing data into the test variables
test <- read.table("./UCI HAR Dataset/test/X_test.txt")
testsubject <- read.table("./UCI HAR Dataset/test/subject_test.txt")
testlabel <- read.table("./UCI HAR Dataset/test/y_test.txt")

##Combine train data and test data in that order 
allx <- rbind(train,test)
##Rename the column names to use information from features file
names(allx) <- variables[,2]

##Combine train activity and test activity
ally <- rbind(trainlabel,testlabel)


##Combine training subject and test subjects
subject <- rbind(trainsubject,testsubject)
##Rename the column name to subject
names(subject) <- c("subject")

##Before combining all data, subject and related activity into one data table, lets replace activity numbers
##with descriptive names present in the activity_labels file

##Storing all activites data into a temp variable for merging 
ytemp <- ally

##Created an order variable to store the order of activities 
ytemp$order <- seq(len=nrow(ytemp))

##Merge activities data with all y (to replace numericals with activity name)
m <- merge(ytemp,activity,by="V1",sort=FALSE,all=TRUE)

##since merge command sorts the data after merging, we are going to restore the order of the data
mtemp <- m[sort.list(m$order),-4]

## Replace numbers with equivalent descriptive activity names
ally$V1 <- mtemp$V2

##Change the name of the column to activity from "V1"
names(ally) <- c("activity")

## Complete data set with all values
xysubject <- cbind(allx,ally,subject)


##Modify the column names for all the data
unformatednames <- names(xysubject)

##convert all column names to lower case and then remove all instances of "-" from the columns
unformatednames <- (gsub("-","",tolower(unformatednames)))

##Remove all instances of "("
unformatednames <- gsub("\\(","",unformatednames)

##Remove all instances of ")"
unformatednames <- gsub("\\)","",unformatednames)

##Remove all instances of ","
unformatednames <- gsub("\\,","",unformatednames)

##Push all properly formated names to column names of our dataset
names(xysubject) <- unformatednames

##Find columns that have mean or standard deviations in their names
##Included activity and subjects as well
meanstdcol <- grep("mean|std|activity|subject",names(xysubject))

##Data with only mean and standard deviation for each measurement
datameansstd <- xysubject[,meanstdcol]

##Melt the data set with activity and subjects as Id's
xysubjectmelt <- melt(datameansstd,id=c("activity","subject"))

##dcast them to include all the combinations of subject and activity for each variable and perform mean
sds <- dcast(xysubjectmelt,subject + activity ~ variable,mean)

##Write the resulting tidy set to UCI HAR Dataset folder
write.table(sds,file="./UCI HAR Dataset/tidydata.txt")
