getwd()
setwd("/Users/liu/Documents/GitHub/PROJECT")
dropout<-read.csv("https://docs.google.com/spreadsheets/d/e/2PACX-1vT0toyGGV26hDjrud5Ml1o-ITURpFKkOX5_zmakPa0CjjRlVKzrEHpI7pRdaQrRUI97qHI_IPbklPk7/pub?output=csv")

dim(dropout)
names(dropout)

table(dropout$Median.household.income.2012)
table(dropout$unemployment.rate)
table(dropout$single.female.with.children)

distribution=table(dropout$single.female.with.children)
chisq.test(distribution)

#I'm interested in the relationship between the dropout rate (My dependent variable) and 

# My independent variables :
#1. Median household income in 2012
#2. Unemployment rate
#3. The rate of single mothers raising children  











