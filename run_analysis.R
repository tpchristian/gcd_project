library(dplyr)

df_feat = read.delim("UCI HAR Dataset\\features.txt", header=FALSE, sep="")
feat = df_feat[,"V2"]

# Read in the training data
df_train_x = read.delim("UCI HAR Dataset\\train\\X_train.txt", header=FALSE, sep="")
names(df_train_x) = feat
df_train_act = read.delim("UCI HAR Dataset\\train\\y_train.txt", header=FALSE)
df_train_act = rename(df_train_act, ActivityId = V1)
df_train_sub = read.delim("UCI HAR Dataset\\train\\subject_train.txt", header=FALSE)
df_train_sub = rename(df_train_sub, SubjectId = V1)

# Combine the training data
df_train = cbind(df_train_sub, df_train_act, df_train_x)

# Read in the test data
df_test_x = read.delim("UCI HAR Dataset\\test\\X_test.txt", header=FALSE, sep="")
names(df_test_x) = feat
df_test_act = read.delim("UCI HAR Dataset\\test\\y_test.txt", header=FALSE)
df_test_act = rename(df_test_act, ActivityId = V1)
df_test_sub = read.delim("UCI HAR Dataset\\test\\subject_test.txt", header=FALSE)
df_test_sub = rename(df_test_sub, SubjectId = V1)

# Combine the training data
df_test = cbind(df_test_sub, df_test_act, df_test_x)

# Combine the test and training data
df_combined = rbind(df_test, df_train)

# Join the text descriptions
df_act = read.delim("UCI HAR Dataset\\activity_labels.txt", header=FALSE, sep="")
df_act = rename(df_act, ActivityId = V1, ActivityName=V2)
df_raw = merge(df_act, df_combined, by.x="ActivityId", by.y="ActivityId")
df_raw = select(df_raw, -ActivityId) # Don't need the ActivityId anymore

# Subset the raw data for only mean and std columns
raw_col_names = names(df_raw)
df_sub_col = grep("mean\\(\\)|std\\(\\)", raw_col_names, perl=TRUE)
df_subset = df_raw[,c(1:3,df_sub_col)]

# Aggregate the mean values by subject and activity
df_means <- df_subset %>% group_by(SubjectId,ActivityName) %>% summarise_each(funs(mean))

# Write the tidy data out to a file
write.table(df_means, "mean_phone_data_by_subject_activity.txt")