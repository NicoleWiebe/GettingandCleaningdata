##Purpose of this file is to create a tidy dataset from the wearable computing test and training data.
##First check the directory for the appropriate directories and if they do not exist, create them.
mainDir <- "C:/Users/nicole.wiebe/Desktop/Coursera"
subDir <- "UCI HAR Dataset"
dir.create(file.path(mainDir, subDir))
setwd(file.path(mainDir, subDir))
##Load the dplyr library to be used later.
library(dplyr)
##Read in test data and combine the three test txt files.
testdat <- read.table("./test/X_test.txt")
testdat <- rename(testdat, tBodyAcc.mean.X=V1)
testlab <- read.table("./test/y_test.txt")
testlab <- rename(testlab, Label=V1)
testsub <- read.table("./test/subject_test.txt")
testsub <- rename(testsub, Subject=V1)
test<- cbind(testsub,testdat,testlab)
##Read in training data and combine the three training txt files.
traindat <- read.table("./train/X_train.txt")
traindat <- rename(traindat, tBodyAcc.mean.X=V1)
trainlab <- read.table("./train/y_train.txt")
trainlab <- rename(trainlab, Label=V1)
trainsub <- read.table("./train/subject_train.txt")
trainsub <- rename(trainsub, Subject=V1)
train<- cbind(trainsub,traindat,trainlab)
###Merge the training and test data sets.
mergeddata <- rbind(train,test)
###Keep only the variables that are mean and std dev of the measurements.
reduceddata <- select(mergeddata, Subject:V6, V41:V46, V81:V86, V121:V126, V161:V166, V201:V202,V214:V215,
                      V227:V228,V240:V241,V253:V254,V266:V271,V345:V350,V424:V429,V503:V504,V542:V543,Label)
###Name the activities in the data set.
reduceddata$Label <- factor(reduceddata$Label,
                    levels = c(1,2,3,4,5,6),
                    labels = c("Walking", "Walking.Upstairs", "Walking.Downstairs", "Sitting","Standing", "Laying"))
###Rename variabes to more descriptive names.
reduceddata <- rename(reduceddata, tBodyAcc.mean.X=tBodyAcc.mean.X,
                      tBodyAcc.mean.Y=V2,
                      tBodyAcc.mean.Z=V3,
                      tBodyAcc.std.X=V4,
                      tBodyAcc.std.Y=V5,
                      tBodyAcc.std.Z=V6,
                      tGravityAcc.mean.X=V41,
                      tGravityAcc.mean.Y=V42,
                      tGravityAcc.mean.Z=V43,
                      tGravityAcc.std.X=V44,
                      tGravityAcc.std.Y=V45,
                      tGravityAcc.std.Z=V46,
                      tBodyAccJerk.mean.X=V81,
                      tBodyAccJerk.mean.Y=V82,
                      tBodyAccJerk.mean.Z=V83,
                      tBodyAccJerk.std.X=V84,
                      tBodyAccJerk.std.Y=V85,
                      tBodyAccJerk.std.Z=V86,
                      tBodyGyro.mean.X=V121,
                      tBodyGyro.mean.Y=V122,
                      tBodyGyro.mean.Z=V123,
                      tBodyGyro.std.X=V124,
                      tBodyGyro.std.Y=V125,
                      tBodyGyro.std.Z=V126,
                      tBodyGyroJerk.mean.X=V161,
                      tBodyGyroJerk.mean.Y=V162,
                      tBodyGyroJerk.mean.Z=V163,
                      tBodyGyroJerk.std.X=V164,
                      tBodyGyroJerk.std.Y=V165,
                      tBodyGyroJerk.std.Z=V166,
                      tBodyAccMag.mean=V201,
                      tBodyAccMag.std=V202,
                      tGravityAccMag.mean=V214,
                      tGravityAccMag.std=V215,
                      tBodyAccJerkMag.mean=V227,
                      tBodyAccJerkMag.std=V228,
                      tBodyGyroMag.mean=V240,
                      tBodyGyroMag.std=V241,
                      tBodyGyroJerkMag.mean=V253,
                      tBodyGyroJerkMag.std=V254,
                      fBodyAcc.mean.X=V266,
                      fBodyAcc.mean.Y=V267,
                      fBodyAcc.mean.Z=V268,
                      fBodyAcc.std.X=V269,
                      fBodyAcc.std.Y=V270,
                      fBodyAcc.std.Z=V271,
                      fBodyAccJerk.mean.X=V345,
                      fBodyAccJerk.mean.Y=V346,
                      fBodyAccJerk.mean.Z=V347,
                      fBodyAccJerk.std.X=V348,
                      fBodyAccJerk.std.Y=V349,
                      fBodyAccJerk.std.Z=V350,
                      fBodyGyro.mean.X=V424,
                      fBodyGyro.mean.Y=V425,
                      fBodyGyro.mean.Z=V426,
                      fBodyGyro.std.X=V427,
                      fBodyGyro.std.Y=V428,
                      fBodyGyro.std.Z=V429,
                      fBodyAccMag.mean=V503,
                      fBodyAccMag.std=V504,
                      fBodyBodyGyroJerkMag.mean=V542,
                      fBodyBodyGyroJerkMag.std=V543,
                      Activity.Level=Label)
##creates a second, independent tidy data set with the average of each variable for each activity and each subject.
##First, you need a subset of the dataset without subject and activity level.
reduceddata2 <- reduceddata[,2:63]
##Then, you need to take the average of all of the other variables for the corresponding subject and activity level combo.
final<-aggregate(reduceddata2, by = reduceddata[c("Activity.Level","Subject")], mean, na.rm = TRUE)
##Finally, write out the final table.
write.table(final, file ="./Final_Analysis.txt", row.name=FALSE)