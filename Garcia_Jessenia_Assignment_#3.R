unemployment<-read.csv("C:/Users/Jessenia/Documents/R/Unemployment-Rates_ages 18-24 labor statistics.csv", stringsAsFactors= F)
#create a subset 
names(newdata)
str(newdata)
newdata <- unemployment[c(14:16)] 
#central tendancy
summary(newdata, na.rm = T)
#Hispanic Total mode
Htotal <-table(as.vector(newdata$Hispanic.Total))
names(Htotal[Htotal == max(Htotal)])
View (Htotal)
# Hispanic Men mode 
Hmen<-table(as.vector(newdata$Hispanic.Men))
names(Hmen [Hmen == max(Hmen)])
View(Hmen)
# Hispanic Women mode 
Hwomen<-table(as.vector(newdata$Hispanic.Women))
names(Hwomen [Hwomen == max(Hwomen)])
View(Hwomen)
#variance
var(newdata$Hispanic.Total)
var(newdata$Hispanic.Men)
var(newdata$Hispanic.Women)
#are they normally distributed? 
hist(newdata$Hispanic.Total)
hist(newdata$Hispanic.Men)
hist(newdata$Hispanic.Women)
#qq plot 
qqnorm (newdata$Hispanic.Total); qqline(newdata$Hispanic.Total)
qqnorm (newdata$Hispanic.Men); qqline (newdata$Hispanic.Men)
qqnorm (newdata$Hispanic.Women); qqline (newdata$Hispanic.Women)
