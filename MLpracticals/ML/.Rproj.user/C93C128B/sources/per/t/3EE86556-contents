train_data <- cars[c(1:40),]
model<- lm(speed~dist,data=train_data)
test_data <- cars[c(41:50),]
predicted_value <- predict(model,test_data[-2])

predicted_value
summary(model)

plot(cars$speed,cars$dist)
abline(model,col=4)


