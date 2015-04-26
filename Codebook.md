Codebook for Getting and Cleaning data


==================================================================
Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. 
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) 
wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we 
captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments 
have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into 
two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled 
in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, 
which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body 
acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a 
filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating 
variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.


Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. 
These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using 
a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the 
acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using 
another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ 
and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm 
(tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, 
fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

From this raw data, the average of each variable for each activity and each subject was isolated.
To accomplish this, the following steps were taken:
1. training and test sets were merged
2. the measurements on the mean and standard deviation were extracted for each measurement
3. the activities were renamed in the dataset
4. descripitive variable names were set
5. finally, the average of each variable for each activity and each subject was isolated. 



Variables 3-88 are means or standard deviations (as per indicated in variable name) of 
measurements and individual values are means per subject per activity. There are 6 classes of 
activities: laying, sitting, standing, walking, walking downstairs and walkig upstairs.  

The data consists of 88 variables and 180 rows (6 activities times 30 subjects).

The variables are:

"1" "subject"
"2" "activity"
"3" "tBodyAcc-mean()-X"
"4" "tBodyAcc-mean()-Y"
"5" "tBodyAcc-mean()-Z"
"6" "tGravityAcc-mean()-X"
"7" "tGravityAcc-mean()-Y"
"8" "tGravityAcc-mean()-Z"
"9" "tBodyAccJerk-mean()-X"
"10" "tBodyAccJerk-mean()-Y"
"11" "tBodyAccJerk-mean()-Z"
"12" "tBodyGyro-mean()-X"
"13" "tBodyGyro-mean()-Y"
"14" "tBodyGyro-mean()-Z"
"15" "tBodyGyroJerk-mean()-X"
"16" "tBodyGyroJerk-mean()-Y"
"17" "tBodyGyroJerk-mean()-Z"
"18" "tBodyAccMag-mean()"
"19" "tGravityAccMag-mean()"
"20" "tBodyAccJerkMag-mean()"
"21" "tBodyGyroMag-mean()"
"22" "tBodyGyroJerkMag-mean()"
"23" "fBodyAcc-mean()-X"
"24" "fBodyAcc-mean()-Y"
"25" "fBodyAcc-mean()-Z"
"26" "fBodyAcc-meanFreq()-X"
"27" "fBodyAcc-meanFreq()-Y"
"28" "fBodyAcc-meanFreq()-Z"
"29" "fBodyAccJerk-mean()-X"
"30" "fBodyAccJerk-mean()-Y"
"31" "fBodyAccJerk-mean()-Z"
"32" "fBodyAccJerk-meanFreq()-X"
"33" "fBodyAccJerk-meanFreq()-Y"
"34" "fBodyAccJerk-meanFreq()-Z"
"35" "fBodyGyro-mean()-X"
"36" "fBodyGyro-mean()-Y"
"37" "fBodyGyro-mean()-Z"
"38" "fBodyGyro-meanFreq()-X"
"39" "fBodyGyro-meanFreq()-Y"
"40" "fBodyGyro-meanFreq()-Z"
"41" "fBodyAccMag-mean()"
"42" "fBodyAccMag-meanFreq()"
"43" "fBodyBodyAccJerkMag-mean()"
"44" "fBodyBodyAccJerkMag-meanFreq()"
"45" "fBodyBodyGyroMag-mean()"
"46" "fBodyBodyGyroMag-meanFreq()"
"47" "fBodyBodyGyroJerkMag-mean()"
"48" "fBodyBodyGyroJerkMag-meanFreq()"
"49" "angle(tBodyAccMean,gravity)"
"50" "angle(tBodyAccJerkMean),gravityMean)"
"51" "angle(tBodyGyroMean,gravityMean)"
"52" "angle(tBodyGyroJerkMean,gravityMean)"
"53" "angle(X,gravityMean)"
"54" "angle(Y,gravityMean)"
"55" "angle(Z,gravityMean)"
"56" "tBodyAcc-std()-X"
"57" "tBodyAcc-std()-Y"
"58" "tBodyAcc-std()-Z"
"59" "tGravityAcc-std()-X"
"60" "tGravityAcc-std()-Y"
"61" "tGravityAcc-std()-Z"
"62" "tBodyAccJerk-std()-X"
"63" "tBodyAccJerk-std()-Y"
"64" "tBodyAccJerk-std()-Z"
"65" "tBodyGyro-std()-X"
"66" "tBodyGyro-std()-Y"
"67" "tBodyGyro-std()-Z"
"68" "tBodyGyroJerk-std()-X"
"69" "tBodyGyroJerk-std()-Y"
"70" "tBodyGyroJerk-std()-Z"
"71" "tBodyAccMag-std()"
"72" "tGravityAccMag-std()"
"73" "tBodyAccJerkMag-std()"
"74" "tBodyGyroMag-std()"
"75" "tBodyGyroJerkMag-std()"
"76" "fBodyAcc-std()-X"
"77" "fBodyAcc-std()-Y"
"78" "fBodyAcc-std()-Z"
"79" "fBodyAccJerk-std()-X"
"80" "fBodyAccJerk-std()-Y"
"81" "fBodyAccJerk-std()-Z"
"82" "fBodyGyro-std()-X"
"83" "fBodyGyro-std()-Y"
"84" "fBodyGyro-std()-Z"
"85" "fBodyAccMag-std()"
"86" "fBodyBodyAccJerkMag-std()"
"87" "fBodyBodyGyroMag-std()"
"88" "fBodyBodyGyroJerkMag-std()"
 