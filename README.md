# Getting and cleaning data

For creating a tidy data set of wearable computing data originally from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## Files in this repo
* README.md -- you are reading it right now
* CodeBook.md -- codebook describing variables, the data and transformations
* run_analysis.R -- actual R code

## run_analysis.R goals
You should create one R script called run_analysis.R that does the following:
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive activity names. 
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

It should run in a folder of the Samsung data (the zip had this folder: UCI HAR Dataset)
The script assumes it has in it's working directory the following files and folders:
* activity_labels.txt
* features.txt
* test/
* train/

The output is created in working directory with the name of Tidy_Data.txt

## Libraries Used
The libraries used in this operation are data.table and dplyr. 
Prefer data.table as it is efficient in handling large data as tables while dplyr is used to aggregate variables.

## run_analysis.R walk through

* Step 1:
  * Read all the train and test files: 'y_train.txt', 'subject_train.txt', 'X_train.txt', 'y_test.txt', 'subject_test.txt' and 'X_test.txt'
  * Combine the files into two data frames: sub_act- in the form of subjects, activity; train_test- the rest of the data
* Step 2:
  * Read 'features.txt' - List of all features; 'activity_labels.txt': Links the class labels with their activity name 
  * Naming variables in train_test data set 
* Step 3:
  * Extracts only the measurements on the mean and standard deviation for each measurement in train_test data frame
  * Use descriptive activity names to name the activities in sub_act data frame 

* Step 4:
  * Create one data frame. Clip together sub_act and train_test in df data frame
  * Appropriately labels the data set with descriptive variable names
  
* Step 5:
  * Create a new data frame by finding the mean for each combination of subject and activity. It's done by `aggregate()` function  
  
* Final step:
  * Write the new tidy set into a text file called 'Tidy_Data.txt'.  
    