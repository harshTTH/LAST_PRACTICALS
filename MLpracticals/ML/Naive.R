library(e1071)
train_data <- iris[c(1:40,51:90,101:140),]
test_data <- iris[c(41:45,91:98,141:150),c(1:3)]
model <- naiveBayes(train_data[,-4],train_data[,4])

my_prediction <- predict(model,test_data)
model

my_prediction


