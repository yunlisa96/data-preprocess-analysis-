##1
library(cluster)
st <- data.frame(state.x77)
std <- function(X){
  return((X-min(X))/(max(X)-min(X)))
}
st <- apply(state.x77,2,std)
fit<-kmeans(x=st, centers = 5)
clusplot(st, fit$cluster, color=TRUE, shade=TRUE,
         label=2, lines=0)


##2
library(mlbench)
data("Sonar")
library(cluster)

mydata <- Sonar[,1:60]
fit <- kmeans(x=mydata, centers = 2)
clusplot(mydata, fit$cluster, color=TRUE, shade=TRUE,
         label=2, lines=0)
