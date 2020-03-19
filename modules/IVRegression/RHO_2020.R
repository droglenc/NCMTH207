options(show.signif.stars=FALSE)
library(NCStats)
setwd("C:/aaaWork/Web/GitHub/NCMTH207/modules/IVRegression")

df <- read.csv("LaysanTeal.csv")
str(df)
xlbl <- "Maximum Count"
ylbl <- "Lincoln-Petersen Abundance"

lm1 <- lm(mr.estimate~max.count*season,data=df)

transChooser(lm1)

cbind(Ests=coef(lm1),confint(lm1))

anova(lm1)

fitPlot(lm1,interval="confidence",xlab=xlbl,ylab=ylbl,legend="topleft",cex.leg=0.7)

( nd <- data.frame(max.count=c(250,250),season=c("breeding","non-breeding")) )
predictionPlot(lm1,nd,interval="confidence",xlab=xlbl,ylab=ylbl,ylim=c(300,900),
               legend="topleft",cex.leg=0.7)






FED <- read.csv("FishEnergyDensity.csv")
str(FED)
FED$ed2 <- FED$ed/1000

lm1 <- lm(ed2~dw*species,data=FED)

transChooser(lm1)

anova(lm1)

compSlopes(lm1)
fitPlot(lm1,xlab="Dry Weight",ylab="Energy Density (J/kg)",legend="topleft",cex.leg=0.8)

FED1 <- filterD(FED,species!="bayanchovy")
lm2 <- lm(ed2~dw*species,data=FED1)
anova(lm2)

compIntercepts(lm2)
compIntercepts(lm2,common.cov=0)
fitPlot(lm2,xlab="Dry Weight",ylab="Energy Density (J/kg)",legend="topleft",cex.leg=0.8)


# Script created at 2020-03-18 11:58:15
