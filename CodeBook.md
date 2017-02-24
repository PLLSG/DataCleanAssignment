# Data Science Specialization - Getting and Cleaning Data course
# The purpose of this project is to demonstrate ability to collect, work with, and 
# clean a data set. 
# The goal is to prepare tidy data that can be used for later analysis.
# Following describes the final tidy data set resulting from the analysis.
# Author:  PLLSG
# Date: 23-Feb-2017

CODEBOOK
========

DATA SET OVERVIEW
-----------------
## Final tidy data set
Filename:    ./course_data/AvgMeasures_by_Subject+Activity.txt
Class:       data.frame
Dimensions:  180 rows, 68 columns
Sorted by:   Subject (numerical order), Activity (alphabetical order)

The raw data was sourced from the Human Activity Recognition Using Smartphones Dataset. Based on experiments carried out by 30 volunteers (labelled as Subject), each person performed a set of 6 activities (Walking, Walking Upstairs, Walking Downstairs, Sitting, Standing and Laying), wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, measurements in time and frequency domain variables were recorded, identified by the subject and the specific activity. 

Per the requirements of this course project, the given analysis process steps performed on the raw data sets (described in detail in README.md) resulted in this final tidy data set. It provides the average of all the mean and standard deviation measurements for each unique Subject and Activity.


DATA VARIABLES
--------------
## Explanation of variable names
Subject - unique identifier for each of the 30 volunteers
Activity - depicts the activity done by the volunteer
t*, f* - measurements derived from accelerometer and gyroscope 3-axial raw signals

## Components of measurement variable names
- time domain signals (prefix 't' to denote time)
- body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ)
- body linear acceleration and angular velocity derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ)
- magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag)
- Fast Fourier Transform (FFT) was applied to signals (prefix 'f' to denote frequency)
- '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions
- estimated signal values using '-mean()': Mean value or '-std()': Standard deviation


    DATA COLUMN                     DATA TYPE
    ===========                     =========
1   Subject                         Factor with 30 levels: 1, 2, 3, 4, .... 28, 29, 30
2   Activity                        Factor with 6 levels: LAYING, SITTING, STANDING, 
                                                          WALKING, WALKING_DOWNSTAIRS,
                                                          WALKING_UPSTAIRS
3   tBodyAcc-mean()-X               numeric
4   tBodyAcc-mean()-Y               numeric
5   tBodyAcc-mean()-Z               numeric
6   tBodyAcc-std()-X                numeric
7   tBodyAcc-std()-Y                numeric
8   tBodyAcc-std()-Z                numeric
9   tGravityAcc-mean()-X            numeric
10  tGravityAcc-mean()-Y            numeric
11  tGravityAcc-mean()-Z            numeric
12  tGravityAcc-std()-X             numeric
13  tGravityAcc-std()-Y             numeric
14  tGravityAcc-std()-Z             numeric
15  tBodyAccJerk-mean()-X           numeric
16  tBodyAccJerk-mean()-Y           numeric
17  tBodyAccJerk-mean()-Z           numeric
18  tBodyAccJerk-std()-X            numeric
19  tBodyAccJerk-std()-Y            numeric
20  tBodyAccJerk-std()-Z            numeric
21  tBodyGyro-mean()-X              numeric
22  tBodyGyro-mean()-Y              numeric
23  tBodyGyro-mean()-Z              numeric
24  tBodyGyro-std()-X               numeric
25  tBodyGyro-std()-Y               numeric
26  tBodyGyro-std()-Z               numeric
27  tBodyGyroJerk-mean()-X          numeric
28  tBodyGyroJerk-mean()-Y          numeric
29  tBodyGyroJerk-mean()-Z          numeric
30  tBodyGyroJerk-std()-X           numeric
31  tBodyGyroJerk-std()-Y           numeric
32  tBodyGyroJerk-std()-Z           numeric
33  tBodyAccMag-mean()              numeric
34  tBodyAccMag-std()               numeric
35  tGravityAccMag-mean()           numeric
36  tGravityAccMag-std()            numeric
37  tBodyAccJerkMag-mean()          numeric
38  tBodyAccJerkMag-std()           numeric
39  tBodyGyroMag-mean()             numeric
40  tBodyGyroMag-std()              numeric
41  tBodyGyroJerkMag-mean()         numeric
42  tBodyGyroJerkMag-std()          numeric
43  fBodyAcc-mean()-X               numeric
44  fBodyAcc-mean()-Y               numeric
45  fBodyAcc-mean()-Z               numeric
46  fBodyAcc-std()-X                numeric
47  fBodyAcc-std()-Y                numeric
48  fBodyAcc-std()-Z                numeric
49  fBodyAccJerk-mean()-X           numeric
50  fBodyAccJerk-mean()-Y           numeric
51  fBodyAccJerk-mean()-Z           numeric
52  fBodyAccJerk-std()-X            numeric
53  fBodyAccJerk-std()-Y            numeric
54  fBodyAccJerk-std()-Z            numeric
55  fBodyGyro-mean()-X              numeric
56  fBodyGyro-mean()-Y              numeric
57  fBodyGyro-mean()-Z              numeric
58  fBodyGyro-std()-X               numeric
59  fBodyGyro-std()-Y               numeric
60  fBodyGyro-std()-Z               numeric
61  fBodyAccMag-mean()              numeric
62  fBodyAccMag-std()               numeric
63  fBodyBodyAccJerkMag-mean()      numeric
64  fBodyBodyAccJerkMag-std()       numeric
65  fBodyBodyGyroMag-mean()         numeric
66  fBodyBodyGyroMag-std()          numeric
67  fBodyBodyGyroJerkMag-mean()     numeric
68  fBodyBodyGyroJerkMag-std()      numeric