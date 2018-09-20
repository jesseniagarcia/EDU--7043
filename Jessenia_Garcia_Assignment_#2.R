mean (table02_6$`Total Citizen Population`)
mean (table02_6$`Reported registered`)
mean (table02_6$`Reported not registered`)
mean (table02_6$`Reported voted`)
mean (table02_6$`Reported did not vote`)
median(table02_6$`Total Citizen Population`)
median (table02_6$`Reported registered`)
median (table02_6$`Reported not registered`)
median (table02_6$`Reported voted`)
median (table02_6$`Reported did not vote`)
#name of variables
names (table02_6)
mode (table02_6$`Total Citizen Population`)
#tried to create mode function 
Mode <- function(table02_6) {
  if (is.numeric(table02_6)) {
    x_table <- table(table02_6)
    return(as.numeric(names(table02_6)[which.max(table02_6)]))
  }
}
#mode total pop
names(table02_6$`Total Citizen Population`) [table02_6$`Total Citizen Population` == max(table02_6$`Total Citizen Population`)
x <-c(a)
sort (a)
#mode 
Mode(table02_6$`Total Citizen Population`)
Mode(table02_6$`Reported registered`)
Mode(table02_6$`Reported voted`)
Mode(table02_6$`Reported did not vote`)
#subet
vote <- subset(table02_6, Reported voted == "18 to 24 years" | Reported voted == "25 to 44 years" | Reported voted == "45 to 64" | Reported voted "65 to 74" | Reported voted "75 years and over"
vote <- table02_6 [(6:6), (1:5)]
 rm (vote)              
 rm (vote)
 #create a subset 
 vote <- table02_6 [(1:5), (6:6)]
 #variance sd 
 var(vote)
sd (vote) 
#sd
sd(vote) = sqrt(var(vote))
var (vote)
#sd
a <- c (1743,4951,4153,1176,659)
sd(a)
sqrt(sum((a-mean(a))^2/(length(a)-1)))
#range
max (vote) - min (vote)
boxplot(table02_6$`Reported voted`)
hist(table02_6$`Reported voted`)
