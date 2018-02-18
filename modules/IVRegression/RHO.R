library(NCStats)
setwd("C:/aaaWork/Web/GitHub/NCMTH207/modules/IVRegression")

ss <- read.csv("SalmonSperm.csv")[-c(1,10,11),]  # only for class demo purposes
str(ss)
xlbl <- "Sperm Tail End Piece Length (um)"
ylbl <- "Fertilization Success"

lm1 <- lm(fert.succ~step.len*mat,data=ss)

transChooser(lm1)

summary(lm1)
confint(lm1)
fitPlot(lm1,interval="confidence",xlab=xlbl,ylab=ylbl,legend="topleft")
( nd <- data.frame(step.len=c(3.4,3.7),mat=c("Adult","Parr")) )
predictionPlot(lm1,nd,interval="confidence",legend="topleft")

lm1 <- lm(fert.succ~step.len*mat,data=ss)
anova(lm1)

tmp <- anova(lm1)
attr(tmp,"heading") <- NULL
tmp

lm2 <- lm(fert.succ~step.len+mat,data=ss)
anova(lm2)

tmp <- anova(lm2)
attr(tmp,"heading") <- NULL
tmp

lm3 <- lm(fert.succ~step.len,data=ss)
anova(lm3)

tmp <- anova(lm3)
attr(tmp,"heading") <- NULL
tmp

FED <- read.csv("FishEnergyDensity.csv")
str(FED)

lm1 <- lm(ed~dw*species,data=FED)

transChooser(lm1)

anova(lm1)

compSlopes(lm1)
fitPlot(lm1,xlab="Dry Weight",ylab="Energy Density",legend="topleft")

FED1 <- filterD(FED,species!="bayanchovy")
lm2 <- lm(ed~dw*species,data=FED1)
anova(lm2)

tmp <- anova(lm2)
attr(tmp,"heading") <- NULL
tmp

compIntercepts(lm2)
compIntercepts(lm2,common.cov=0)
fitPlot(lm2,xlab="Dry Weight",ylab="Energy Density",legend="topleft")


# Script created at 2018-02-18 13:12:08
