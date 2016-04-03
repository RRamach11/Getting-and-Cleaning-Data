

## Here we are downloading data that is needed for this project
## Since the downloaded file is a zip file, we need to unzip it
if(!file.exists("./data")){dir.create("./data")}
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile = "./data/wearableDataset.zip")
unzip(zipfile = "./data/wearableDataset.zip", exdir = "./data")

## We need to know all the files in 'UCI HAR Dataset' that was just created after unzipping in step above
wearableDatasetfiles <- list.files("./data/UCI HAR Dataset", recursive=TRUE)

## For the purposes of this project, we need to read only the 'Activity', 'Subject' and 'Feature' files
## Activity files
testWearableActivity <- read.table("./data/UCI HAR Dataset/test/Y_test.txt", header=FALSE)
trainWearableActivity <- read.table("./data/UCI HAR Dataset/train/Y_train.txt", header=FALSE)

## Subject files
testWearableSubject <- read.table("./data/UCI HAR Dataset/test/subject_test.txt", header=FALSE)
trainWearableSubject <- read.table("./data/UCI HAR Dataset/train/subject_train.txt", header=FALSE)

## Feature Files
testWearableFeature <- read.table("./data/UCI HAR Dataset/test/X_test.txt", header=FALSE)
trainWearableFeature <- read.table("./data/UCI HAR Dataset/train/X_train.txt", header=FALSE)

## Now we will concatenate the above Activity, Subject , and Feature files
wearableActivity <- rbind(trainWearableActivity, testWearableActivity)
wearableSubject <- rbind(trainWearableSubject,testWearableSubject)
WearableFeature <- rbind(trainWearableFeature,testWearableFeature)

## Now we will set variable names
names(wearableActivity) <- c("Activity")
names(wearableSubject) <- c("Subject")
namesofFeatures <- read.table("./data/UCI HAR Dataset/features.txt")
names(WearableFeature) <- namesofFeatures$V2

## Now we will merge all data using cbind function
allData <- cbind(WearableFeature, cbind(wearableSubject,wearableActivity))

## We need to only extract the mean and standard deviation for each measurement from allData
subdatanamesofFeatures <-namesofFeatures$V2[grep("mean\\(\\)|std\\(\\)", namesofFeatures$V2)]
chosenNames<-c(as.character(subdatanamesofFeatures), "Subject", "Activity" )
allData<-subset(allData,select=chosenNames)

## now we use descriptive activity names to name the activities in the data set
activityLabels <- read.table("./data/UCI HAR Dataset/activity_labels.txt", header=FALSE)
allData$Activity <- gsub(1, "WALKING", allData$Activity)
allData$Activity <- gsub(2, "WALKING_UPSTAIRS", allData$Activity)
allData$Activity <- gsub(3, "WALKING_DOWNSTAIRS", allData$Activity)
allData$Activity <- gsub(4, "SITTING", allData$Activity)
allData$Activity <- gsub(5, "STANDING", allData$Activity)
allData$Activity <- gsub(6, "LAYING", allData$Activity)


## now we will appropriately labels the data set with descriptive variable names.
names(allData)<-gsub("^t", "Time", names(allData))
names(allData)<-gsub("^f", "Frequency", names(allData))
names(allData)<-gsub("Acc", "Accelerometer", names(allData))
names(allData)<-gsub("Gyro", "Gyroscope", names(allData))
names(allData)<-gsub("Mag", "Magnitude", names(allData))
names(allData)<-gsub("BodyBody", "Body", names(allData))

names(allData)

## From the data set in step 4, we create a second, independent tidy data set with the average of each variable for each activity and each subject.
library(plyr);
tidyData<-aggregate(. ~Subject + Activity, allData, mean)
tidyData<-tidyData[order(tidyData$Subject,tidyData$Activity),]
write.table(tidyData, file = "tidydata.txt",row.name=FALSE)

