Coursera 'Getting and Cleaning Data' Class Assignment
=============================

This repo provides the information to create a new tidy set of data from the collected data of the "Human Activity Recognition Using Smartphones Data Set" experiment. This experiment created a Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.

In this repo is an R script (run_analysis.R), a Code Book for referencing the variables and these instructions to process the data into a tidy data set that provides the averages of variables from the original data. The data appears to help identify the average variable measurements to identify basic activities with particular ranges of accuracy. 

Set-Up Steps:
---------------------
1. Download the following zip file to your desired folder

    https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

2. Unzip the file to your desired folder

3. Download run_analysis.R file from this repo

4. Set your working directory using setwd() command to change your directory to the unzipped folder (so you'll be in the "UCI HAR Dataset" folder)

5. In the R console, open the run_analysis.R script of Course3AssignFunction(). 
   * The script will create a TidyData.txt file containing the average measurements of select sensor data. Note that this will be a tab-delimited file
   * Read the CodeBook.md for additional information about the new tidy data and description of the variables.

<b>Note that this R script was created on a Windows Operating System using R version 3.0.3 (2014-03-06). If using a Mac to run the script, file listing format may need to be adjusted accordingly.</b>

Tidy Data Organized by R Script 'run_analysis.R' as follows:
---------------------
1. Reads the experiments measurement labels into a data frame with columns "Measurement.ID" and "Description" (total of 561 observations)
2. Reads the text files of all Subjects, Labels and Measurements for the "Test" group (each file contains 2947 observations)
3. Combines the "Test" group files into one data frame with the "Description" labeling each variable column accordingly
4. Reads the text files of all Subjects, Labels and Measurements for the "Train" group (each file contains 7352 observations)
5. Combines the "Train" group files into one data frame with the "Description" labeling each variable column accordingly
6. 'FullDataSet' then combines all of the new "Test" and "Train" table's information into one data frame (creates data frame with 10299 obs. of 563 variables)
7. Subset the first two columns of the data to have the Subject ID and Activity ID
8. Subsets the FullDataSet variables to include only those with mean and std (standard deviation) measurements (79 total)
9. Combines the two subset files to produce a data frame with 10299 obs with a total of 81 variables
10. Reads the Activity Names file (6 different options: WALKING, SITTING, etc)
11. Adds a column in the combined data frame matching the Activity ID with the appropriate Activity Name so clearly indicates which activity the variables reference
12. Cleans up data labels by removing unnecessary symbols, uniform capitalization and style.
13. Condenses (melts) table to primary identifiers (SubjectID, ActivityID, ActivityDescription) to create a very tall, skinny table (813621 obs. of 5 variables)
14. Creates a tidy data frame giving the average (mean) of each of the variables to return a table with 180 observations (each of the 6 activities for each of the 30 subjects) with 81 variables.
15. Writes the new tidy data frame into a tab-delimited file called TidyDtat.txt


### Additional Information
A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones


### Citation Request:
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
