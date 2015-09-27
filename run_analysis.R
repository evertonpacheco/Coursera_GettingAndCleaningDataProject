run_analysis <- function(){
  
  ##Question 1

  library(data.table)
  
  ######train
  
  xtrain <- read.delim(file = "Data/train/X_train.txt", header = F);
  
  ytrain <- read.delim(file = "Data/train/Y_train.txt", header = F);
  
  subject_train <- read.delim(file = "Data/train/subject_train.txt", header = F);
  
  ######
  
  ######test
  
  xtest <- read.delim(file = "Data/test/X_test.txt", header = F);
  
  ytest <- read.delim(file = "Data/test/Y_test.txt", header = F);
  
  subject_test <- read.delim(file = "Data/test/subject_test.txt", header = F);
  
  #####
  
  ####merge test
  test <- cbind(xtest,ytest,subject_test);
  
  names(test)[1] <- "X";
  names(test)[2] <- "Y";
  names(test)[3] <- "Subject";
  
  
  ####merge test
  train <- cbind(xtrain,ytrain,subject_train);
  
  names(train)[1] <- "X";
  names(train)[2] <- "Y";
  names(train)[3] <- "Subject";
  
  ##
  
  ##### merging both dataset to only dataset
  newdataset <- rbind(train, test);
  
  ######
  ### Question 2
  
  feature <- read.delim(file = "Data/features.txt", header = F);
  feature <- feature[grep(pattern = "(mean[()]|std[()])", x = feature$V1),];
  feature <- as.data.frame(feature);
  feature <- strsplit(as.character(feature$feature)," ");
  feature <- do.call(rbind, feature);
  feature <- as.data.frame(x = feature);
  
  names(feature)[1] <- "FeatureCode";
  names(feature)[2] <- "FeatureName";
  
  newdataset <- merge(x = newdataset, y=feature);
  
  ##
  ## question 3
  ##
  activtylabels <- read.delim(file = "Data/activity_labels.txt", header = F);
  activtylabels <- strsplit(as.character(activtylabels$V1)," ");
  activtylabels <- do.call(rbind, activtylabels);
  activtylabels <- as.data.frame(x = activtylabels);
  
  names(activtylabels)[1] <- "Cod";
  names(activtylabels)[2] <- "Activity";
  
  activtylabels$Cod <- as.numeric(activtylabels$Cod);
  
  newdataset <- merge(x = newdataset, y = activtylabels, by.x = "Y", by.y = "Cod", all.x = T, all.y = F);
  
  #question 4 - other variables already are named
  
  names(newdataset)[1] <- "ActivityCode";
  names(newdataset)[2] <- "Value";
  
  ##
  
  #question 5 
  newdataset$Value <- as.numeric(newdataset$Value);
  
  library(dplyr)
  
  tidydata <- group_by(newdataset, Subject, ActivityCode);
  tidydata <- summarise(tidydata, mean=mean(Value));
  
  
  
  ##
}