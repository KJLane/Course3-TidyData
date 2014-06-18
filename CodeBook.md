Human Activity Recognition Using Smartphones Data Set:
============================== 
## Average of Measured Variables

Overview:
-----------------------------
The Human Activity Recognition database is built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors. The 'run_analysis.R' script summarizes the variable information into the average for the activties' mean and standard deviation measurements. 

* 30 volunteers: Labeled as "SubjectID" 1-30
* Measuring 6 activities:
  1. WALKING
  2. WALKING_UPSTAIRS
  3. WALKING_DOWNSTAIRS
  4. SITTING
  5. STANDING
  6. LAYING
* Total of 180 rows (one per participant per activity)
* Provides the average of 79 different variables used from the original experiment (see below details about feature selections for description and units)
* Data Set Characteristics: Multivariate, Time-Series


Data Set Information:
------------------------------
The attached tidy data set provides the average of each variable (total of 79) for each activity of daily living (total of 6) for each particpant (total of 30) for the experiement. Thus, there is a total of 180 rows of data: one row per activity per participant. Example: One row for the average of all measured variables for the activity of 'WALKING' for partipants 1-30. The variable averages are derived from a larger data set that have been subset to only include the mean (Mean value) or std (Standard deviation) of these variables. See the below 'Feature Selection' for a description of the variables and a naming key.

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (1- WALKING, 2- WALKING_UPSTAIRS, 3- WALKING_DOWNSTAIRS, 4- SITTING, 5- STANDING, 6- LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz.


Feature Selection:
------------------------------
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

<b>The FINAL set of variables is the average (mean) of each of the signals.</b>

Time Signals: A Mean and Standard Deviation (Std) measurment for each axial: X, Y, and Z...
* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag

Fast Fourier Transform Signals: A Mean and Standard Deviation (Std) measurment for each axial: X, Y, and Z...
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag



## For more information:
A full description is available at the site where the data was obtained: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones


## Citation Request:
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
