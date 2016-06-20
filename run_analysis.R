


#######################################################################
# Step 1:- Merge the training and the test sets to create one data set.
########################################################################

#Clean the work space
rm(list=ls())
#Set the directory
setwd("/Users/thoka/Google Drive/CDP/")
list.files()

#Get the data 
if(!file.exists("./data")){dir.create("./data")}
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile="./data/Dataset.zip",method="curl")


# Unzip the data
unzip(zipfile="./data/Dataset.zip",exdir="./data")
path_rf <- file.path("./data" , "UCI HAR Dataset")
files<-list.files(path_rf, recursive=TRUE)
files

# Will use these files
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
names(XData)<- featuresName$V2  

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

# Create a logical Vector that contains TRUE values for activity,subject mean and standard deviation columns and FALSE for others
Vector = (grepl("activity",colNames) | grepl("subject",colNames) | grepl("mean\\(\\)|std\\(\\)",colNames) | grepl("Activity..",colNames) | grepl("subject..",colNames) )

# Subset the data with TRUE logical Vector to get only the mesurment with the the mean and standard deviation
DataExtracted=Data[Vector==TRUE]
names(DataExtracted)



##################################################################################################
# Step 3:- Uses descriptive activity names to name the activities in the data set.
##################################################################################################

ActivityLabels = read.table('./activity_labels.txt',header=FALSE)


DataExtracted[, "activity"] <- ActivityLabels[DataExtracted[, "Activity"], 2]


##################################################################################################
# Step 4:- Appropriately label the data set with descriptive variable names.
##################################################################################################


names(DataExtracted)<-gsub("^t", "time", names(DataExtracted))
names(DataExtracted)<-gsub("Acc", "Accelerometer", names(DataExtracted))
names(DataExtracted)<-gsub("^f", "frequency", names(DataExtracted))
names(DataExtracted)<-gsub("Gyro", "Gyroscope", names(DataExtracted))
names(DataExtracted)<-gsub("Mag", "Magnitude", names(DataExtracted))
names(DataExtracted)<-gsub("BodyBody", "Body", names(DataExtracted))



##################################################################################################
# Step 5:- From the data set in step 4, creates a second, independent tidy data set with the average 
# of each variable for each activity and each subject..
##################################################################################################


install.packages("plyr")
library(plyr)
tidyData<-aggregate(. ~subject + Activity, DataExtracted, mean)

write.table(tidyData, file = "./tidydata.txt",row.name=FALSE)
