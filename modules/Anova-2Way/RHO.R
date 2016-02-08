#=============================================================
#=============== IGNORE/DELETE FROM HERE .... ================
# Renders an appropriate HTML file for the webpage
setwd("C:/aaaWork/Web/GitHub/NCMTH207/modules/Anova-2Way")
source("../../rhelpers/rhelpers.R")
modHTML("RHO")

source("../../rhelpers/knitr_setup.R")
#=============== .... TO HERE ================================
#=============================================================

library(NCStats)
library(multcomp)     # glht()

setwd("C:/aaaWork/Web/GitHub/NCMTH207/modules/Anova-2Way")
bact <- read.csv("Bacteria.csv")
str(bact)
bact$ftemp <- factor(bact$temp)
bact$fconc <- factor(bact$conc)
str(bact)

sumTable(cells~ftemp*fconc,data=bact,FUN=length)
sumTable(cells~ftemp*fconc,data=bact,FUN=mean,digits=0)
sumTable(cells~ftemp*fconc,data=bact,FUN=sd,digits=1)

lm1 <- lm(cells~ftemp*fconc,data=bact)
anova(lm1)
fitPlot(lm1, main="")  # left
fitPlot(lm1,interval=FALSE,change.order=TRUE,xlab="Concentration (%)",
        ylab="Mean Number of Cells",legend="topleft", main="")  # right

fitPlot(lm1,which="ftemp",ylim=c(60,270),xlab="Temperature (C)",
        ylab="Mean Number of Cells", main="")  # left
fitPlot(lm1,which="fconc",ylim=c(60,270),xlab="Concentration (%)",
        ylab="Mean Number of Cells", main="")  # right

bact.mc1 <- glht(lm1,mcp(fconc="Tukey"))
summary(bact.mc1)
fitPlot(lm1,which="fconc",xlab="Concentration (%)",ylab="Mean Number of Cells",main="")
addSigLetters(lm1,which="fconc",lets=c("a","a","a","b","a"),pos=c(2,2,4,2,4))

sp <- read.csv("SoilPhosphorous.csv")
str(sp)

lm1 <- lm(phos~soil*topo,data=sp)
levenesTest(lm1)
residPlot(lm1)
adTest(lm1$residuals)
outlierTest(lm1)
anova(lm1)

sp$comb <- sp$soil:sp$topo
view(sp)
lm1a <- lm(phos~comb,data=sp)
anova(lm1a)
spint.mc <- glht(lm1a, mcp(comb="Tukey"))

summary(spint.mc)
glhtSig(spint.mc)
fitPlot(lm1,change.order=TRUE,interval=FALSE,main="",ylim=c(20,160),
        ylab="Mean Phosphorous Level",xlab="Topographic Location",legend="topleft")
addSigLetters(lm1,change.order=TRUE,lets=c("a","a","a","ab","a","ab","a","b"),
              pos=c(1,3,1,3,1,1,3,1))


# Script created at 2016-02-08 09:24:56
