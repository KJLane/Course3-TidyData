## Course 3: Getting & cleaning Data - Assignment

# You should create one R script called run_analysis.R that does the following. 
# 
# Merges the training and the test sets to create one data set.
# Extracts only the measurements on the mean and standard deviation for each measurement. 
# Uses descriptive activity names to name the activities in the data set
# Appropriately labels the data set with descriptive variable names. 
# Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

TestSubjects <- read.table("./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/subject_test.txt", col.names= "Subjects")
TestLabels <- read.table("./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/Y_test.txt", col.names= "Activity Label")
measurementLabels <- read.table("./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/features.txt",sep=" ", col.names=c("measurement.id","Description"))
measurementsTest <- read.table("./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/X_test.txt", col.names=measurementLabels$Description)

TestDataCombined <- cbind(TestSubjects,TestLabels,measurementsTest)





## Also works (now)...
TestSet2 <- read.table("./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/X_test.txt", header = FALSE)
FeatureTable <- read.table("./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/features.txt", sep=" ", col.names=c("measurement.id","Description"))
colnames(TestSet2) <- FeatureTable$Description

## DOES NOT WORK because it doesn't specify which column of 'features' (1st or 2nd) and 
    # TestDataSet <- read.table("./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/X_test.txt", header = FALSE)
    # Features <- as.list("./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/features.txt")
    # colnames(TestDataSet) <- Features