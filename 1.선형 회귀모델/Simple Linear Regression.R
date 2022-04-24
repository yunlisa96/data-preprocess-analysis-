##1
st <- data.frame(state.x77)
plot(Murder~Illiteracy, data=st)
model <- lm(Murder~Illiteracy,data =st)
model

abline(model)
coef(model)[1]
coef(model)[2]
b<-coef(model)[1]
W<-coef(model)[2]
Illiteracy <- 0.5
Murder <- W*Illiteracy+b
Murder
Illiteracy <- 1.0
Murder <- W*Illiteracy+b
Murder
Illiteracy <- 1.5
Murder <- W*Illiteracy+b
Murder

##2

tr <- data.frame(trees)
plot(Volume~Girth, data=tr)

model <- lm(Volume~Girth, data =tr)
model

abline(model)
coef(model)[1]
coef(model)[2]
b<-coef(model)[1]
W<-coef(model)[2]
Girth <- 8.5
Volume <- W*Girth+b
Volume
Girth <- 9.0
Volume <- W*Girth+b
Volume
Girth <- 9.5
Volume <- W*Girth+b
Volume

##3
pr <-data.frame(pressure)
plot(pressure~temperature, data=pr)
model <- lm(pressure~temperature, data=pr)
model

abline(model)
coef(model)[1]
coef(model)[2]
b<-coef(model)[1]
W<-coef(model)[2]

temperature <- 65
pressure <- W*temperature+b
pressure
temperature <- 95
pressure <- W*temperature+b
pressure
temperature <- 155
pressure <- W*temperature+b
pressure

##4
tr <- data.frame(trees)
plot(tr, pch=16, col="blue", main="tree")
mod1 <- lm(Volume~Girth+Height,data=tr)
summary(mod1)

##5
library(mlbench) 
data(BostonHousing)
bs<-data.frame(BostonHousing)
newdata <-  bs[,c(-4)]
mod1<-lm(medv~crim+zn+indus+nox+rm+age+dis+rad+ptratio+b+lstat, data=newdata)
summary(mod1)

