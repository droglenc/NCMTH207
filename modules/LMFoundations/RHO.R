#=============================================================
#=============== IGNORE/DELETE FROM HERE .... ================
# Renders an appropriate HTML file for the webpage
setwd("C:/aaaWork/Web/GitHub/NCMTH207/modules/LMFoundations")
source("../../rhelpers/rhelpers.R")
modHTML("RHO")

source("../../rhelpers/knitr_setup.R")
#=============== .... TO HERE ================================
#=============================================================

library(NCStats)

setwd("C:/aaaWork/Web/GitHub/NCMTH207/modules/LMFoundations")
sdir <- read.csv("SexDirection.csv")
str(sdir)
sdir$fsex <- factor(sdir$sex,levels=c("male","female"))
levels(sdir$fsex)
levels(sdir$sex)

hist(abserr~fsex,data=sdir,xlab="Absolute Error",breaks=seq(0,200,25),col="gray90")
Summarize(abserr~fsex,data=sdir,digits=2)
levenesTest(abserr~fsex,data=sdir)
t.test(abserr~fsex,data=sdir,var.equal=TRUE)
t.test(abserr~sex,data=sdir,var.equal=TRUE)

lm1 <- lm(abserr~fsex,data=sdir)
summary(lm1)
confint(lm1)
fitPlot(lm1,xlab="Sex",ylab="Absolute Error",main="")
anova(lm1)


# Script created at 2016-12-28 06:34:35
