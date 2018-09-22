library(readxl)
table02_6 <- read_excel("R/table02_6.xls")
View(table02_6)
str (table02_6)
names(table02_6)

#mean   
mean(table02_6$`Total Citizen Population`)
mean (table02_6$`Reported registered`)
mean (table02_6$`Reported not registered`)
mean (table02_6$`Reported voted`)
mean (table02_6$`Reported did not vote`)
#median
median(table02_6$`Total Citizen Population`)
median (table02_6$`Reported registered`)
median (table02_6$`Reported not registered`)
median (table02_6$`Reported voted`)
median (table02_6$`Reported did not vote`)

#mode function 

temp1<-table(as.vector(table02_6$'Total Citizen Population'))
names(temp1[temp1 == max(temp1)])
View(temp1)
temp2<-table(as.vector(table02_6$`Reported registered`))
names(temp2[temp2 == max(temp2)])
View(temp2)
temp3<-table(as.vector(table02_6$`Reported not registered`))
names(temp3[temp3 == max(temp3)])
View(temp3)
temp4<-table(as.vector(table02_6$`Reported voted`))
names(temp4[temp4 == max(temp4)])
View(temp4)
temp5<-table(as.vector(table02_6$`Reported did not vote`))
names(temp5[temp5 == max(temp5)])
View(temp5)
#SD
sd(table02_6$`Reported voted`)
#variance
var(table02_6$`Reported voted`)
#sd
sd(vote) = sqrt(var(vote))
var (vote)
#range
max(table02_6$`Reported voted`) - min (table02_6$`Reported voted`)
boxplot(table02_6$`Reported voted`)
hist(table02_6$`Reported voted`)

