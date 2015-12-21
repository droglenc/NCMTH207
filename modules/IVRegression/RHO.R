#=============================================================
#=============== IGNORE/DELETE FROM HERE .... ================
# Renders an appropriate HTML file for the webpage
setwd("C:/aaaWork/Web/GitHub/NCMTH207/modules/IVRegression")
source("../../rhelpers/rhelpers.R")
modHTML("RHO")

source("../../rhelpers/knitr_setup.R")
#=============== .... TO HERE ================================
#=============================================================

library(NCStats)

setwd("C:/aaaWork/Web/GitHub/NCMTH207/modules/IVRegression")
ss <- read.csv("SalmonSperm.csv")
ss <- ss[-c(1,10,11),]  # only for class demo purposes
str(ss)
xlbl <- "Sperm Tail End Piece Length (um)"
ylbl <- "Fertilization Success"

lm1 <- lm(fert.succ~step.len*mat,data=ss)
residPlot(lm1,legend=FALSE,main="",pch=16)
adTest(lm1$residuals)
outlierTest(lm1)

summary(lm1)
confint(lm1)
fitPlot(lm1,interval="confidence",xlab=xlbl,ylab=ylbl,legend="topleft",main="")
( nd <- data.frame(step.len=c(3.4,3.7),mat=c("Adult","Parr")) )
predictionPlot(lm1,nd,interval="confidence",legend="topleft",main="")

lm1 <- lm(fert.succ~step.len*mat,data=ss)
anova(lm1)
lm2 <- lm(fert.succ~step.len+mat,data=ss)
anova(lm2)
lm3 <- lm(fert.succ~step.len,data=ss)
anova(lm3)

FED <- read.csv("FishEnergyDensity.csv")
str(FED)

lm1 <- lm(ed~dw*species,data=FED)
residPlot(lm1,main="",legend=FALSE,pch=16)
adTest(lm1$residuals)
outlierTest(lm1)

anova(lm1)
compSlopes(lm1)
fitPlot(lm1,xlab="Dry Weight",ylab="Energy Density",legend="topleft",main="")

FED1 <- Subset(FED,species!="bayanchovy")
lm2 <- lm(ed~dw*species,data=FED1)
anova(lm2)
compIntercepts(lm2)
compIntercepts(lm2,common.cov=0)
compIntercepts(lm2,common.cov=20)
fitPlot(lm2,xlab="Dry Weight",ylab="Energy Density",legend="topleft",main="")


# Script created at 2015-12-20 20:50:19
