#=============================================================
#=============== IGNORE/DELETE FROM HERE .... ================
# Renders an appropriate HTML file for the webpage
setwd("C:/aaaWork/Web/GitHub/NCMTH207/modules/LogisticRegression")
source("../../rhelpers/rhelpers.R")
modHTML("RHO",need2render=FALSE)

source("../../rhelpers/knitr_setup.R")
#=============== .... TO HERE ================================
#=============================================================

library(NCStats)
library(plotrix)  #histStack()
library(car)      #bootCase()

setwd("C:/aaaWork/Web/GitHub/NCMTH207/modules/LogisticRegression")
bat <- read.csv("Batmorph.csv")
str(bat)
bat$canine10 <- bat$canine*10
xlbl <- "Canine Tooth Height (x10,mm)"
ylbl <- "Subspecies Code"

hist(canine10~subsp,data=bat,breaks=seq(2.6,3.8,0.1),xlim=c(2.6,3.8),
     xlab=xlbl,nrow=2,ncol=1)
histStack(canine10~subsp,data=bat,breaks=seq(2.6,3.8,0.1),xlim=c(2.6,3.8),
          col="gray.colors",xlab=xlbl,right=FALSE)

plotBinResp(subsp~canine10,data=bat,breaks=seq(2.6,3.8,0.1),xlim=c(2.6,3.8),
            xlab=xlbl,ylab=ylbl)

glm1 <- glm(subsp~canine10,data=bat,family=binomial)
fitPlot(glm1,breaks=seq(2.6,3.8,0.1),xlab=xlbl,ylab=ylbl,main="")
summary(glm1)
confint(glm1)

( p1 <- predict(glm1,data.frame(canine10=x1)) )
p1[2]-p1[1]
exp(-11.112)                  # back-transformed 'slope' from summary() above
( bp1 <- exp(p1) )
bp1[2]/bp1[1]

( p2 <- predict(glm1,data.frame(canine10=c(3,3.4))) )
exp(p2)/(1+exp(p2))
predict(glm1,data.frame(canine10=c(3,3.4)),type="response")

( cfs <- coef(glm1) )
p <- 0.5    # canine tooth height where subspecies ratio is 50/50
( x <- (log(p/(1-p))-cfs[1])/cfs[2] )
predict(glm1,data.frame(canine10=x),type="response")    # test the answer
p <- 0.9    # length where 90% are semotus, 10% are cinereus
(log(p/(1-p))-cfs[1])/cfs[2]

bc1 <- bootCase(glm1)      # bootstrapping, be patient!
head(bc1)
confint(bc1)
#hist(bc1,breaks=15)
predProb <- function(x,alpha,beta1) exp(alpha+beta1*x)/(1+exp(alpha+beta1*x))
predProb(3,coef(glm1)[1],coef(glm1)[2])
p3 <- predProb(3,bc1[,1],bc1[,2])
head(p3)
quantile(p3,c(0.025,0.975))
predX <- function(p,alpha,beta1) (log(p/(1-p))-alpha)/beta1
x50 <- predX(0.5,bc1[,1],bc1[,2])
head(x50)
quantile(x50,c(0.025,0.975))

sp <- read.csv("SolarOffer.csv")
str(sp)
xlbl <- "Family Income (1000s)"
ylbl <- "Response to Offer"

plotBinResp(takeoffer~income,data=sp,xlab=xlbl,ylab=ylbl,breaks=seq(25,135,5))
glm2 <- glm(takeoffer~income,data=sp,family=binomial)
summary(glm2)
fitPlot(glm2,xlab=xlbl,ylab=ylbl,breaks=seq(25,135,5),main="")
p <- 0.25
(log(p/(1-p))-coef(glm2)[1])/coef(glm2)[2]
predict(glm2,data.frame(income=80),type="response")


# Script created at 2015-12-21 13:11:20
