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

Tidy Data Organized by R Script as follows:
---------------------
1. 

### Additional Information
A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones


### Citation Request:
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
