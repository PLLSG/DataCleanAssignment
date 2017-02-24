# Data Science Specialization - Getting and Cleaning Data course
# The purpose of this project is to demonstrate ability to collect, work with, and clean a data set. 
# The goal is to prepare tidy data that can be used for later analysis.
# Following is the R script for this course project
# Author:  PLLSG
# Date: 21-Feb-2017

##Download and unzip given data set for course project : 
# https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

if(!file.exists("course_data")) {dir.create("course_data")}
setwd("./course_data")

fileurl<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileurl, destfile= "HAR_dataset.zip")
unzip("HAR_dataset.zip")

##Load the training & test data sets
library(data.table)
library(dplyr)

# Read all test data files with column names applied and combine into 1 data table

##Per project requirement: 4. Appropriately labels the data set with descriptive variable names.
##Descriptive column names for measurement variables are applied from the features.txt file

  tstdt<-as.data.table(read.table("./UCI HAR Dataset/test/X_test.txt"))
  colnames(tstdt)<-readLines("./UCI HAR Dataset/features.txt")

  tstycl<-as.data.table(read.table("./UCI HAR Dataset/test/y_test.txt",
                        colClasses="factor",col.names="Activitynum"))

  tstsbj<-as.data.table(read.table("./UCI HAR Dataset/test/subject_test.txt",
                        colClasses="factor",col.names="Subject"))

  tstfull<-cbind(tstsbj,tstycl,tstdt)

# Read all training data files with column names applied and combine into 1 data table

##Per project requirement: 4. Appropriately labels the data set with descriptive variable names.
##Descriptive column names for measurement variables are applied from the features.txt file

  trndt<-as.data.table(read.table("./UCI HAR Dataset/train/X_train.txt"))
  colnames(trndt)<-readLines("./UCI HAR Dataset/features.txt")

  trnycl<-as.data.table(read.table("./UCI HAR Dataset/train/y_train.txt",
                        colClasses="factor",col.names="Activitynum"))

  trnsbj<-as.data.table(read.table("./UCI HAR Dataset/train/subject_train.txt",
                        colClasses="factor",col.names="Subject"))

  trnfull<-cbind(trnsbj,trnycl,trndt)

##Per project requirement: 1. Merges the training and the test sets to create one data set.
##Combine all observations from training & test data tables into 1 data set
fulldt<-rbindlist(list(tstfull,trnfull), use.names=T, fill=T)

##Per project requirement: 2. Extracts only the measurements on the mean and standard deviation for each measurement.
##Extract all observations with only columns for measurements of mean and standard deviation 
fullvars<-colnames(fulldt)
fullidx<-(fullvars %like% "Activity"|
          fullvars %like% "Subject"|
          fullvars %like% "mean()"|
          fullvars %like% "std()") & !(fullvars %like% "meanFreq()")
reqvars<-fullvars[fullidx]
reqdt<-select(fulldt, one_of(reqvars))

##Per project requirement: 3. Uses descriptive activity names to name the activities in the data set
##Insert descriptive activity name representing the Activity number
# Descriptive activity names are provided by the activity_labels.txt file
actlbl<-read.table("./UCI HAR Dataset/activity_labels.txt",
        colClasses="factor",col.names=c("Actnum","Actlabel"))

# Merge in the Activity Labels table to include descriptive activity names
reqdt1<-merge(reqdt,actlbl,by.x="Activitynum",by.y="Actnum",all.x=TRUE,all.y=FALSE,sort=FALSE) %>% 
        select(Subject, Activitynum, Activity=Actlabel, everything())

# Clean up measurement variable names with numeric prefix
colnames(reqdt1)<-sub("^[0-9]+ ","",colnames(reqdt1))

##Per project requirement: 5. Create a second, independent tidy data set with the average of each variable 
##                            for each activity and each subject.
##Create new data set with average on each measurement variable for each unique (subject + activity)

reqmelt<-melt(reqdt1,id.vars=c("Subject","Activitynum","Activity"),na.rm=TRUE)
reqcast<-dcast(reqmelt,Subject+Activity ~ variable,mean) %>%
         arrange(as.numeric(as.character(Subject)),as.character(Activity))

# Save final tidy data set into text file
write.table(reqcast,file="AvgMeasures_by_Subject+Activity.txt",row.names=FALSE)

# Display final tidy data set
View(reqcast)

setwd("..")