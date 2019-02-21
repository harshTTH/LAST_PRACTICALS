advert <- read.csv("datasets/Advertisments.csv")
attach(advert)

advert
advert_train <- advert[c(1:150),]
advert_test <- advert[c(151:200),]

advert_radio_model <- lm(sales~radio,dataset=advert_train)
advert_news_model <- lm(sales~newspaper,dataset=advert_train)
advert_tv_model <- lm(sales~TV,dataset=advert_train)
advert_model_combo <- lm(sales~TV+radio+newspaper,dataset=advert_train)
advert_model <- lm(sales~TV+radio+newspaper+(TV*radio),dataset=advert_train)

advert_prediction_radio <- predict(advert_radio_model,advert_test[,-5])
advert_prediction_radio

par(mfrow = c(1,5))
plot(sales, radio, col = 2)
abline(advert_radio_model, col = 1)

plot(sales, newspaper, col = 3)
abline(advert_news_model, col = 2)

plot(sales, TV, col = 4)
abline(advert_tv_model, col = 3)

plot(sales, TV+radio+newspaper, col = 5)
abline(advert_model_combo, col = 4)

plot(sales, TV+radio+newspaper+(TV*radio), col = 6)
abline(advert_mode, col = 5)

advert_residual_radio <- advert[c(151:200),5] - advert_prediction_radio
advert_residual_radio

