#Codebook for Getting and Cleaning Data Project

Purpose of the codebook is to describe the variables, the data and the transformations performed to the dataset so that anyone can replicate the analysis

Data set is located here:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The data was collected from the accelerometers from the Samsung Galaxy S smartphone

##Transformations made to the data

1. Merges the training and the test sets to create one data set (includes combining the subject files, data files, and activity files for both training and test)
2. Extracts only the measurements on the mean and standard deviation for each measurement 
3. Uses descriptive activity names to name the activities in the data set (done using factor levels)
4. Appropriately labels the data set with descriptive variable names 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject
6. Writes out the final dataset to a txt file

##Variables

*Subject: 1 to 30 each representing a participant in the study

*tBodyAcc.mean.X: Time BodyAcc mean X Axis

*tBodyAcc.mean.Y: Time BodyAcc mean Y Axis

*tBodyAcc.mean.Z: Time BodyAcc mean Z Axis

*tBodyAcc.std.X: Time BodyAcc standard deviation X Axis

*tBodyAcc.std.Y: Time BodyAcc standard deviation Y Axis

*tBodyAcc.std.Z: Time BodyAcc standard deviation Z Axis

*tGravityAcc.mean.X: Time GravityAcc mean X Axis

*tGravityAcc.mean.Y: Time GravityAcc mean Y Axis

*tGravityAcc.mean.Z: Time GravityAcc mean Z Axis

*tGravityAcc.std.X: Time GravityAcc standard deviation X Axis

*tGravityAcc.std.Y: Time GravityAcc standard deviation Y Axis

*tGravityAcc.std.Z: Time GravityAcc standard deviation Z Axis

*tBodyAccJerk.mean.X: Time BodyAccJerk mean X Axis

*tBodyAccJerk.mean.Y: Time BodyAccJerk mean Y Axis

*tBodyAccJerk.mean.Z: Time BodyAccJerk mean Z Axis

*tBodyAccJerk.std.X: Time BodyAccJerk standard deviation X Axis

*tBodyAccJerk.std.Y: Time BodyAccJerk standard deviation Y Axis

*tBodyAccJerk.std.Z: Time BodyAccJerk standard deviation Z Axis

*tBodyGyro.mean.X: Time BodyGyro mean X Axis

*tBodyGyro.mean.Y: Time BodyGyro mean Y Axis

*tBodyGyro.mean.Z: Time BodyGyro mean Z Axis

*tBodyGyro.std.X: Time BodyGyro standard deviation X Axis

*tBodyGyro.std.Y: Time BodyGyro standard deviation Y Axis

*tBodyGyro.std.Z: Time BodyGyro standard deviation Z Axis

*tBodyGyroJerk.mean.X: Time BodyGyroJerk mean X Axis

*tBodyGyroJerk.mean.Y: Time BodyGyroJerk mean Y Axis

*tBodyGyroJerk.mean.Z: Time BodyGyroJerk mean Z Axis

*tBodyGyroJerk.std.X: Time BodyGyroJerk standard deviation X Axis

*tBodyGyroJerk.std.Y: Time BodyGyroJerk standard deviation Y Axis

*tBodyGyroJerk.std.Z: Time BodyGyroJerk standard deviation Z Axis

*tBodyAccMag.mean: Time BodyAccMag mean

*tBodyAccMag.std: Time BodyAccMag standard deviation

*tGravityAccMag.mean: Time GravityAccMag mean

*tGravityAccMag.std: Time GravityAccMag standard deviation

*tBodyAccJerkMag.mean: Time BodyAccJerkMag mean

*tBodyAccJerkMag.std: Time BodyAccJerkMag standard deviation

*tBodyGyroMag.mean: Time BodyGyroMag mean

*tBodyGyroMag.std: Time BodyGyroMag standard deviation

*tBodyGyroJerkMag.mean: Time BodyGyroJerkMag mean

*tBodyGyroJerkMag.std: Time BodyGyroJerkMag standard deviation

*fBodyAcc.mean.X: Frequency BodyAcc mean X Axis

*fBodyAcc.mean.Y: Frequency BodyAcc mean Y Axis

*fBodyAcc.mean.Z: Frequency BodyAcc mean Z Axis

*fBodyAcc.std.X: Frequency BodyAcc standard deviation X Axis

*fBodyAcc.std.Y: Frequency BodyAcc standard deviation Y Axis

*fBodyAcc.std.Z: Frequency BodyAcc standard deviation Z Axis

*fBodyAccJerk.mean.X: Frequency BodyAccJerk mean X Axis

*fBodyAccJerk.mean.Y: Frequency BodyAccJerk mean Y Axis

*fBodyAccJerk.mean.Z: Frequency BodyAccJerk mean Z Axis

*fBodyAccJerk.std.X: Frequency BodyAccJerk standard deviation X Axis

*fBodyAccJerk.std.Y: Frequency BodyAccJerk standard deviation Y Axis

*fBodyAccJerk.std.Z: Frequency BodyAccJerk standard deviation Z Axis

*fBodyGyro.mean.X: Frequency BodyGyro mean X Axis

*fBodyGyro.mean.Y: Frequency BodyGyro mean Y Axis

*fBodyGyro.mean.Z: Frequency BodyGyro mean Z Axis

*fBodyGyro.std.X: Frequency BodyGyro standard deviation X Axis

*fBodyGyro.std.Y: Frequency BodyGyro standard deviation Y Axis

*fBodyGyro.std.Z: Frequency BodyGyro standard deviation Z Axis

*fBodyAccMag.mean: Frequency BodyAccMag mean

*fBodyAccMag.std: Frequency BodyAccMag standard deviation

*fBodyBodyAccJerkMag.mean: Frequency BodyBodyAccJerkMag mean

*fBodyBodyAccJerkMag.std: Frequency BodyBodyAccJerkMag standard deviation

*fBodyBodyGyroMag.mean: Frequency BodyBodyGyroMag mean

*fBodyBodyGyroMag.std: Frequency BodyBodyGyroMag standard deviation

*fBodyBodyGyroJerkMag.mean: Frequency BodyBodyGyroJerkMag mean

*fBodyBodyGyroJerkMag.std: Frequency BodyBodyGyroJerkMag standard deviation

*Activity.Level: label of the activity that each participant/ subject was doing at the time of the measurement: walking, walking upstairs, walking downstairs, sitting, standing, laying