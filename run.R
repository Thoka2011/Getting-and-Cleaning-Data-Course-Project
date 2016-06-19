'*You should create one R script called run_analysis.R that does the following.

- Merges the training and the test sets to create one data set.
- Extracts only the measurements on the mean and standard deviation for each measurement.
- Uses descriptive activity names to name the activities in the data set
- Appropriately labels the data set with descriptive variable names.
- From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
'

#######################################################################
# Step 1:- Merge the training and the test sets to create one data set.
########################################################################

#Clean the work space
rm(list=ls())
#Set the directory
setwd("/Users/thoka/Google Drive/CDP/UCI HAR Dataset/")
list.files()

#Get the data # need to revise
if(!file.exists("./data")){dir.create("./data")}
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile="./data/Dataset.zip",method="curl")


# Unzip the data
unzip(zipfile="./data/Dataset.zip",exdir="./data")
path_rf <- file.path("./data" , "UCI HAR Dataset")
files<-list.files(path_rf, recursive=TRUE)
files

'*Variable name | Features.txt |Subject           | Activity
  Data          |X_train.txt   |Subject_train.txt |Y_train.txt
                |X_test.txt    |Subject_test.txt  |Y_test.txt
*'
'*
test/subject_test.txt
test/X_test.txt
test/y_test.txt
train/subject_train.txt
train/X_train.txt
train/y_train.txt
*'
  
#Get the Subject files To make subject coulmn (train/subject_train.txt,test/subject_test.txt)

subjectTrain = read.table('./train/subject_train.txt',header=FALSE)
subjectTest = read.table('./test/subject_test.txt',header=FALSE)

#Get the Activity files To make Activity column (Y_train.txt” , “Y_test.txt)

activityTrain = read.table('./train/y_train.txt',header = FALSE)
activityTest = read.table('./test/y_test.txt',header = FALSE)

#Get the Feature files To make Feature column (train/X_train.txt, test/X_test.txt)

XTrain = read.table('./train/X_train.txt',header = FALSE)
XTest = read.table('./test/X_test.txt',header = FALSE)

#Get the features Name to make the label row (features.txt)
featuresName = read.table('features.txt', header = FALSE)  

#Merge the trainig and test data set to creat one data set
subjectData <-rbind(subjectTrain,subjectTest)
ActivityData<-rbind(activityTrain,activityTest)
XData<-rbind(XTrain,XTest)

#Set the column names
names(subjectData)<-c("subject")
names(ActivityData)<-c("activity")
names(XData)<- featuresName$V2  # Very good code

# To form the data set

MergedData <- cbind(subjectData, ActivityData)
Data <- cbind(XData, MergedData)

# To see the Data labels we have
names(Data)

##################################################################################################
# Step 2:- Extract only the measurements on the mean and standard deviation for each measurement.
##################################################################################################

#needs to change the variable anames
colNames = names(Data)

# Create a logicalVector that contains TRUE values for the ID, mean() & stddev() columns and FALSE for others
logicalVector = (grepl("activity",colNames) | grepl("subject",colNames) | grepl("mean\\(\\)|std\\(\\)",colNames) | grepl("Activity..",colNames) | grepl("subject..",colNames) )

# Subset finalData table based on the logicalVector to keep only desired columns
DataExtracted=Data[logicalVector==TRUE]
names(DataExtracted)


DataExtracted2=Data[logicalVector==TRUE]
names(DataExtracted)
