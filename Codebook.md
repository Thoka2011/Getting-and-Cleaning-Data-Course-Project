## The variables
### The variables in the left is the load of the files in the right:


	subjectTrain :   	 train/subject_train.txt
	XTrain 	:   		  train/X_train.txt
	activityTrain:   		train/y_train.txt
	subjectTest:		test/subject_test.txt
	XTest:			 test/X_test.txt
	activityTest:	 	test/y_test.txt
	featuresName:            features.txt
	ActivityLabels    	activity_labels.txt

subjectData : 		combine of subjectTrain,subjectTest
ActivityData:		combine of activityTrain,activityTest
XData: 		combine of XTrain,XTest
MergedData: 		combine of subjectData, ActivityData
Data: 			combine of XData, MergedData
Vector: 		logicalVector indicate TRUE For Activity , subject mean and standard deviation columns
DataExtracted: 	the data set which include (Activity, subject, mean and standard deviation 
tidyData: 		the final data set


## The data in the output file tidy data is as described:
subject : 		The person who was wearing a smartphone (Samsung Galaxy S II) on the waist to get his measurements.
activity : 		The kind of activity the person was doing while getting the measurement.
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)

### The required measurement :
"timeBodyAccelerometer-mean()-X"
"timeBodyAccelerometer-mean()-Y"
"timeBodyAccelerometer-mean()-Z"
"timeBodyAccelerometer-std()-X"
"timeBodyAccelerometer-std()-Y"
"timeBodyAccelerometer-std()-Z"
"timeGravityAccelerometer-mean()-X"
"timeGravityAccelerometer-mean()-Y"
"timeGravityAccelerometer-mean()-Z"
"timeGravityAccelerometer-std()-X"
"timeGravityAccelerometer-std()-Y"
"timeGravityAccelerometer-std()-Z"
"timeBodyAccelerometerJerk-mean()-X"
"timeBodyAccelerometerJerk-mean()-Y"
"timeBodyAccelerometerJerk-mean()-Z"
"timeBodyAccelerometerJerk-std()-X"
"timeBodyAccelerometerJerk-std()-Y"
"timeBodyAccelerometerJerk-std()-Z"
"timeBodyGyroscope-mean()-X"
"timeBodyGyroscope-mean()-Y"
"timeBodyGyroscope-mean()-Z"
"timeBodyGyroscope-std()-X"
"timeBodyGyroscope-std()-Y"
"timeBodyGyroscope-std()-Z"
"timeBodyGyroscopeJerk-mean()-X"
"timeBodyGyroscopeJerk-mean()-Y"
"timeBodyGyroscopeJerk-mean()-Z"
"timeBodyGyroscopeJerk-std()-X"
"timeBodyGyroscopeJerk-std()-Y"
"timeBodyGyroscopeJerk-std()-Z"
"timeBodyAccelerometerMagnitude-mean()"
"timeBodyAccelerometerMagnitude-std()"
"timeGravityAccelerometerMagnitude-mean()"
"timeGravityAccelerometerMagnitude-std()"
"timeBodyAccelerometerJerkMagnitude-mean()"
"timeBodyAccelerometerJerkMagnitude-std()"
"timeBodyGyroscopeMagnitude-mean()"
"timeBodyGyroscopeMagnitude-std()"
"timeBodyGyroscopeJerkMagnitude-mean()"
"timeBodyGyroscopeJerkMagnitude-std()"
"frequencyBodyAccelerometer-mean()-X"
"frequencyBodyAccelerometer-mean()-Y"
"frequencyBodyAccelerometer-mean()-Z"
"frequencyBodyAccelerometer-std()-X"
"frequencyBodyAccelerometer-std()-Y"
"frequencyBodyAccelerometer-std()-Z"
"frequencyBodyAccelerometerJerk-mean()-X"
"frequencyBodyAccelerometerJerk-mean()-Y"
"frequencyBodyAccelerometerJerk-mean()-Z"
"frequencyBodyAccelerometerJerk-std()-X"
"frequencyBodyAccelerometerJerk-std()-Y"
"frequencyBodyAccelerometerJerk-std()-Z"
"frequencyBodyGyroscope-mean()-X"
"frequencyBodyGyroscope-mean()-Y"
"frequencyBodyGyroscope-mean()-Z"
"frequencyBodyGyroscope-std()-X"
"frequencyBodyGyroscope-std()-Y"
"frequencyBodyGyroscope-std()-Z"
"frequencyBodyAccelerometerMagnitude-mean()"
"frequencyBodyAccelerometerMagnitude-std()"
"frequencyBodyAccelerometerJerkMagnitude-mean()"
"frequencyBodyAccelerometerJerkMagnitude-std()"
"frequencyBodyGyroscopeMagnitude-mean()"
"frequencyBodyGyroscopeMagnitude-std()"
"frequencyBodyGyroscopeJerkMagnitude-mean()"
"frequencyBodyGyroscopeJerkMagnitude-std()"


