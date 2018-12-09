library(NCStats)
setwd("C:/aaaWork/Web/GitHub/NCMTH207/modules/IVRegression")

df <- read.csv("LaysanTeal.csv")
str(df)
xlbl <- "Maximum Count"
ylbl <- "Lincoln-Petersen Abundance"

lm1 <- lm(mr.estimate~max.count*season,data=df)

transChooser(lm1)

lm1 <- lm(mr.estimate~max.count*season,data=df)
anova(lm1)

tmp <- anova(lm1)
attr(tmp,"heading") <- NULL
tmp

lm2 <- lm(mr.estimate~max.count+season,data=df)
anova(lm2)

tmp <- anova(lm2)
attr(tmp,"heading") <- NULL
tmp

lm3 <- lm(mr.estimate~max.count,data=df)
anova(lm3)

tmp <- anova(lm3)
attr(tmp,"heading") <- NULL
tmp

fitPlot(lm1,interval="confidence",xlab=xlbl,ylab=ylbl,legend="topleft",cex.leg=0.7)
summary(lm1)
confint(lm1)
( nd <- data.frame(max.count=c(250,250),season=c("breeding","non-breeding")) )
predictionPlot(lm1,nd,interval="confidence",xlab=xlbl,ylab=ylbl,ylim=c(300,900),
               legend="topleft",cex.leg=0.7)

FED <- read.csv("FishEnergyDensity.csv")
str(FED)

lm1 <- lm(ed~dw*species,data=FED)

transChooser(lm1)

anova(lm1)

tmp <- anova(lm1)
attr(tmp,"heading") <- NULL
tmp

compSlopes(lm1)
fitPlot(lm1,xlab="Dry Weight",ylab="Energy Density",legend="topleft",cex.leg=0.8)

FED1 <- filterD(FED,species!="bayanchovy")
lm2 <- lm(ed~dw*species,data=FED1)
anova(lm2)

tmp <- anova(lm2)
attr(tmp,"heading") <- NULL
tmp

compIntercepts(lm2)
compIntercepts(lm2,common.cov=0)
fitPlot(lm2,xlab="Dry Weight",ylab="Energy Density",legend="topleft",cex.leg=0.8)


# Script created at 2018-12-08 19:42:45
