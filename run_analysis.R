library(dplyr)
library(data.table)

setwd("D:/Coursera/Getting_and_Cleaning_Data/UCI HAR Dataset")
# reading and clipping data together

# Train and Test sets - X_train & X_test
X_train_tb <- read.table("./train/X_train.txt")
X_test_tb <- read.table("./test/X_test.txt")
train_test <- rbind(X_train_tb, X_test_tb)

# y - activity for train and test data
y_train_tb <- read.table("./train/y_train.txt", header = FALSE)
y_test_tb <- read.table("./test/y_test.txt", header = FALSE)
# clipp together activity column
act <- rbind(y_train_tb, y_test_tb)

# subjects (1-30) who performend  the activity for bothe sets
subject_train_tb <- read.table("./train/subject_train.txt", header = FALSE)
subject_test_tb <- read.table("./test/subject_test.txt", header = FALSE)
# clip together subject column
sub <- rbind(subject_train_tb, subject_test_tb)
# cbind together subject and activity column, naming the columns
sub_act <- cbind(sub, act)
names(sub_act) <- c("subject", "activity")

# read features and activity labels
features <- read.table("features.txt", header = FALSE)
activity <- read.table("activity_labels.txt", header = FALSE)

# naming variables
names(train_test) <- features$V2

# extracts only the measurements on the mean and standard deviation 
# for each measurement
tms <- train_test[, grep("mean|std", names(train_test))]

# use descriptive activity names to name the activities in the data set
sub_act$activity <- as.factor(sub_act$activity)
levels(sub_act$activity) <- activity$V2

# creating one data set
df <- cbind(sub_act, tms)

# appropriately labels the data set with descriptive variable names
names(df)<-gsub("Acc", "Accelerometer", names(df))
names(df)<-gsub("Gyro", "Gyroscope", names(df))
names(df)<-gsub("BodyBody", "Body", names(df))
names(df)<-gsub("Mag", "Magnitude", names(df))
names(df)<-gsub("^t", "Time", names(df))
names(df)<-gsub("^f", "Frequency", names(df))
names(df)<-gsub("tBody", "TimeBody", names(df))
names(df)<-gsub("-mean()", "Mean", names(df), ignore.case = TRUE)
names(df)<-gsub("-std()", "STD", names(df), ignore.case = TRUE)
names(df)<-gsub("-Freq()", "Frequency", names(df), ignore.case = TRUE)

# From the data set in step 4, creates a second, independent tidy data set 
# with the average of each variable for each activity and each subject

df$subject <- as.factor(df$subject)
df <- data.table(df)

# create tidy_data as a data set with average for each activity and subject
tidy_data <- aggregate(. ~subject + activity, df, mean)

# write into data file "Tidy_Data.txt"
write.table(tidy_data, file = "Tidy_Data.txt", row.names = FALSE)