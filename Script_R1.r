##############################################
#Problème 1
##############################################

vec1=rnorm(10)
vec2=rnorm(100)
vec3=rnorm(1000)
pdf("Problème1.pdf")
par(mfrow = c(2,3))
hist(vec1,col="blue",xlab="date",ylab="frequency",main="hist vec1")

hist(vec2,col="white",xlab="date",ylab="frequency",main="hist vec2")

hist(vec3,col="red",xlab="date",ylab="frequency",main="hist vec3")

hist(vec1,col="blue",xlab="date",ylab="frequency",main="hist vec1",breaks=c(seq(floor(min(c(vec1,vec2,vec3))),ceiling(max(c(vec1,vec2,vec3))),0.5)))
hist(vec2,col="white",xlab="date",ylab="frequency",main="hist vec2",breaks=c(seq(floor(min(c(vec1,vec2,vec3))),ceiling(max(c(vec1,vec2,vec3))),0.5)))
hist(vec3,col="red",xlab="date",ylab="frequency",main="hist vec3",breaks=c(seq(floor(min(c(vec1,vec2,vec3))),ceiling(max(c(vec1,vec2,vec3))),0.5)))

dev.off()

