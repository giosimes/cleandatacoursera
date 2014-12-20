# Load required libraries
library(plyr)
library(reshape2)

# This function reads a complete data set for the given dataset type
#
# Note: the function assumes that the data set "UCI HAR Dataset" is already downloaded
#       and unzipped on your local drive. In addition it must follow the file naming conventions
#       as described in the dataset README.txt file
#
readDataSet <- function (dataset = "test") {
  
  # 0. Path and file definitions
  dataDir <- "UCI HAR Dataset/"
  dataSetDir <- paste(dataDir, dataset, "/", sep = "")
  featuresFile <- paste(dataDir, "features.txt", sep = "")
  activityLabelsFile <- paste(dataDir, "activity_labels.txt", sep = "")
  subjectFile <- paste(dataSetDir, "subject_", dataset, ".txt", sep = "")
  yFile <- paste(dataSetDir, "y_", dataset, ".txt", sep = "")
  xFile <- paste(dataSetDir, "X_", dataset, ".txt", sep = "")
  
  # 1. Read features and activity labels
  dataFeatures <- read.table(featuresFile)
  dataActivityLabels <- read.table(activityLabelsFile)
  
  # 2. Read subject file and use descriptive column names
  dataSubject <- read.table(subjectFile)
  colnames(dataSubject) <- c("subject")
  dataSubject <- mutate(dataSubject, dataset = dataset)
  
  # 3. Read y_ file, Use descriptive activity names and bind with data subject
  dataY <- read.table(yFile)
  for (i in c(1:6)) dataY$V1[dataY$V1 == i] <- as.character(dataActivityLabels[i, 2])
  colnames(dataY) <- c("activity")
  data <- cbind(dataSubject, dataY)
  
  # 4. Read x_ file, use descriptive column names for variables,
  #    subset only variables for mean and standard deviation and bind with data
  dataX <- read.table(xFile)
  colnames(dataX) <- dataFeatures[, 2]
  dataX <- dataX[, grep("mean\\(|std\\(", colnames(dataX))]
  data <- cbind(data, dataX)
  data
}

#
# >> Processing starts here
#

# Download and unzip data set to the current directory
# Note: the following statements are commented by purpose. Uncomment only if you do not have the datasets yet.
#
# download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", "getdata_projectfiles_UCI HAR Dataset.zip")
# unzip("getdata_projectfiles_UCI HAR Dataset.zip")

# Read test dataset
dataTest <- readDataSet("test")

# Read train dataset
dataTrain <- readDataSet("train")

# Merge test with train dataset
data <- rbind(dataTest, dataTrain)

# Use melt and dcast to aggregate variables for mean and standard deviation by subject and activity
cols <- names(data[4:69])
dataMelt <- melt(data, id=c("subject", "activity"), measure.vars=cols)
dataResult <- dcast(dataMelt, subject + activity ~ variable, mean)

# Write result to file
write.table(dataResult, "CourseProjectResult.txt", row.name=FALSE)

# Write result message
print("Result was written to file 'CourseProjectResult.txt'. Data object 'dataResult' contains result of processing.")