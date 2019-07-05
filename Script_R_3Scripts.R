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

###############################################
#Problème 2
##############################################

data = read.table("Mito_Genes(1).txt", header = T, row.names = 1)
 
datainfo= read.table("MLR_Infos_2errors.txt", header = T, row.names = 1)

#Solution groupe C
#On compare ligne à ligne les noms pouridentifier les noms qui sont différents, cela implique qu'ils soient rangés dans le même ordre
#Cela génère un vecteur de 626 TRUE/FALSE (booléens) qu'on appelle diff1.

diff1 = row.names(datainfo)!= row.names(data)
#Avec datainfo on récupère les noms des gènes qui correspondent aux positions des TRUE
datainfo[diff1,]

#Gaëlle nous a proposé une solution qui marche même si les gènes ne sont pas ordonnés de la même façon

row.names(datainfo) %in% row.names(data)

#Inversion de TRUE/FALSE

!(row.names(datainfo) %in% row.names(data))

diff2=!(row.names(datainfo) %in% row.names(data))

datainfo[diff2,]
#Ca marche car ils sont dans le même ordre
rownames(datainfo)=rownames(data)

####################################################
#Problème 3:
####################################################


pdf("Problème3.pdf")
par(mfrow = c(1,1))

#sélection des gènes de classeI dans MLR_Info
ind = datainfo[,2]=="ClassI"
 
#création d'un vecteur contenant le nom des gènes de classeI
ClassI=rownames(datainfo[ind,])

#Récupération des expressions de gènes de classeI dans dans Mito_Genes : tableau ExpClassI

ExpClassI= data[ClassI,]

#Génération des histogrammes pour les 1er, 10ème, 15ème et 30ème points de mesure

hist(ExpClassI[,1])
hist(ExpClassI[,10])
hist(ExpClassI[,15])
hist(ExpClassI[,30])

#Idem pour les classes II
par(mfrow = c(2,2))
ind2 = datainfo[,2]=="ClassII"
datainfo[ind2,]  
rownames(datainfo[ind2,]) 
ClassII=rownames(datainfo[ind2,])
data[ClassII,]
ExpClassII= data[ClassII,]
hist(ExpClassII[,1])
hist(ExpClassII[,10])
hist(ExpClassII[,15])
hist(ExpClassII[,30])

#Idem pour Classe III
par(mfrow = c(2,2))
ind3 = datainfo[,2]=="ClassIII"
datainfo[ind3,]  
rownames(datainfo[ind3,]) 
ClassIII=rownames(datainfo[ind3,])
data[ClassIII,]
ExpClassIII= data[ClassIII,]
hist(ExpClassIII[,1])
hist(ExpClassIII[,10])
hist(ExpClassIII[,15])
hist(ExpClassIII[,30])


dev.off()
