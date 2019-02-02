setwd("C:/aaaWork/Web/GitHub/NCMTH207/modules/Anova-1Way")

options(show.signif.stars=FALSE)
library(NCStats)
library(multcomp)     # for glht()

setwd("C:/aaaWork/Web/GitHub/NCMTH207/modules/Anova-1Way")
rasp <- read.csv("Raspberry.csv")
str(rasp)
rasp$water <- factor(rasp$water)
str(rasp)

lm1 <- lm(weight~water,data=rasp)
anova(lm1)

cbind(Ests=coef(lm1),confint(lm1))

fitPlot(lm1,xlab="Water Treatment (ml)",ylab="Weight (g)")

transChooser(lm1)

rasp.mc <- glht(lm1, mcp(water = "Tukey"))
summary(rasp.mc)

confint(rasp.mc)

fitPlot(lm1,xlab="Water Treatment (ml)",ylab="Weight (g)")
addSigLetters(lm1,lets=c("a","a","b","b"),pos=c(2,4,2,4))

ben <- read.csv("BenthicInfaunal.csv")
ben$site <- factor(ben$site)
str(ben)

lm2 <- lm(abundance~site,data=ben)

transChooser(lm2)

transChooser(lm2)  # interactively adjust lambdas

ben$logab <- log(ben$abundance)
lm3 <- lm(logab~site,data=ben)

anova(lm3)

ben.mc <- glht(lm3, mcp(site = "Dunnett"))
summary(ben.mc)

fitPlot(lm3,ylab="Log Abundance",xlab="Site")
addSigLetters(lm3,lets=c("","","*","*","*","","","*",""),pos=c(2,4,2,4,2,2,4,2,4))

confint(ben.mc)

exp(confint(ben.mc)$confint)


# Script created at 2019-02-02 09:14:12
