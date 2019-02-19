library(dplyr)
library(editrules)
people <- read.csv("people.csv")

rules <- editfile('rules.txt', 'all')
filtered <- violatedEdits(rules, people)

plot(filtered)


filtered <- people%>%filter(Age>=0)%>%filter(Age<=150)%>%filter(Age>yearsmarried)%>%filter(status%in%c('married','single','widowed'))%>%filter((Age<18&agegroup=='child')|(Age>18&Age<65&agegroup=='adult')|(Age>65&agegroup=='elderly'))