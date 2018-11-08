unemployment<-read.csv("C:/Users/Jessenia/Documents/R/Unemployment-Rates_ages 18-24 labor statistics.csv", stringsAsFactors= F)
View(unemployment)
#see variables
names(unemployment)
#structure
str(unemployment)
#create subset
myvars <-c("Year", "White.Total", "Hispanic.Total", "Asian.Total")
newdata <-unemployment[myvars]

#difference in unemployment rate
summary(newdata$White.Total)
summary(newdata$Hispanic.Total)
summary(newdata$Asian.Total, na.rm=TRUE)
sd(newdata$Asian.Total, na.rm=TRUE)
sd(newdata$White.Total)
sd(newdata$Hispanic.Total)
boxplot(newdata$White.Total)
boxplot(newdata$Hispanic.Total)
boxplot(newdata$Asian.Total)
#t test
t.test(newdata$White.Total, newdata$Hispanic.Total)
#does it meet the assumptions
hist(newdata$White.Total)
hist(newdata$Hispanic.Total)
hist(newdata$Asian.Total)
#bc it is skewed
wilcox.test(newdata$White.Total, newdata$Hispanic.Total)
#anaysis for 3 groups
t.test(newdata$White.Total, newdata$Hispanic.Total)
t.test (newdata$White.Total, newdata$Asian.Total)
wilcox.test(newdata$White.Total,newdata$Asian.Total)
t.test (newdata$Hispanic.Total, newdata$Asian.Total)
wilcox.test (newdata$Hispanic.Total, newdata$Asian.Total)
#boxplot
boxplot(newdata$White.Total, newdata$Hispanic.Total,newdata$White.Total)
boxplot(newdata$White.Total, newdata$Hispanic.Total)        
