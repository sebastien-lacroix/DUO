
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

