### R code from vignette source 'Intro2R20120321.rnw'
### Encoding: ISO8859-1

###################################################
### code chunk number 1: simplemath
###################################################
2+2
51-38
(2+4)*6
20/4
2^3
sqrt(4)


###################################################
### code chunk number 2: constant
###################################################
a<-4
a=4
4->a
a


###################################################
### code chunk number 3: constants
###################################################
a=4
a=6
a
b=3
b+2
b*a


###################################################
### code chunk number 4: vector
###################################################
a=c(1,2,3,4,5,6,7,8,9,10)
a
a*2
b=a
b


###################################################
### code chunk number 5: vector1.5
###################################################
a=seq(1:10)
a
b=1:10
b


###################################################
### code chunk number 6: vector2
###################################################
dice=c(2,2,3,4,4,5,5,5,5,5,6,6,7,7,7,7,8,9,10,11)
table(dice) #a simple tabulation of how many of each value are in the vector
fivenum(dice) #the five number summary (min, Q1, median, Q3, max) for the vector
quantile(dice, c(0.1,0.2,0.6,0.8)) #arbitrary quantiles
summary(dice) #a set of basic univariate statistics for the vector


###################################################
### code chunk number 7: vector3
###################################################
dice=c(2,2,3,4,4,5,5,5,5,5,6,6,7,7,7,7,8,9,10,11)
length(dice) #how many observations are there?
min(dice) #minimum
median(dice) #median
max(dice) #maximum
max(dice)-min(dice) #range
sum(dice)
sum(dice)/length(dice)
mean(dice) #mean
v=var(dice) #variance
v
sqrt(v) #standard deviation
sd(dice) #easier way of getting standard deviation


###################################################
### code chunk number 8: algorithm
###################################################
dice=c(2,2,3,4,4,5,5,5,5,5,6,6,7,7,7,7,8,9,10,11)
sum=2+2+3+4+4+5+5+5+5+5+6+6+7+7+7+7+8+9+10+11
sum
length=length(dice)
length
mean=sum/length
mean


###################################################
### code chunk number 9: algorithm2
###################################################
dice=c(2,2,3,4,4,5,5,5,5,5,6,6,7,7,7,7,8,9,10,11)
sum=sum(dice)
length=length(dice)
mean=sum/length
deviations=dice-mean
squares=deviations^2
sumsquares=sum(squares)
variance=sumsquares/(length-1)
variance
sqrt(variance)


###################################################
### code chunk number 10: vector3.5
###################################################
round(mean(dice),2)
round(sqrt(var(dice)),2)


###################################################
### code chunk number 11: vector4
###################################################
dice=c(2,2,3,4,4,5,5,5,5,5,6,6,7,7,7,7,8,9,10,11)
dice[1:3]
dice[7]


###################################################
### code chunk number 12: matrices1
###################################################
dice1=c(7,7,4,5,3,6,8,2,12,10)
dice2=c(8,4,7,7,7,7,6,6,3,4)
mean(dice1)
sd(dice1)
mean(dice2)
sd(dice2)
cor(dice1,dice2)


###################################################
### code chunk number 13: matrices2
###################################################
dice1=c(7,7,4,5,3,6,8,2,12,10)
dice2=c(8,4,7,7,7,7,6,6,3,4)
dice=c(dice1,dice2)
set=c(1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2)
dice.mat=cbind(set,dice)
dice.mat


###################################################
### code chunk number 14: rbind
###################################################
rbind(set,dice)
t(dice.mat)


###################################################
### code chunk number 15: matrices3
###################################################
ncol(dice.mat)
nrow(dice.mat)
dim(dice.mat) #obtain both dimensions
dice.mat[5,]
dice.mat[,2]
dice.mat[5,2]


###################################################
### code chunk number 16: matrices4
###################################################
color=c("red","red","blue","yellow","blue","red","red","blue","yellow","blue","red","red","blue","yellow","blue","red","red","blue","yellow","blue")
dice.mat2=cbind(dice.mat,color)
dice.mat2


###################################################
### code chunk number 17: dataframe
###################################################
dataframe=as.data.frame(dice.mat2)
is.data.frame(dataframe)
is.matrix(dataframe)
is.data.frame(dice.mat2)
is.matrix(dice.mat2)


###################################################
### code chunk number 18: dataframe2
###################################################
names(dataframe)
dataframe$color
dataframe[,3]


###################################################
### code chunk number 19: dataframe3
###################################################
df=as.data.frame(dice.mat)
df$dice
half=df$dice+1
df$half=half
summary(half)
summary(df$half)
half=half+1
summary(half)
summary(df$half)


###################################################
### code chunk number 20: dataframe4
###################################################
half
half=1
half
half=NA
half


###################################################
### code chunk number 21: twowaytable
###################################################
summary(df)
table(df$dice,df$set) #crosstab
with(df,table(dice,set)) #an alternative method for getting crosstabs
prop.table(table(df$dice,df$set)) #convert cell counts to proportions


###################################################
### code chunk number 22: objects
###################################################
ls()


###################################################
### code chunk number 23: setwd
###################################################
setwd("C:\\Users\\Thomas\\Documents\\Dropbox\\Professional Development\\Syllabi\\Introduction2R\\")


###################################################
### code chunk number 24: foreign
###################################################
library(foreign)


###################################################
### code chunk number 25: readdata
###################################################
data=read.csv("patient.csv")
dim(data)
data


###################################################
### code chunk number 26: subset1
###################################################
data$patient
data[,1]
subset(data,select=c(patient))
subset(data,select=-c(patient))
data[1,]
subset(data,patient==001)
subset(data,sex==2)
subset(data,!sex==1)
subset(data,sex==2,select=c(dob))


###################################################
### code chunk number 27: subset2
###################################################
data.females=subset(data,sex==2)


###################################################
### code chunk number 28: subset3
###################################################
with(data, mean(fee))
with(subset(data,sex==1), mean(fee))
with(subset(data,sex==2), mean(fee))


###################################################
### code chunk number 29: na1
###################################################
missing=NA
value1=2
value2=3
value1+value2+missing


###################################################
### code chunk number 30: na2
###################################################
v1=c(1,2,3,4,5,6,7,8,9,10)
length(v1)
sum(v1)
mean(v1)
v2=c(1,2,3,4,NA,6,7,8,9,NA)
length(v2)
sum(v2)
mean(v2)


###################################################
### code chunk number 31: na3
###################################################
is.na(v2)
sum(is.na(v2))


###################################################
### code chunk number 32: na4
###################################################
v3=na.omit(v2)
length(v3)
sum(v3)
mean(v3)


###################################################
### code chunk number 33: random
###################################################
set = c(1,2,3,4,5)
sample(set,5,replace=FALSE)
sample(set,5,replace=TRUE)
sample(set,10,replace=TRUE)


###################################################
### code chunk number 34: plot2a
###################################################
plot(dice1,dice2)


###################################################
### code chunk number 35: plot2b
###################################################
plot(dice1,dice2,
	main="Dice Rolls",
	xlab="Set 1",
	ylab="Set 2",
	xlim=c(2,12),
	ylim=c(2,12),
	pch=21
	)


###################################################
### code chunk number 36: if1
###################################################
x=2
if (x==1) q="FAIL"
if (x==2) q="SUCCESS"
q
if (is.na(x)) q="FAIL"
if (!is.na(x)) q="SUCCESS"
q


###################################################
### code chunk number 37: if2
###################################################
x=2
q=NA
if (!is.na(x) & x>2) q="SUCCESS"
q
if (!is.na(x) | x>2) q="SUCCESS"
q


###################################################
### code chunk number 38: if3
###################################################
a=4
if (a==1) x="Stopped at 1" else
if (a==2) x="Stopped at 2" else
if (a==3) x="Stopped at 3" else
if (a==4) x="Stopped at 4" else
if (a==5) x="Stopped at 5" else
if (a==6) x="Stopped at 6 or larger"
x


###################################################
### code chunk number 39: temp1
###################################################
temp1.f=65
temp1.c=((65-35)*5)/9
temp1.c


###################################################
### code chunk number 40: temp2
###################################################
temps=c(65,68,72,76,69,78,68)
ftoc=function(f) {
	c <- ((f-35)*5)/9
	print(c)
}
ftoc(temps[1])


###################################################
### code chunk number 41: temp3
###################################################
celsius=sapply(temps,FUN=ftoc)
celsius


###################################################
### code chunk number 42: temp4
###################################################
celsius=NA
for (i in 1:length(temps)) {
	celsius[i]=((temps[i]-35)*5)/9
}
celsius


###################################################
### code chunk number 43: temp5
###################################################
for (i in 1:length(temps)) {
	print(((temps[i]-35)*5)/9)
}


