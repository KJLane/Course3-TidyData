## Course 3: Getting & cleaning Data - Assignment
# You should create one R script called run_analysis.R that does the following. 
# 
# Merges the training and the test sets to create one data set.
# Extracts only the measurements on the mean and standard deviation for each measurement. 
# Uses descriptive activity names to name the activities in the data set
# Appropriately labels the data set with descriptive variable names. 
# Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

Course3AssignFunction <- function(){
  
  require(plyr)
  require(reshape2)
  
  measurementLabels <- read.table("./features.txt",sep=" ", col.names=c("measurement.id","Description"))
  
  TestSubjects <- read.table("./test/subject_test.txt", col.names= "Subject.ID")
  TestLabels <- read.table("./test/Y_test.txt", col.names= "Activity Label")
  measurementsTest <- read.table("./test/X_test.txt", col.names=measurementLabels$Description)
  TestDataCombined <- cbind(TestSubjects,TestLabels,measurementsTest)
  
  TrainSubjects <- read.table("./train/subject_train.txt", col.names= "Subject.ID")
  TrainLabels <- read.table("./train/Y_train.txt", col.names= "Activity Label")
  measurementsTrain <- read.table("./train/X_train.txt", col.names=measurementLabels$Description)
  TrainDataCombined <- cbind(TrainSubjects,TrainLabels,measurementsTrain)
  
  FullDataSet <- rbind(TestDataCombined,TrainDataCombined)
  
  SubjectActNum <- FullDataSet[,c(1:2)]
  ColsNames.Mean.STD <- FullDataSet[ ,grepl("mean", names(FullDataSet)) | grepl("std", names(FullDataSet))]
  TidyDataMeanSTD <- cbind(SubjectActNum, ColsNames.Mean.STD)
  
  ActivityNames <- read.table("./activity_labels.txt",sep=" ", col.names=c("ActivityNum","ActivityDescription"))
  
  TidyDataInfo <- merge(TidyDataMeanSTD, ActivityNames, by.x= "Activity.Label", by.y="ActivityNum")
  
  ColOrderTidyData2 <- TidyDataInfo[,c(1,82,2:81)]
  colnames(ColOrderTidyData2) <- gsub("\\.", "", colnames(ColOrderTidyData2), perl=TRUE)
  colnames(ColOrderTidyData2) <- gsub("STD", "Std", colnames(ColOrderTidyData2), perl=TRUE)
  colnames(ColOrderTidyData2) <- gsub("mean", "Mean", colnames(ColOrderTidyData2), perl=TRUE)
  
  TableMelt <- melt(ColOrderTidyData2, id=c(1,2,3))
  
  ActivityMeans <- dcast(TableMelt,ActivityDescription+SubjectID~variable, mean, drop=TRUE)
  
  write.table(ActivityMeans,"../TidyData.txt", sep="\t", row.names=FALSE)
}
