dat<-read.csv(file = "https://raw.githubusercontent.com/mattdemography/EDU_7043/master/Data/GSS_2016_AA.csv", stringsAsFactors=F)
names(dat)
str(dat)
#fix variables 
dat$DIVORCE<- ifelse(dat$DIVORCE>7 |dat$DIVORCE==0, NA, dat$DIVORCE)
summary(dat$DIVORCE)

dat$RACE<-ifelse(dat$RACE==0, NA, dat$RACE)
summary(dat$RACE)

#binary Data for Percentage:
dat$SEX<-ifelse(dat$SEX==2, 0, dat$SEX)
summary(dat$SEX)

dat$DIVORCE<-ifelse(dat$DIVORCE==2, 0, dat$DIVORCE)
summary(dat$DIVORCE)

#take nas out
mydat<-subset(dat, !is.na(dat$DIVORCE) & !is.na(dat$SEX))
DAT2<-subset(dat, !is.na(dat$DIVORCE) & !is.na(dat$RACE))
#lets look at data
hist(DAT2$RACE) #not normally distributed
hist(DAT2$DIVORCE)
#correlation Test Degree and Sex (DV) divorce (IV):
#for non parametric
cor(DAT2$RACE, DAT2$DIVORCE, method="spearman")

cor.test(DAT2$RACE, DAT2$DIVORCE)

cor(mydat$DIVORCE,mydat$SEX, method="spearman")
cor.test(mydat$DIVORCE, mydat$SEX)




#descriptive stats 

summary(mydat$SEX)
View(mydat$SEX)
sd(mydat$SEX)
var(mydat$SEX)
range(mydat$SEX)
qqnorm(mydat$SEX); qqline(mydat$SEX)

summary(DAT2$RACE)
sd(DAT2$RACE)
var(DAT2$RACE)
range(DAT2$RACE)
qqnorm(DAT2$RACE); qqline(DAT2$RACE)

summary(DAT2$DIVORCE)
sd(DAT2$DIVORCE)
var(DAT2$DIVORCE)
range(DAT2$DIVORCE)
qqnorm(DAT2$DIVORCE); qqline(DAT2$DIVORCE)

library("hexbin")
bin<-hexbin(mydat$DIVORCE,mydat$SEX, xbins = 2)
plot(bin, main = "Sex and Divorce", xlab = "Sex", ylab="Divorce")

bin<-hexbin(DAT2$RACE, DAT2$DIVORCE, xbins = 3)
plot(bin, main = "Race and Divorce", xlab = "Race", ylab="Divorce")
