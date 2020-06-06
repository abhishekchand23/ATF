Y<- rep(0,500)
for(i in 1:500)
  {
  X<- rnorm(25,0,1)
  Xstar<- 2+ 3*X
  Y[i]<- mean(Xstar)
}
Y[i]
mean(Y)
hist(Y)
var(Y)


#simulating 1000 random variables for simple linear regression
x<- rnorm(50,50,20)
x
cmat<- matrix(nrow=1000,ncol=2)
for(i in 1:1000)
  {
  u<- rnorm(50,0,1)
  y<- 100+6*x+u
reg<- lm(y~x)
summary(reg)
cmat[i,1]<-reg$coef[[1]]
cmat[i,2]<-reg$coef[[2]]
}

hist(cmat[,1])
var(cmat[,1])
x1<- (reg$resid)^2
cmat[i,3]<- sum(x1)/49

library(MASS)
C<- rnorm(50,2,1)
for(i in 1:1000)
{
v<- mvrnorm(50,0,1) 
uu<- mvrnorm(50,0,1)
B<- C+ v
reg1<- lm(B~C-1)
A<- 0.5*B+u
reg2<- lm(A~B)
}

#Hypothesis testing using Monte Carlo Simulation

xi<- rnorm(50,40,60)
zi<-rnorm(50,25,25)
pi<- rnorm(50,30,20)
cmat2<- 1:5000
for(i in 1:5000){
  epsilon<- rnorm(50,0,4)
  yi= 1+2*xi+0.5*zi+5*pi+epsilon
  regress <-lm(yi~xi+zi)
  v<- vcov(regress)
  v[2,2]
  a<-regress$coef[1]
  b<-regress$coef[2]
  c<- regress$coef[3]

n<- (b*(1-c))-1
d<- sqrt((((1-c)^2)*v[2,2])+ b^2*v[3,3]+2*b*(1-c)*v[3,3])
tstat<- n/d
t1<- abs(tstat)                                              
t1                                              
qt<- abs(qt(c(0.025),47))
qt
if(t1<qt){
  v1=0
}else{
  v1=1
}
v1
cmat2[i]<- v1
}
sum(cmat2)
type1<- sum(cmat2)/5000
type1
