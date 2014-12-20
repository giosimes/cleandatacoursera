---
title: "Getting and Cleaning Data - Course Project"
author: "G. Messineo"
date: "Saturday, December 20, 2014"
output: html_document
---

# Introduction
The purpose of the course project was to demonstrate the ability to collect, work with, and clean a data set. 

A conducted study about wearable computing served as input case. Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. As part of this study data were collected from the accelerometers from the Samsung Galaxy S smartphone. The following site provides more details and served to obtain the data to be used for the course project:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip


# Goal
The assignment required to create one R script called run_analysis.R that does the following:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

# Approach
The following approach was taken to do the assignment:

1. Download and unzip the dataset file
2. Study the README.txt and features_info.text file
3. Create a high level data model to understand the different provided dataset files
4. Implement the R script
5. Test the R script
6. Write documentation (README.md and CookBook.md)
7. Upload results to Coursera and Github

# Deliverables
The deliverables for this course project are described in the following sections:

## README.md
This Markup file which describes the Course Project assignment.

## CookBook.md
A cook book which describes the dataset produced by the R script according to the goal described above.

## run_analysis.R
The R script contains all necessary steps to transform the input dataset to the required output dataset.

The following pre-requisites are necessary in order that the script will execute successfully:

* Package plyr must be installed
* Package reshape2 must be installed
* Input dataset (see Introduction) must be downloaded and unzipped in the working directory (Note: the script includes statements to download and unzip the dataset. However these were uncommented by purpose to avoid multiple download of the 60 MB zip file)

The input dataset is divided in two types "test" and "train". In order to avoid duplicate code the readDataSet function is implemented to read a complete data set for the given dataset type. Within this function the input dataset is read, cleaned and adjusted according to the required goal. The following key steps are executed for that purpose:

1. Read master data
  - Features: are used to replace column names for the measurements with descriptive lables
  - Activity labels: are used to replace integer values for the activity with descriptive labels

2. Read subject data 
  - Read subject 
  - Use descriptive column name for subject

3. Read y_ data
  - Read y_ file (e.g. y_test.txt)
  - Use descriptive activity names by replacing integer values in a for loop with activity labels read in step 1
  - Bind with subject data from Step 2

4. Read x_ data
  - Reay x_ file (e.g. x_test.txt)
  - Use descriptive column names for variables by replacing the column names with features read in step 1
  - Subset only variables for mean and standard deviation by usage of grep function 
  - Bind with data from step 3

5. Return the cleaned dataset

The main processing consists of the following steps:

1. Call to readDataSet to read the test dataset
2. Call to readDataSet to read the train dataset
3. Merge both datasets from step 1 and 2 with rbind to form a combined dataset
4. Use melt and dcast on the dataset from step 3 to aggregate variables for mean and standard deviation by subject and activity
5. Write dataset created in step 4 to a file called "CourseProjectResult.txt"
6. Write a result message which tells that the processing is ended and provides feedback to the user



