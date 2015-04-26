run_analysis <- function() {

#block 1
y_train<-read.table("y_train.txt")
y_test<-read.table("y_test.txt")
x_train<-read.table("X_train.txt")
x_test<-read.table("X_test.txt")
subject_test<-read.table("subject_test.txt")
subject_train<-read.table("subject_train.txt")
features<-read.table("features.txt")
labels<-read.table("activity_labels.txt")


#block 2
test_data<-cbind(subject_test, y_test,x_test)
train_data<-cbind(subject_train,y_train,x_train)
table<-rbind(train_data, test_data)

names<-features[,2]

#block 3
rm("y_train","y_test","x_train","x_test","subject_test","subject_train","features")
rm("test_data","train_data")

#block 4
additional_names<-c("subject","activity")
add_names<-as.factor(additional_names)
names<-factor(append(as.character(names), as.character(add_names), after=0))
names(table)<-names

#block 5
set1<-grep("mean",names,ignore.case=TRUE)
set2<-grep("std",names,ignore.case=TRUE)
data1<-table[,set1]
data2<-table[,set2]
data3<-cbind(data1,data2)
data4<-table[ , c(1,2)]
table<-cbind(data4, data3)

#block 6
rm("add_names","set1","set2","additional_names","data1","data2","data3","data4")

#block 7
labels<-labels[,2]
table[ ,2]<-as.character(table[ ,2])
table[ ,2]<-gsub("1",labels[[1]],table[,2])
table[ ,2]<-gsub("2",labels[[2]],table[,2])
table[ ,2]<-gsub("3",labels[[3]],table[,2])
table[ ,2]<-gsub("4",labels[[4]],table[,2])
table[ ,2]<-gsub("5",labels[[5]],table[,2])
table[ ,2]<-gsub("6",labels[[6]],table[,2])

#block 8
rm("labels","names")

#block 9
library(dplyr)

#block 10
group_by(table,subject,activity)

#block 11
table<-ddply(table, .(subject,activity),colwise(mean))

#block 12
return(table)

}























