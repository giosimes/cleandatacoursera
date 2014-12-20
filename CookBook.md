---
title: "Getting and Cleaning Data - Course Project"
author: "G. Messineo"
date: "Saturday, December 20, 2014"
output: html_document
---

# Data Dictionary - "CourseProjectResult.txt"

```
subject     2
      Subject identification of volunteer
            1..30   .30 volunteers participated
  
activity    18
      Activity executed by volunteer
            WALKING
            WALKING_UPSTAIRS
            WALKING_DOWNSTAIRS
            SITTING
            STANDING
            LAYING

tBodyAcc-mean()-X
  		See common description below
		
tBodyAcc-mean()-Y
			See common description below
		
tBodyAcc-mean()-Z
			See common description below
		
tBodyAcc-std()-X
			See common description below
		
tBodyAcc-std()-Y
			See common description below
		
tBodyAcc-std()-Z
			See common description below
		
tGravityAcc-mean()-X
			See common description below
		
tGravityAcc-mean()-Y
			See common description below
		
tGravityAcc-mean()-Z
			See common description below
		
tGravityAcc-std()-X
			See common description below
		
tGravityAcc-std()-Y
			See common description below
		
tGravityAcc-std()-Z
			See common description below
		
tBodyAccJerk-mean()-X
			See common description below
		
tBodyAccJerk-mean()-Y
			See common description below
		
tBodyAccJerk-mean()-Z
			See common description below
		
tBodyAccJerk-std()-X
			See common description below
		
tBodyAccJerk-std()-Y
			See common description below
		
tBodyAccJerk-std()-Z
			See common description below
		
tBodyGyro-mean()-X
			See common description below
		
tBodyGyro-mean()-Y
			See common description below
		
tBodyGyro-mean()-Z
			See common description below
		
tBodyGyro-std()-X
			See common description below
		
tBodyGyro-std()-Y
			See common description below
		
tBodyGyro-std()-Z
			See common description below
		
tBodyGyroJerk-mean()-X
			See common description below
		
tBodyGyroJerk-mean()-Y
			See common description below
		
tBodyGyroJerk-mean()-Z
			See common description below
		
tBodyGyroJerk-std()-X
			See common description below
		
tBodyGyroJerk-std()-Y
			See common description below
		
tBodyGyroJerk-std()-Z
			See common description below
		
tBodyAccMag-mean()
			See common description below
		
tBodyAccMag-std()
			See common description below
		
tGravityAccMag-mean()
			See common description below
		
tGravityAccMag-std()
			See common description below
		
tBodyAccJerkMag-mean()
			See common description below
		
tBodyAccJerkMag-std()
			See common description below
		
tBodyGyroMag-mean()
			See common description below
		
tBodyGyroMag-std()
			See common description below
		
tBodyGyroJerkMag-mean()
			See common description below
		
tBodyGyroJerkMag-std()
			See common description below
		
fBodyAcc-mean()-X
			See common description below
		
fBodyAcc-mean()-Y
			See common description below
		
fBodyAcc-mean()-Z
			See common description below
		
fBodyAcc-std()-X
			See common description below
		
fBodyAcc-std()-Y
			See common description below
		
fBodyAcc-std()-Z
			See common description below
		
fBodyAccJerk-mean()-X
			See common description below
		
fBodyAccJerk-mean()-Y
			See common description below
		
fBodyAccJerk-mean()-Z
			See common description below
		
fBodyAccJerk-std()-X
			See common description below
		
fBodyAccJerk-std()-Y
			See common description below
		
fBodyAccJerk-std()-Z
			See common description below
		
fBodyGyro-mean()-X
			See common description below
		
fBodyGyro-mean()-Y
			See common description below
		
fBodyGyro-mean()-Z
			See common description below
		
fBodyGyro-std()-X
			See common description below
		
fBodyGyro-std()-Y
			See common description below
		
fBodyGyro-std()-Z
			See common description below
		
fBodyAccMag-mean()
			See common description below
		
fBodyAccMag-std()
			See common description below
		
fBodyBodyAccJerkMag-mean()
			See common description below
		
fBodyBodyAccJerkMag-std()
			See common description below
		
fBodyBodyGyroMag-mean()
			See common description below
		
fBodyBodyGyroMag-std()
			See common description below
		
fBodyBodyGyroJerkMag-mean()
			See common description below
		
fBodyBodyGyroJerkMag-std()
			See common description below


Common description for signal variables:

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The names of the above variables include the origin calculated values for:

mean(): Mean value
std(): Standard deviation

The output file contains for each above listed signal variable the calculated average per subject and activity.
```