options(show.signif.stars=FALSE)
library(NCStats)
library(multcomp)     # for glht()

setwd("C:/aaaWork/Web/GitHub/NCMTH207/modules/Anova-2Way")
bact <- read.csv("Bacteria.csv")
str(bact)
bact$temp <- factor(bact$temp)
bact$conc <- factor(bact$conc)

ylbl <- "Mean Number of Cells"
conclbl <- "Concentration (%)"
templbl <- "Temperature (C)"

Summarize(cells~temp*conc,data=bact,digits=0)

lm1 <- lm(cells~temp*conc,data=bact)
anova(lm1)

fitPlot(lm1)  # left
fitPlot(lm1,interval=FALSE,change.order=TRUE,xlab=conclbl,ylab=ylbl,legend="topleft")

fitPlot(lm1,which="temp",ylim=c(60,270),xlab=templbl,ylab=ylbl)  # left
fitPlot(lm1,which="conc",ylim=c(60,270),xlab=conclbl,ylab=ylbl)

bact.mc1 <- glht(lm1,mcp(conc="Tukey"))
summary(bact.mc1)

fitPlot(lm1,which="conc",xlab=conclbl,ylab=ylbl)
addSigLetters(lm1,which="conc",lets=c("a","a","a","b","a"),pos=c(4,2,4,2,2))

sp <- read.csv("SoilPhosphorous.csv")
str(sp)

lm1 <- lm(phos~soil*topo,data=sp)

transChooser(lm1)

anova(lm1)

sp$comb <- sp$soil:sp$topo
headtail(sp)

lm1a <- lm(phos~comb,data=sp)
anova(lm1a)

spint.mc <- glht(lm1a, mcp(comb="Tukey"))
summary(spint.mc)

glhtSig(spint.mc)
cld(spint.mc)

fitPlot(lm1,change.order=TRUE,interval=FALSE,main="",ylim=c(20,160),
        ylab="Mean Phosphorous Level",xlab="Topographic Location",legend="topleft")
addSigLetters(lm1,change.order=TRUE,lets=c("a","a","a","ab","a","ab","a","b"),
              pos=c(1,3,1,3,1,1,3,1))


# Script created at 2018-12-31 12:52:21
