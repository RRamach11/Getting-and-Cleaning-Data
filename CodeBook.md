TIDY DATA PROJECT

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The dataset includes the following files:
=========================================

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 
 
In this project
=========================================
I have created a merged data of the train and test data set to create on big data set. I have called it allData and here are variables in allData:

names(allData)
 [1] "TimeBodyAccelerometer-mean()-X"                 "TimeBodyAccelerometer-mean()-Y"                
 [3] "TimeBodyAccelerometer-mean()-Z"                 "TimeBodyAccelerometer-std()-X"                 
 [5] "TimeBodyAccelerometer-std()-Y"                  "TimeBodyAccelerometer-std()-Z"                 
 [7] "TimeGravityAccelerometer-mean()-X"              "TimeGravityAccelerometer-mean()-Y"             
 [9] "TimeGravityAccelerometer-mean()-Z"              "TimeGravityAccelerometer-std()-X"              
[11] "TimeGravityAccelerometer-std()-Y"               "TimeGravityAccelerometer-std()-Z"              
[13] "TimeBodyAccelerometerJerk-mean()-X"             "TimeBodyAccelerometerJerk-mean()-Y"            
[15] "TimeBodyAccelerometerJerk-mean()-Z"             "TimeBodyAccelerometerJerk-std()-X"             
[17] "TimeBodyAccelerometerJerk-std()-Y"              "TimeBodyAccelerometerJerk-std()-Z"             
[19] "TimeBodyGyroscope-mean()-X"                     "TimeBodyGyroscope-mean()-Y"                    
[21] "TimeBodyGyroscope-mean()-Z"                     "TimeBodyGyroscope-std()-X"                     
[23] "TimeBodyGyroscope-std()-Y"                      "TimeBodyGyroscope-std()-Z"                     
[25] "TimeBodyGyroscopeJerk-mean()-X"                 "TimeBodyGyroscopeJerk-mean()-Y"                
[27] "TimeBodyGyroscopeJerk-mean()-Z"                 "TimeBodyGyroscopeJerk-std()-X"                 
[29] "TimeBodyGyroscopeJerk-std()-Y"                  "TimeBodyGyroscopeJerk-std()-Z"                 
[31] "TimeBodyAccelerometerMagnitude-mean()"          "TimeBodyAccelerometerMagnitude-std()"          
[33] "TimeGravityAccelerometerMagnitude-mean()"       "TimeGravityAccelerometerMagnitude-std()"       
[35] "TimeBodyAccelerometerJerkMagnitude-mean()"      "TimeBodyAccelerometerJerkMagnitude-std()"      
[37] "TimeBodyGyroscopeMagnitude-mean()"              "TimeBodyGyroscopeMagnitude-std()"              
[39] "TimeBodyGyroscopeJerkMagnitude-mean()"          "TimeBodyGyroscopeJerkMagnitude-std()"          
[41] "FrequencyBodyAccelerometer-mean()-X"            "FrequencyBodyAccelerometer-mean()-Y"           
[43] "FrequencyBodyAccelerometer-mean()-Z"            "FrequencyBodyAccelerometer-std()-X"            
[45] "FrequencyBodyAccelerometer-std()-Y"             "FrequencyBodyAccelerometer-std()-Z"            
[47] "FrequencyBodyAccelerometerJerk-mean()-X"        "FrequencyBodyAccelerometerJerk-mean()-Y"       
[49] "FrequencyBodyAccelerometerJerk-mean()-Z"        "FrequencyBodyAccelerometerJerk-std()-X"        
[51] "FrequencyBodyAccelerometerJerk-std()-Y"         "FrequencyBodyAccelerometerJerk-std()-Z"        
[53] "FrequencyBodyGyroscope-mean()-X"                "FrequencyBodyGyroscope-mean()-Y"               
[55] "FrequencyBodyGyroscope-mean()-Z"                "FrequencyBodyGyroscope-std()-X"                
[57] "FrequencyBodyGyroscope-std()-Y"                 "FrequencyBodyGyroscope-std()-Z"                
[59] "FrequencyBodyAccelerometerMagnitude-mean()"     "FrequencyBodyAccelerometerMagnitude-std()"     
[61] "FrequencyBodyAccelerometerJerkMagnitude-mean()" "FrequencyBodyAccelerometerJerkMagnitude-std()" 
[63] "FrequencyBodyGyroscopeMagnitude-mean()"         "FrequencyBodyGyroscopeMagnitude-std()"         
[65] "FrequencyBodyGyroscopeJerkMagnitude-mean()"     "FrequencyBodyGyroscopeJerkMagnitude-std()"     
[67] "Subject"                                        "Activity"
