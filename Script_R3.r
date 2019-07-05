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
