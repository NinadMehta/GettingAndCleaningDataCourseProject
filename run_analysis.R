#TITLE: 	Getting and Cleaning Data Course Project
#AUTHOR: 	Ninad Mehta
#DATE:		01/31/2016


#install.packages("reshape2")
#library(reshape2)

# Read Training and Test data sets
X_test <- read.table("./getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("./getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/test/subject_test.txt")

X_train <- read.table("./getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("./getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/train/subject_train.txt")

# Merge Test and Train Data sets
test_data <- cbind(subject_id = subject_test$V1,activity_label = y_test$V1, X_test)
train_data <- cbind(subject_id = subject_train$V1,activity_label = y_train$V1, X_train)
train_test_merged <- rbind(train_data, test_data)

# Read features and make the descriptions cleaner
features <- read.table("./getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/features.txt")
features$V2 <- gsub("BodyBody","Body",gsub("-","_", gsub("\\(\\)","",features$V2)))

# Extracts only the measurements on the mean and standard deviation for each measurement
mean_pattern = 'mean' 
rows_with_mean_measures = grep(mean_pattern, features$V2, perl = T)
standard_deviation_pattern = 'std'
rows_with_standard_deviation_measures = grep(standard_deviation_pattern, features$V2, perl = T)
rows_with_mean_std_measures <- c(rows_with_mean_measures,rows_with_standard_deviation_measures)
rows_with_mean_std_measures <- sort(rows_with_mean_std_measures)
features_mean_std <- features[rows_with_mean_std_measures,]

#Read activities and use descriptive activity names to name the activities in the data set
activity <- read.table("./getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/activity_labels.txt")
colnames(activity) <- c("index", "activity_description")

#Pull Mean and Std variables and name the variables decriptively
train_test_merged_mean_std <- train_test_merged[c(1,2,features_mean_std$V1 +2)]
colnames(train_test_merged_mean_std) = c("subject_id","activity_label",features_mean_std$V2)

# Replace activity labels with activity descriptions
train_test_final <- merge(train_test_merged_mean_std, activity, by.x = "activity_label",by.y = "index", all = TRUE)
train_test_final <- train_test_final[,c(2,82,3:81)]

# Create a second, independent tidy data set with the average of each variable for each activity and each subject.
train_test_melt <- melt(train_test_final, id = c("subject_id","activity_description"), measure.vars = colnames(train_test_final)[3:81])
tidy_data <- dcast(train_test_melt, subject_id + activity_description ~ variable, mean)

# Export Tidy data file
write.table(tidy_data, "./getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/tidy_data.txt", row.names = FALSE)