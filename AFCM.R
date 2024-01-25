# Installer et charger FactoMineR
library(FactoMineR)
library(Factoshiny)

TrainP = read.csv("G:/Mon Drive/Colab Notebooks/Projet S3/TrainP.csv", header = TRUE, sep = ",")

head(TrainP)
str(TrainP)
TrainP = TrainP[,-1]

# Convertir toutes les colonnes qualitatives en facteurs
TrainP <- lapply(TrainP, function(x) if(is.character(x)) factor(x) else x)

# Convertir la liste en data.frame
TrainP <- as.data.frame(TrainP)

res.shiny = FAMDshiny(TrainP)
