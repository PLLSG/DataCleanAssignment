## Data Science Specialization - Getting and Cleaning Data course project
###The purpose of this project is to demonstrate ability to collect, work with, and clean a data set. 
###The goal is to prepare tidy data that can be used for later analysis.
###Author:  PLLSG
###Date:  23-Feb-2017


###COURSE PROJECT OVERVIEW
The raw data was sourced from the Human Activity Recognition Using Smartphones Dataset. Based on experiments carried out by 30 volunteers (labelled as Subject), each person performed a set of 6 activities (Walking, Walking Upstairs, Walking Downstairs, Sitting, Standing and Laying), wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, measurements in time and frequency domain variables were recorded, identified by the subject and the specific activity. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data sets.

Per the requirements of this course project, the prescribed analysis process steps were performed on the raw data sets using the R script (run_analysis.R). The result is a final tidy data set which provides the average of all the mean and standard deviation measurements for each unique Subject and Activity.

###COURSE PROJECT STUDY
The approach was to first understand the premise and background to how the raw data has been collected, for which the link [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones] providing a description of the project is most useful.

Next was to download the raw dataset from the given source link [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip]

From a study of the files included in the zipped dataset, the following files were identified as required to fulfil this course project requirements :
- 'features.txt': list of all the measurement variables
- 'activity_labels.txt': links the activity labels with their activity name
- 'test/X_test.txt': test set with all measurement data
- 'test/y_test.txt': activity labels for the test set
- 'test/subject_test.txt': each row identifies the subject performing the activity for each row in the test set
- 'train/X_train.txt': training set with all measurement data
- 'train/y_train.txt': activity labels for the training set
- 'train/subject_train.txt': each row identifies the subject performing the activity for each row in the training set

It was also noted that all the test and training data files have the same layout.

###DATA ANALYSIS PROCESS
run_analysis.R script has been coded to take the following steps :-

- a) Download the zip file for the raw dataset
- b) Unzip the set of raw data files into a new course_data folder of the default directory
- c) Load and merge all the identified test data files into a single test data set
- d) Load and merge all the identified training data files into a single training data set
- e) While compiling the test and training data sets, descriptive variable names was applied to the columns. For the measurement variables, their descriptive names were obtained from the features.txt file.
- f) As both the test and training data sets have similar file structure, they could be merged into a single complete data set for subsequent processing
- g) Next, a smaller data set is extracted from the complete data set based on selected data columns: Subject, Activity and Measurements on the mean and standard deviation for each measurement
- h) With this smaller data set, the descriptive activity names were mapped and merged in using the activity names provided by the activity_labels.txt file
- i) The last step is to generate a final data set that shows the average of every measurement variable on mean and standard deviation for each subject performing each activity


Final tidy data set
==============
Full filename saved:    "./course_data/AvgMeasures_by_Subject+Activity.txt"



###COURSE PROJECT REQUIREMENTS
1.  Merges the training and the test sets to create one data set.
     This was achieved in step f) of the data analysis process described above.

2.  Extracts only the measurements on the mean and standard deviation for each measurement.
     From the descriptive measurement variable names provided in the features.txt file, it was possible to correctly identify those columns with names containing "mean()" and "std()" as pertaining to the measurements on mean and standard deviation.

3.  Uses descriptive activity names to name the activities in the data set
     Using the activity_labels.txt file provided, it facilitated mapping to the corresponding activity label in the test and training data sets to derive the descriptive activity name.

4.  Appropriately labels the data set with descriptive variable names.
     All the data columns in the resulting data set have been labelled with appropriate descriptive names to reflect the meaning of the variables. In particular, the names of the measurement variables are adopted from those provided by the features.txt file.

5.  From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
     This was achieved as the result shows the computed mean values of every measurement variable on mean and standard deviation for each unique subject and activity.
     The final data set also complies with the tidy data set criteria as each row represents a specific subject performing a specific activity without any repetition. Also, every measurement variable is in its own column.
