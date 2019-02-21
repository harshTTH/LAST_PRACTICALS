library(dplyr)
library(editrules)
dirty_iris <- read.csv("iris.csv")
attach(dirty_iris)
complete_iris <- sum(complete.cases(dirty_iris))
(complete_iris/count(dirty_iris))*100
col_names <- names(dirty_iris)
col_names
dirty_iris
for(col in col_names){
  if(class(dirty_iris[,col]) == 'numeric' || class(dirty_iris[,col]) == 'integer'){
    
      dirty_iris[!is.na(dirty_iris[,col]) &(dirty_iris[,col]>20 | dirty_iris[,col]<0),col] = NA
    
  }
}

rules <- editfile("rules.txt")
dirty_iris
violations <- violatedEdits(rules,dirty_iris)

plot(violations)

outliers=boxplot.stats(Sepal.Length)
boxplot(outliers)