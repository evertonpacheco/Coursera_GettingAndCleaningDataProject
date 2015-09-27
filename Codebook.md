---
title: "Codebook"
output: html_document
---

<t1>Codebook</t1> </br> </br> <t2>Variables</t2> </br>
<ul>
  <li>
xtrain: it has the content from file "train/X_train.txt"
</li>
  <li>
ytrain: it has the content from file "train/Y_train.txt"
</li>
  <li>
subject_train: it has the content from file "train/subject_train.txt"
</li>
  <li>
xtest: it has the content from file "test/X_test.txt"
</li>
  <li>
ytest: it has the content from file "test/Y_test.txt"
</li>
  <li>
subject_test: it has the content from the file "train/subject_test.txt"
</li>
  <li>
train: it's the result from join between the variables xtrain, ytrain and subject_train
</li>
  <li>
test: it's the result from join between the variables xtest, ytest and subject_test
</li>
  <li>
feature: it has the content from file "features.txt"
</li>
  <li>
activtylabels: it has the content from file "Data/activity_labels.txt"
</li>  
  <li>
newdataset: it's a data frame made with the join from train rows and test rows.After that it merged with feature variable and activtylabels variable
</li>
  <li>
tidydata: it's a data frame with the average of each variable for each activity and each subject that came from newdataset
</li>
</ul>
<br /> <br /> <t2>The Data</t2> </br> The used data were:
<ul>
  <li>
train/X_train.txt
</li>
  <li>
train/Y_train.txt
</li>
  <li>
train/subject_train.txt
</li>
  <li>
test/X_test.txt
</li>
  <li>
test/Y_test.txt
</li>
  <li>
train/subject_test.txt
</li>  
  <li>
features.txt
</li>
  <li>
activity_labels.txt
</li>
</ul>
<br /> <br /> <t2>The Transformations</t2> </br> The transformations ocorred were:
<ul>
  <li>
The columns/variables join between xtrain, ytrain e subject_train
</li>
  <li>
The columns/variables join between xtest, ytest e subject_test
</li>
  <li>
The join between train and test rows
</li>
  <li>
Extracts the measurements with mean and standard deviation from feature
</li>
  <li>
Merge betwen with activity lables across Y column on newdataset
</li>
  <li>
Numeric conversion in Value column from newdataset dataframe
</li>  
<li>
Group and summarise for tidydata
</li>
</ul>