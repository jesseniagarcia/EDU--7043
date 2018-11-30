dat<-read.csv(file = "https://raw.githubusercontent.com/mattdemography/EDU_7043/master/Data/GSS_2016_AA.csv", stringsAsFactors=F)
names(dat)
str(dat)
#Fix degree
dat$DEGREE<-ifelse(dat$DEGREE==7| dat$DEGREE==8| dat$DEGREE==9, NA, dat$DEGREE)


#Look at sex and education
#Create Contingency Table 1 = MALE 2 = FEMALE
table(dat$SEX, dat$DEGREE)
ftable(dat$SEX, dat$DEGREE)
#Cross Tabulation
library(gmodels) 
CrossTable(dat$SEX, dat$DEGREE, prop.chisq =F)
CrossTable(dat$SEX, dat$DEGREE, expected=T)

#Create Contingency Table for sex and work status
#fix work status 
dat$WRKSTAT<-ifelse(dat$WRKSTAT==0| dat$WRKSTAT==8 |dat$WRKSTAT==9, NA, dat$WRKSTAT)
summary(dat$WRKSTAT)


table(dat$SEX, dat$WRKSTAT)
ftable(dat$SEX, dat$WRKSTAT)
#Cross Tabulation
library(gmodels) 
CrossTable(dat$SEX, dat$WRKSTAT, prop.chisq =F)
CrossTable(dat$SEX, dat$WRKSTAT, expected=T)
#descriptive statistics
summary(dat$DEGREE, dat$SEX=="1")
modemale<-table(as.vector(dat$DEGREE [dat$SEX == "1"]))
names(modemale [modemale == max(modemale)])
View(modemale)

summary(dat$DEGREE, dat$SEX=="2")
modefem<-table(as.vector(dat$DEGREE [dat$SEX == "2"]))
names(modefem [modefem == max(modefem)])
View(modefem)

summary(dat$WRKSTAT, dat$SEX=="1")
modewrk<-table(as.vector(dat$WRKSTAT [dat$SEX == "1"]))
names(modewrk [modewrk == max(modewrk)])
View(modewrk)

summary(dat$WRKSTAT, dat$SEX=="2")
modewrk2<-table(as.vector(dat$WRKSTAT [dat$SEX == "2"]))
names(modewrk2 [modewrk2 == max(modewrk2)])
View(modewrk2)

hist(dat$WRKSTAT)
hist(dat$DEGREE)
