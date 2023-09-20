#Q1a
chest=c(rep("golden",20),rep("silver",30),rep("bronze",50))
sample(chest, 10) #with replacement
sample(chest,10, replace=F) #without replacement
#Q1b
sample(c('suc', 'fail'), 10, rep=T, prob=c(0.9,0.1))

#Q2
m=23
#using formula
prob=1-((choose(365,m))*factorial(m)/365^m)
prob

#Q2a
#inbuilt function
pbirthday(23,365,2) 
qbirthday(prob,365,2)


#Q3
c=0.4
r=0.2
c_r=0.85
r_c=((c_r)*r)/c
print(r_c)
#with function
condprob=function(c,r,c_r)
 { r_c=((c_r)*r)/c
  print(r_c)}

condprob(.4,.2,.85)

#Q4
data=iris
data
head(data,7)
str(data)
range(data$Sepal.Length)
mean(data$Sepal.Length)
median(data$Sepal.Length)
fq=quantile(data$Sepal.Length,.25)
fq
tq=quantile(data$Sepal.Length, .75)
tq
IQR(data$Sepal.Length)
interq=tq-fq
interq
sd(data$Sepal.Length)
var(data$Sepal.Length)
summary(data)
lapply(data[,1:4], sd)

#Q5
v=c(2,1,2,3,1,2,3,4,1,5,5,3,2,3)
getmode=function(v)
{
  uniqv=unique(v)
  uniqv[which.max(tabulate(match(v,uniqv)))]
} 
getmode(v)
