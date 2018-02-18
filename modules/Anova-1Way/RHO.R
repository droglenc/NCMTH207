#=============================================================
#=============== IGNORE/DELETE FROM HERE .... ================
# Renders an appropriate HTML file for the webpage
setwd("C:/aaaWork/Web/GitHub/NCMTH207/modules/Anova-1Way")
source("../../rhelpers/rhelpers.R")
modHTML("RHO")

source("../../rhelpers/knitr_setup.R")
#=============== .... TO HERE ================================
#=============================================================

# Load Packages
library(NCStats)
library(multcomp)     # glht()

setwd("C:/aaaWork/Web/GitHub/NCMTH207/modules/Anova-1Way")
rasp <- read.csv("Raspberry.csv")
str(rasp)
rasp$water <- factor(rasp$water)
str(rasp)

lm1 <- lm(weight~water,data=rasp)
anova(lm1)
summary(lm1)
fitPlot(lm1,xlab="Water Treatment (ml)",ylab="Weight (g)",main="")

levenesTest(lm1)
residPlot(lm1)
adTest(lm1$residuals)
outlierTest(lm1)

rasp.mc <- glht(lm1, mcp(water = "Tukey"))
summary(rasp.mc)
confint(rasp.mc)
fitPlot(lm1,xlab="Water Treatment (ml)",ylab="Weight (g)",main="")
addSigLetters(lm1,lets=c("a","a","b","b"),pos=c(2,4,2,4))

ben <- read.csv("BenthicInfaunal.csv")
ben$site <- factor(ben$site)
str(ben)

lm2 <- lm(abundance~site,data=ben)
levenesTest(lm2)
residPlot(lm2)
adTest(lm2$residuals)
outlierTest(lm2)

transChooser(lm2)  # interactive, result not shown
ben$logab <- log(ben$abundance)
lm3 <- lm(logab~site,data=ben)
levenesTest(lm3)
residPlot(lm3)
adTest(lm3$residuals)
outlierTest(lm3)

anova(lm3)
ben.mc <- glht(lm3, mcp(site = "Dunnett"))
summary(ben.mc)
fitPlot(lm3,ylab="Log Abundance",xlab="Site",main="")
addSigLetters(lm3,lets=c("","","***","***","***","","","***",""),pos=c(2,4,2,4,2,2,4,2,4))

confint(ben.mc)
exp(confint(ben.mc)$confint)


# Script created at 2018-02-18 11:02:16
