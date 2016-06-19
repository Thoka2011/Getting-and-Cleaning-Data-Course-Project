# Getting-and-Cleaning-Data-Course-Project
The final project for the Getting and Cleaning Data Course

This is the final project for Getting and Cleaning Data course which is one of the coursera.org Courses provided by by Johns Hopkins University.

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set.

You should create one R script called run_analysis.R that does the following.
	1	Merges the training and the test sets to create one data set.
	2	Extracts only the measurements on the mean and standard deviation for each measurement.
	3	Uses descriptive activity names to name the activities in the data set
	4	Appropriately labels the data set with descriptive variable names.
	5	From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

**The project data:**

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip


**The data that I would use in the project:**

activity_labels.txt
features.txt
train/subject_train
train/X_train
train/y_train
test/subject_test
test/X_test
test/y_test

**The output data would be as this table:**


Variable name     | Features.txt | Subject | Activity
-------- | ---
Data | X_train.txt|Subject_train.txt |Y_train.txt
Data     |X_test.txt        |Subject_test.txt     |Y_test.txt



**Files :**

1-run_analysis.R is the full code that performed the project requirements.
2-tidy data : is the output file.
3-CodeBook.md: a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data
