Codebook for wearable computing dataset
==================================

## Variables
````
subject                    1..2
    Subject number
                           1..30 .Unique identifier assigned to each subject

activity                   6..18
    Acitivity label
                           "WALKING"
                           "WALKING_UPSTAIRS"
                           "WALKING_DOWNSTAIRS"
                           "SITTING"
                           "STANDING"
                           "LAYING"

TimeBodyAccelerometerMean()-X             				12
    Described below

TimeBodyAccelerometerMean()-Y            				12
    Described below

TimeBodyAccelerometerMean()-Z             				12
    Described below

TimeBodyAccelerometerSTD()-X              				12
    Described below

TimeBodyAccelerometerSTD()-Y              				12
    Described below

TimeBodyAccelerometerSTD()-Z              				12
    Described below

TimeGravityAccelerometerMean()-X          				12
    Described below

TimeGravityAccelerometerMean()-Y          				12
    Described below

TimeGravityAccelerometerMean()-Z          				12
    Described below

TimeGravityAccelerometerSTD()-X           				12
    Described below

TimeGravityAccelerometerSTD()-Y           				12
    Described below

TimeGravityAccelerometerSTD()-Z           				12
    Described below

TimeBodyAccelerometerJerkMean()-X         				12
    Described below

TimeBodyAccelerometerJerkMean()-Y         				12
    Described below

TimeBodyAccelerometerJerkMean()-Z         				12
    Described below

TimeBodyAccelerometerJerkSTD()-X          				12
    Described below

TimeBodyAccelerometerJerkSTD()-Y          				12
    Described below

TimeBodyAccelerometerJerkSTD()-Z          				12
    Described below

TimeBodyGyroscopeMean()-X                 				12
    Described below

TimeBodyGyroscopeMean()-Y                 				12
    Described below

TimeBodyGyroscopeMean()-Z                 				12
    Described below

TimeBodyGyroscopeSTD()-X                  				12
    Described below

TimeBodyGyroscopeSTD()-Y                  				12
    Described below

TimeBodyGyroscopeSTD()-Z                  				12
    Described below

TimeBodyGyroscopeJerkMean()-X            				12
    Described below

TimeBodyGyroscopeJerkMean()-Y             				12
    Described below

TimeBodyGyroscopeJerkMean()-Z             				12
    Described below

TimeBodyGyroscopeJerkSTD()-X              				12
    Described below

TimeBodyGyroscopeJerkSTD()-Y              				12
    Described below

TimeBodyGyroscopeJerkSTD()-Z              				12
    Described below	

TimeBodyAccelerometerMagnitudeMean()      				12
    Described below

TimeBodyAccelerometerMagnitudeSTD()       				12
    Described below

TimeGravityAccelerometerMagnitudeMean()   				12
    Described below

TimeGravityAccelerometerMagnitudeSTD()    				12
    Described below

TimeBodyAccelerometerJerkMagnitudeMean()  				12
    Described below

TimeBodyAccelerometerJerkMagnitudeSTD()   				12
    Described below

TimeBodyGyroscopeMagnitudeMean()          				12
    Described below

TimeBodyGyroscopeMagnitudeSTD()           				12
    Described below

TimeBodyGyroscopeJerkMagnitudeMean()      				12
    Described below

TimeBodyGyroscopeJerkMagnitudeSTD()       				12
    Described below

FrequencyBodyAccelerometerMean()-X        				12
    Described below

FrequencyBodyAccelerometerMean()-Y        				12
    Described below

FrequencyBodyAccelerometerMean()-Z        				12
    Described below

FrequencyBodyAccelerometerSTD()-X         				12
    Described below

FrequencyBodyAccelerometerSTD()-Y         				12
    Described below

FrequencyBodyAccelerometerSTD()-Z         				12
    Described below

FrequencyBodyAccelerometerMeanFreq()-X    				12
    Described below

FrequencyBodyAccelerometerMeanFreq()-Y    				12
    Described below

FrequencyBodyAccelerometerMeanFreq()-Z    				12
    Described below

FrequencyBodyAccelerometerJerkMean()-X    				12
    Described below

FrequencyBodyAccelerometerJerkMean()-Y    				12
    Described below

FrequencyBodyAccelerometerJerkMean()-Z    				12
    Described below

FrequencyBodyAccelerometerJerkSTD()-X     				12
    Described below

FrequencyBodyAccelerometerJerkSTD()-Y     				12
    Described below

FrequencyBodyAccelerometerJerkSTD()-Z     				12
    Described below

FrequencyBodyAccelerometerJerkMeanFreq()-X              12
    Described below

FrequencyBodyAccelerometerJerkMeanFreq()-Y              12
    Described below

FrequencyBodyAccelerometerJerkMeanFreq()-Z              12
    Described below

FrequencyBodyGyroscopeMean()-X            				12
    Described below

FrequencyBodyGyroscopeMean()-Y            				12
    Described below

FrequencyBodyGyroscopeMean()-Z            				12
    Described below

FrequencyBodyGyroscopeSTD()-X             				12
    Described below

FrequencyBodyGyroscopeSTD()-Y             				12
    Described below

FrequencyBodyGyroscopeSTD()-Z            			 	12
    Described below

FrequencyBodyGyroscopeMeanFreq()-X        				12
    Described below

FrequencyBodyGyroscopeMeanFreq()-Y        				12
    Described below

FrequencyBodyGyroscopeMeanFreq()-Z        				12
    Described below	
	
FrequencyBodyAccelerometerMagnitudeMean()           	12
    Described below	
	        
FrequencyBodyAccelerometerMagnitudeSTD()            	12
    Described below	
	          
FrequencyBodyAccelerometerMagnitudeMeanFreq()       	12 
    Described below	
	   
FrequencyBodyAccelerometerJerkMagnitudeMean()       	12
    Described below	
	     
FrequencyBodyAccelerometerJerkMagnitudeSTD()        	12
    Described below	
	      
FrequencyBodyAccelerometerJerkMagnitudeMeanFreq()   	12
    Described below	
	 
FrequencyBodyGyroscopeMagnitudeMean()               	12 
    Described below	
	            
FrequencyBodyGyroscopeMagnitudeSTD()                	12
    Described below	
	             
FrequencyBodyGyroscopeMagnitudeMeanFreq()           	12
    Described below	
	       
FrequencyBodyGyroscopeJerkMagnitudeMean()           	12
    Described below	
	       
FrequencyBodyGyroscopeJerkMagnitudeSTD()            	12
    Described below	
	
FrequencyBodyGyroscopeJerkMagnitudeMeanFreq()       	12
    Described below	
````

## Data

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.


tbodyacc-xyz

tgravityacc-xyz

tbodyaccjerk-xyz

tbodygyro-xyz

tbodygyrojerk-xyz

tbodyaccmag

tgravityaccmag

tbodyaccjerkmag

tbodygyromag

tbodygyrojerkmag

fbodyacc-xyz

fbodyaccjerk-xyz

fbodygyro-xyz

fbodyaccmag

fbodyaccjerkmag

fbodygyromag

fbodygyrojerkmag

The set of variables that were estimated from these signals are: 

mean: Mean value

std: Standard deviation

## Transformation

All the values are means, aggregated over 30 subjects and 6 activities, hence the resulting dataset is 180 rows by 81 columns.