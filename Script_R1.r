##############################################
#Problème 1#
##############################################

#Création des 3 vecteurs#

vec1=rnorm(10)
vec2=rnorm(100)
vec3=rnorm(1000)

####création d'un fichier pdf####
pdf("Problème1.pdf")

####Permet de définir que l'on veut en sortir des graphes organisés sur 2 colonnes et 3 lignes#
par(mfrow = c(2,3))


hist(vec1,col="blue",xlab="date",ylab="frequency",main="hist vec1")

hist(vec2,col="white",xlab="date",ylab="frequency",main="hist vec2")

hist(vec3,col="red",xlab="date",ylab="frequency",main="hist vec3")




#####Bonus - la commande permet de définir les limites de l'axe des abscisses identiques pour l'ensemble des graphes en se basant sur les valeurs min et max des 3 vecteurs 
hist(vec1,col="blue",xlab="date",ylab="frequency",main="hist vec1",breaks=c(seq(floor(min(c(vec1,vec2,vec3))),ceiling(max(c(vec1,vec2,vec3))),0.5)))
hist(vec2,col="white",xlab="date",ylab="frequency",main="hist vec2",breaks=c(seq(floor(min(c(vec1,vec2,vec3))),ceiling(max(c(vec1,vec2,vec3))),0.5)))
hist(vec3,col="red",xlab="date",ylab="frequency",main="hist vec3",breaks=c(seq(floor(min(c(vec1,vec2,vec3))),ceiling(max(c(vec1,vec2,vec3))),0.5)))

###finaliser le pdf##
dev.off()

