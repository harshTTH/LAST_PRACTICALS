train_data <- Boston[c(1:337),]
model<- lm(medv~lstat,data=train_data)
test_data <- Boston[c(338:506),]
predicted_value <- predict(model,test_data[-14])

summary(model)
plot(Boston$lstat,Boston$medv)
abline(model,col=4)
  

