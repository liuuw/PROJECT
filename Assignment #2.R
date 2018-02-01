getwd()
#setwd("/Users/liu/Documents/GitHub/PROJECT")
dropout<-read.csv("https://github.com/liuuw/PROJECT/raw/master/DROUPOUT.csv")

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

install.packages("car")
library(car)
scatterplotMatrix(dropout[,c(3:5)], diagonal='histogram',reg.line=NULL , smoother=NULL,legend.plot=F)

head(dropout)
data<- dropout[,3:5]

par(mfrow=c(1,2))
E.dist<- dist (data, method='euclidean')
Clustering <-hclust(E.dist ,method="average")
plot(Clustering, xlab='Clustering for the dropout')
abline(h=6000, col="red")

dim(data)


