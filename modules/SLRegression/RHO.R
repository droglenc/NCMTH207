#=============================================================
#=============== IGNORE/DELETE FROM HERE .... ================
# Renders an appropriate HTML file for the webpage
setwd("C:/aaaWork/Web/GitHub/NCMTH207/modules/SLRegression")
source("../../rhelpers/rhelpers.R")
modHTML("RHO")

source("../../rhelpers/knitr_setup.R")
#=============== .... TO HERE ================================
#=============================================================

library(NCStats)

setwd("C:/aaaWork/Web/GitHub/NCMTH207/modules/SLRegression")
ss <- read.csv("SalmonSperm.csv")
ss <- ss[-c(1,10,11),]  # only for class demo purposes
str(ss)
xlbl <- "Sperm Tail End Piece Length (um)"
ylbl <- "Fertilization Success"

( lm1 <- lm(fert.succ~step.len,data=ss) )
fitPlot(lm1,xlab=xlbl,ylab=ylbl,main="")
predict(lm1,data.frame(step.len=3.5))

summary(lm1)
confint(lm1)
fitPlot(lm1,interval="both",xlab=xlbl,ylab=ylbl,main="")

predict(lm1,data.frame(step.len=3.5),interval="confidence")
predict(lm1,data.frame(step.len=3.5),interval="prediction")
predictionPlot(lm1,data.frame(step.len=c(3.3,3.5)),interval="prediction",
               xlab=xlbl,ylab=ylbl,main="")

anova(lm1)

residPlot(lm1,main="")
adTest(lm1$residuals)
outlierTest(lm1)

petrels <- read.csv("Petrels.csv")
str(petrels)

lm1 <- lm(weight.loss~weight,data=petrels)
fitPlot(lm1,xlab="Weight (g)",ylab="Weight Loss (g/g/d)",main="")

residPlot(lm1,main="")

with(petrels,max(weight)/min(weight))
transChooser(lm1) # interactive, results not shown
petrels$log.wt <- log(petrels$weight)
petrels$log.wtloss <- log(petrels$weight.loss)
lm2 <- lm(log.wtloss~log.wt,data=petrels)
fitPlot(lm2,xlab="log Weight (g)",ylab="log Weight Loss (g/g/d)",main="")

residPlot(lm2,main="")
adTest(lm2$residuals)
anova(lm2)
summary(lm2)
confint(lm2)
( p.log.wtloss <- predict(lm2,data.frame(log.wt=log(5000)),interval="confidence") )
exp(p.log.wtloss)*exp(anova(lm2)[2,3]/2)


# Script created at 2015-12-20 19:08:38
