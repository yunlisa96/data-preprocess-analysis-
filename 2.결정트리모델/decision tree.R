##1
library(rpart)
data.frame(iris)
iris.new <- iris[,-3]

r = rpart(Species~., data=iris.new)
print(r)
par(mfrow = c(1,1),xpd=NA)
plot(r)
text(r,use.n=TRUE)

p=predict(r, iris.new, type='class')
table(p, iris$Species)

##2
r_prior = rpart(Species~., data=iris, parms=list(prior=c(0.1,0.8,0.1)))
plot(r_prior)
text(r_prior, use.n=TRUE)
p=predict(r_prior, iris, type='class')
table(p, iris$Species)