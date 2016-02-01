The data source
Original data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
Original description of the dataset: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Data Set Information:
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years.
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist.
Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz.
The experiments have been video-recorded to label the data manually.
The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window).
The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity.
The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used.
From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

The data=>
The dataset includes the following files:
'README.txt'
'features_info.txt': Shows information about the variables used on the feature vector.
'features.txt': List of all features.
'activity_labels.txt': Links the class labels with their activity name.
'train/X_train.txt': Training set.
'train/y_train.txt': Training labels.
'test/X_test.txt': Test set.
'test/y_test.txt': Test labels.

The following files are available for the train and test data.
Their descriptions are equivalent.
'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.
'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. 
            Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis.
'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration.
'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second.

Transformation details=>
There are 5 parts:
Merges the training and the test sets to create one data set.
Extracts only the measurements on the mean and standard deviation for each measurement.
Uses descriptive activity names to name the activities in the data set.
Appropriately labels the data set with descriptive activity names.
Creates a second, independent tidy data set with the average of each variable for each activity and each subject.


As a part of this Code book, variables included in final file (tidy_data.txt) are listed below -
There are 81 variables in total in final file created.
This is Code book.Variables Included in final file (tidy_data.txt) are listed below -

There are 81 variables in total in final file created.

Variable Name Data Type Sample Values

subject_id	int
activity_description	Factor
tBodyAcc_mean_X	num
tBodyAcc_mean_Y	num
tBodyAcc_mean_Z	num
tBodyAcc_std_X	num
tBodyAcc_std_Y	num
tBodyAcc_std_Z	num
tGravityAcc_mean_X	num
tGravityAcc_mean_Y	num
tGravityAcc_mean_Z	num
tGravityAcc_std_X	num
tGravityAcc_std_Y	num
tGravityAcc_std_Z	num
tBodyAccJerk_mean_X	num
tBodyAccJerk_mean_Y	num
tBodyAccJerk_mean_Z	num
tBodyAccJerk_std_X	num
tBodyAccJerk_std_Y	num
tBodyAccJerk_std_Z	num
tBodyGyro_mean_X	num
tBodyGyro_mean_Y	num
tBodyGyro_mean_Z	num
tBodyGyro_std_X	num
tBodyGyro_std_Y	num
tBodyGyro_std_Z	num
tBodyGyroJerk_mean_X	num
tBodyGyroJerk_mean_Y	num
tBodyGyroJerk_mean_Z	num
tBodyGyroJerk_std_X	num
tBodyGyroJerk_std_Y	num
tBodyGyroJerk_std_Z	num
tBodyAccMag_mean	num
tBodyAccMag_std	num
tGravityAccMag_mean	num
tGravityAccMag_std	num
tBodyAccJerkMag_mean	num
tBodyAccJerkMag_std	num
tBodyGyroMag_mean	num
tBodyGyroMag_std	num
tBodyGyroJerkMag_mean	num
tBodyGyroJerkMag_std	num
fBodyAcc_mean_X	num
fBodyAcc_mean_Y	num
fBodyAcc_mean_Z	num
fBodyAcc_std_X	num
fBodyAcc_std_Y	num
fBodyAcc_std_Z	num
fBodyAcc_meanFreq_X	num
fBodyAcc_meanFreq_Y	num
fBodyAcc_meanFreq_Z	num
fBodyAccJerk_mean_X	num
fBodyAccJerk_mean_Y	num
fBodyAccJerk_mean_Z	num
fBodyAccJerk_std_X	num
fBodyAccJerk_std_Y	num
fBodyAccJerk_std_Z	num
fBodyAccJerk_meanFreq_X	num
fBodyAccJerk_meanFreq_Y	num
fBodyAccJerk_meanFreq_Z	num
fBodyGyro_mean_X	num
fBodyGyro_mean_Y	num
fBodyGyro_mean_Z	num
fBodyGyro_std_X	num
fBodyGyro_std_Y	num
fBodyGyro_std_Z	num
fBodyGyro_meanFreq_X	num
fBodyGyro_meanFreq_Y	num
fBodyGyro_meanFreq_Z	num
fBodyAccMag_mean	num
fBodyAccMag_std	num
fBodyAccMag_meanFreq	num
fBodyAccJerkMag_mean	num
fBodyAccJerkMag_std	num
fBodyAccJerkMag_meanFreq	num
fBodyGyroMag_mean	num
fBodyGyroMag_std	num
fBodyGyroMag_meanFreq	num
fBodyGyroJerkMag_mean	num
fBodyGyroJerkMag_std	num
fBodyGyroJerkMag_meanFreq	num
