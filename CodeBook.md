---
title: "CodeBook.md"
author: "Tom Christian"
date: "Saturday, April 25, 2015"
output: html_document
---

Overview
----------------------------
This describes the data found in mean_phone_data_by_subject_activity.txt

This data was created from raw data from the Human Activity Recognition using Smartphones Data Set.  This site can be found here...

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The exact data can be download via the following link...

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

This data can be loaded in R using the following code...

DF <- read.table("mean_phone_data_by_subject_activity.txt")

Transformation Steps
-------------------------
1. The data from the training and testing data sets were merged
2. The textual activity description was added to the data
3. The subject ID was added to the data
4. Only the data mean and standard deviation columns.  These were determined by any columns containing the words "mean()" or "std()"
5. The means of these filtered columns were summarized by subject and activity

Data Fields
-----------------

Field | Description
------|--------------
SubjectId | The ID number of the person performing the activity
ActivityName | This is the identified activity that was performed
tBodyAcc-mean()-X | This is the mean of the tBodyAcc-mean()-X variable
tBodyAcc-mean()-X.1 | This is the mean of the tBodyAcc-mean()-X.1 variable
tBodyAcc-mean()-Y | This is the mean of the tBodyAcc-mean()-Y variable
tBodyAcc-mean()-Z | This is the mean of the tBodyAcc-mean()-Z variable
tBodyAcc-std()-X | This is the mean of the tBodyAcc-std()-X variable
tBodyAcc-std()-Y | This is the mean of the tBodyAcc-std()-Y variable
tBodyAcc-std()-Z | This is the mean of the tBodyAcc-std()-Z variable
tGravityAcc-mean()-X | This is the mean of the tGravityAcc-mean()-X variable
tGravityAcc-mean()-Y | This is the mean of the tGravityAcc-mean()-Y variable
tGravityAcc-mean()-Z | This is the mean of the tGravityAcc-mean()-Z variable
tGravityAcc-std()-X | This is the mean of the tGravityAcc-std()-X variable
tGravityAcc-std()-Y | This is the mean of the tGravityAcc-std()-Y variable
tGravityAcc-std()-Z | This is the mean of the tGravityAcc-std()-Z variable
tBodyAccJerk-mean()-X | This is the mean of the tBodyAccJerk-mean()-X variable
tBodyAccJerk-mean()-Y | This is the mean of the tBodyAccJerk-mean()-Y variable
tBodyAccJerk-mean()-Z | This is the mean of the tBodyAccJerk-mean()-Z variable
tBodyAccJerk-std()-X | This is the mean of the tBodyAccJerk-std()-X variable
tBodyAccJerk-std()-Y | This is the mean of the tBodyAccJerk-std()-Y variable
tBodyAccJerk-std()-Z | This is the mean of the tBodyAccJerk-std()-Z variable
tBodyGyro-mean()-X | This is the mean of the tBodyGyro-mean()-X variable
tBodyGyro-mean()-Y | This is the mean of the tBodyGyro-mean()-Y variable
tBodyGyro-mean()-Z | This is the mean of the tBodyGyro-mean()-Z variable
tBodyGyro-std()-X | This is the mean of the tBodyGyro-std()-X variable
tBodyGyro-std()-Y | This is the mean of the tBodyGyro-std()-Y variable
tBodyGyro-std()-Z | This is the mean of the tBodyGyro-std()-Z variable
tBodyGyroJerk-mean()-X | This is the mean of the tBodyGyroJerk-mean()-X variable
tBodyGyroJerk-mean()-Y | This is the mean of the tBodyGyroJerk-mean()-Y variable
tBodyGyroJerk-mean()-Z | This is the mean of the tBodyGyroJerk-mean()-Z variable
tBodyGyroJerk-std()-X | This is the mean of the tBodyGyroJerk-std()-X variable
tBodyGyroJerk-std()-Y | This is the mean of the tBodyGyroJerk-std()-Y variable
tBodyGyroJerk-std()-Z | This is the mean of the tBodyGyroJerk-std()-Z variable
tBodyAccMag-mean() | This is the mean of the tBodyAccMag-mean() variable
tBodyAccMag-std() | This is the mean of the tBodyAccMag-std() variable
tGravityAccMag-mean() | This is the mean of the tGravityAccMag-mean() variable
tGravityAccMag-std() | This is the mean of the tGravityAccMag-std() variable
tBodyAccJerkMag-mean() | This is the mean of the tBodyAccJerkMag-mean() variable
tBodyAccJerkMag-std() | This is the mean of the tBodyAccJerkMag-std() variable
tBodyGyroMag-mean() | This is the mean of the tBodyGyroMag-mean() variable
tBodyGyroMag-std() | This is the mean of the tBodyGyroMag-std() variable
tBodyGyroJerkMag-mean() | This is the mean of the tBodyGyroJerkMag-mean() variable
tBodyGyroJerkMag-std() | This is the mean of the tBodyGyroJerkMag-std() variable
fBodyAcc-mean()-X | This is the mean of the fBodyAcc-mean()-X variable
fBodyAcc-mean()-Y | This is the mean of the fBodyAcc-mean()-Y variable
fBodyAcc-mean()-Z | This is the mean of the fBodyAcc-mean()-Z variable
fBodyAcc-std()-X | This is the mean of the fBodyAcc-std()-X variable
fBodyAcc-std()-Y | This is the mean of the fBodyAcc-std()-Y variable
fBodyAcc-std()-Z | This is the mean of the fBodyAcc-std()-Z variable
fBodyAccJerk-mean()-X | This is the mean of the fBodyAccJerk-mean()-X variable
fBodyAccJerk-mean()-Y | This is the mean of the fBodyAccJerk-mean()-Y variable
fBodyAccJerk-mean()-Z | This is the mean of the fBodyAccJerk-mean()-Z variable
fBodyAccJerk-std()-X | This is the mean of the fBodyAccJerk-std()-X variable
fBodyAccJerk-std()-Y | This is the mean of the fBodyAccJerk-std()-Y variable
fBodyAccJerk-std()-Z | This is the mean of the fBodyAccJerk-std()-Z variable
fBodyGyro-mean()-X | This is the mean of the fBodyGyro-mean()-X variable
fBodyGyro-mean()-Y | This is the mean of the fBodyGyro-mean()-Y variable
fBodyGyro-mean()-Z | This is the mean of the fBodyGyro-mean()-Z variable
fBodyGyro-std()-X | This is the mean of the fBodyGyro-std()-X variable
fBodyGyro-std()-Y | This is the mean of the fBodyGyro-std()-Y variable
fBodyGyro-std()-Z | This is the mean of the fBodyGyro-std()-Z variable
fBodyAccMag-mean() | This is the mean of the fBodyAccMag-mean() variable
fBodyAccMag-std() | This is the mean of the fBodyAccMag-std() variable
fBodyBodyAccJerkMag-mean() | This is the mean of the fBodyBodyAccJerkMag-mean() variable
fBodyBodyAccJerkMag-std() | This is the mean of the fBodyBodyAccJerkMag-std() variable
fBodyBodyGyroMag-mean() | This is the mean of the fBodyBodyGyroMag-mean() variable
fBodyBodyGyroMag-std() | This is the mean of the fBodyBodyGyroMag-std() variable
fBodyBodyGyroJerkMag-mean() | This is the mean of the fBodyBodyGyroJerkMag-mean() variable
fBodyBodyGyroJerkMag-std() | This is the mean of the fBodyBodyGyroJerkMag-std() variable
