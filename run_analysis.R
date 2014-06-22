############# code for first dataset #############

##import activity labels and features
activity_labels <- read.table("~/Desktop/activity_labels.txt", quote="\"")
features <- read.table("~/Desktop/features.txt", quote="\"")

##import subject identifier
subject_test  <- read.table("~/Desktop/test/subject_test.txt", quote="\"")
subject_train  <- read.table("~/Desktop/train/subject_train.txt", quote="\"")

##import activity identifier
y_test <- read.table("~/Desktop/test/y_test.txt", quote="\"")
y_train <- read.table("~/Desktop/train/y_train.txt", quote="\"")

##import main dataset
X_test <- read.table("~/Desktop/test/X_test.txt", quote="\"")
X_train <- read.table("~/Desktop/train/X_train.txt", quote="\"")

##merge subject and activity identification 
identificators_test <- cbind(subject_test, y_test)
identificators_train <- cbind(subject_train, y_train)

##rename variables of subject and activity identifiers
colnames(identificators_test) <- c("Subject", "Activity")
colnames(identificators_train) <- c("Subject", "Activity")

##add variable names ("features") to main datasets
colnames(X_test) <- features$V2
colnames(X_train) <- features$V2

##merge identificators
dataset_test_pre <- cbind(identificators_test, X_test)
dataset_train_pre <- cbind(identificators_train, X_train)

##add column with group identifyer
dataset_test_pre <- cbind(Group = "test", dataset_test_pre)
dataset_train_pre <- cbind(Group = "train", dataset_train_pre)

##merge "test" and "train" datasets
dataset_pre <- rbind(dataset_test_pre, dataset_train_pre)

##assign activity labels
dataset_pre$Activity[dataset_pre$Activity == "1"] <- "WALKIN"
dataset_pre$Activity[dataset_pre$Activity == "2"] <- "WALKING_UPSTAIRS"
dataset_pre$Activity[dataset_pre$Activity == "3"] <- "WALKING_DOWNSTAIRS"
dataset_pre$Activity[dataset_pre$Activity == "4"] <- "SITTING"
dataset_pre$Activity[dataset_pre$Activity == "5"] <- "STANDING"
dataset_pre$Activity[dataset_pre$Activity == "6"] <- "LAYING"

##identify variables with "mean", "std" (standard deviations)
var_mean <- grep(glob2rx('*mean*'), colnames(dataset_pre))
var_std <- grep(glob2rx('*std*'), colnames(dataset_pre))

##subset variables with "mean", "std"
first <- 1:3
select <- sort(c(first, var_mean, var_std))
dataset_1_pre <- dataset_pre[, select]

##render variable names more readable
col_names <- colnames(dataset_1_pre)
col_names <- gsub("\\()", "", col_names)
col_names <- gsub("\\-", "_", col_names)
col_names <- gsub("tBody", "t_Body", col_names)
col_names <- gsub("BodyAcc", "Body_Acc", col_names)
col_names <- gsub("GravityAcc", "Gravity_Acc", col_names)
col_names <- gsub("AccJerk", "Acc_Jerk", col_names)
col_names <- gsub("BodyGyro", "Body_Gyro", col_names)
col_names <- gsub("GyroJerk", "Gyro_Jerk", col_names)
col_names <- gsub("AccMag", "Acc_Mag", col_names)
col_names <- gsub("JerkMag", "Jerk_Mag", col_names)
col_names <- gsub("JerkMag", "Jerk_Mag", col_names)
col_names <- gsub("GyroMag", "Gyro_Mag", col_names)
col_names <- gsub("GyroJerkMag", "Gyro_Jerk_Mag", col_names)
col_names <- gsub("fBody", "f_Body", col_names)
col_names <- gsub("tGravity", "t_Gravity", col_names)
col_names <- gsub("BodyBody", "Body", col_names)

##add new variable names
colnames(dataset_1_pre) <- col_names

##import "test" data from "Inertial Signals" folder
body_acc_x_test <- read.table("~/Desktop/test/Inertial Signals/body_acc_x_test.txt", quote="\"")
body_acc_y_test <- read.table("~/Desktop/test/Inertial Signals/body_acc_y_test.txt", quote="\"")
body_acc_z_test <- read.table("~/Desktop/test/Inertial Signals/body_acc_z_test.txt", quote="\"")
body_gyro_x_test <- read.table("~/Desktop/test/Inertial Signals/body_gyro_x_test.txt", quote="\"")
body_gyro_y_test <- read.table("~/Desktop/test/Inertial Signals/body_gyro_y_test.txt", quote="\"")
body_gyro_z_test <- read.table("~/Desktop/test/Inertial Signals/body_gyro_z_test.txt", quote="\"")
total_acc_x_test <- read.table("~/Desktop/test/Inertial Signals/total_acc_x_test.txt", quote="\"")
total_acc_y_test <- read.table("~/Desktop/test/Inertial Signals/total_acc_y_test.txt", quote="\"")
total_acc_z_test <- read.table("~/Desktop/test/Inertial Signals/total_acc_z_test.txt", quote="\"")

##merge "test" tables with "Inertial Signals" data
inert_sig_test <- cbind(body_acc_x_test, body_acc_y_test, body_acc_z_test, 
                        body_gyro_x_test,body_gyro_y_test, body_gyro_z_test, 
                        total_acc_x_test, total_acc_y_test, total_acc_z_test)

##import "train" data from "Inertial Signals" folder
body_acc_x_train <- read.table("~/Desktop/train/Inertial Signals/body_acc_x_train.txt", quote="\"")
body_acc_y_train <- read.table("~/Desktop/train/Inertial Signals/body_acc_y_train.txt", quote="\"")
body_acc_z_train <- read.table("~/Desktop/train/Inertial Signals/body_acc_z_train.txt", quote="\"")
body_gyro_x_train <- read.table("~/Desktop/train/Inertial Signals/body_gyro_x_train.txt", quote="\"")
body_gyro_y_train <- read.table("~/Desktop/train/Inertial Signals/body_gyro_y_train.txt", quote="\"")
body_gyro_z_train <- read.table("~/Desktop/train/Inertial Signals/body_gyro_z_train.txt", quote="\"")
total_acc_x_train <- read.table("~/Desktop/train/Inertial Signals/total_acc_x_train.txt", quote="\"")
total_acc_y_train <- read.table("~/Desktop/train/Inertial Signals/total_acc_y_train.txt", quote="\"")
total_acc_z_train <- read.table("~/Desktop/train/Inertial Signals/total_acc_z_train.txt", quote="\"")

##merge "train" tables with "Inertial Signals" data
inert_sig_train <- cbind(body_acc_x_train, body_acc_y_train, body_acc_z_train, 
                         body_gyro_x_train, body_gyro_y_train, body_gyro_z_train,
                         total_acc_x_train, total_acc_y_train, total_acc_z_train)

##produce vectors for column names of the 128 repetitions of the "Inertial Signals" data
string_vector <- c("body_acc_x_","body_acc_y_", "body_acc_z_","body_gyro_x_",
                   "body_gyro_y_", "body_gyro_z_","total_acc_x_","total_acc_y_",
                   "total_acc_z_")
number_vector <- 1:128
col_128_names <- vector()

for(i in 1:length(string_vector)){
        for(j in 1:128){
                col_128_names <- (c(col_128_names, paste(string_vector[i], number_vector[j], sep = "")))
        }
}

##merge "Inertial Signals" datasets
inert_sig <- rbind(inert_sig_train, inert_sig_test)

##add column names to merged data frame and "Test set"
colnames(inert_sig) <- paste(col_128_names)

##merge "datasets" und  "Inertial Signals" main dataset 
dataset_1 <- cbind(dataset_1_pre, inert_sig)

##save file as .csv to work directory
write.csv(dataset_1, file='dataset_1.csv', row.names=FALSE)


############# code for second dataset #############

##use only variables from the "Inertial Signals"
dataset_2_pre <- dataset_1_pre
dataset_2  <- data.frame(matrix("", nrow = 180))

##calculate mean for every activity, subject and variable and generate data.frame of results
for(k in 4:length(col_names)){
dataset_2  <- cbind(dataset_2, aggregate(dataset_2_pre[,k] ~ Group + Subject + Activity,
                dataset_2_pre, mean)[,4])
}
dataset_2 <- dataset_2[,-1]
##create Group, Subject, Activity columns
first_3_col <- aggregate(dataset_2_pre[,4] ~ Group + Subject + Activity, dataset_2_pre, mean)[,1:3]

##merge Group, Subject, Activity columns means dataset
##dataset_2[,4] <- NULL
dataset_2 <- cbind(first_3_col, dataset_2)

##generate variable names and add to dataset_2
col_names_mean <- col_names[1:3]
col_names_mean <- c(col_names_mean, paste(col_names[4:82], "_MEAN", sep = ""))
colnames(dataset_2) <- col_names_mean

##save file as .csv to work directory
write.csv(dataset_2, file='dataset_2.csv', row.names=FALSE)