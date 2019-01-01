setwd("C:/aaaWork/Web/GitHub/NCMTH207/modules/LogisticRegression")

options(show.signif.stars=FALSE)
library(NCStats)
setwd("C:/aaaWork/Web/GitHub/NCMTH207/modules/LogisticRegression")

bat <- read.csv("Batmorph.csv")[,c("subsp","canine")]  # for class demo purposes only
str(bat)
bat$canine <- bat$canine*10  # convert cm to mm
xlbl <- "Canine Tooth Height (mm)"
ylbl <- "Subspecies Code"

par(cex=0.8,cex.main=0.8)
hist(canine~subsp,data=bat,w=0.1,xlim=c(2.6,3.8),ymax=20,xlab=xlbl,nrow=2,ncol=1)

par(mar=c(3.5,3.5,0.5,3.5))
plotBinResp(subsp~canine,data=bat,breaks=seq(2.6,3.8,0.1),xlim=c(2.6,3.8),
            xlab=xlbl,ylab=ylbl)

par(mar=c(3.5,3.5,0.5,3.5))
glm1 <- glm(subsp~canine,data=bat,family=binomial)
fitPlot(glm1,breaks=seq(2.6,3.8,0.1),xlab=xlbl,ylab=ylbl)
summary(glm1)
cbind(Ests=coef(glm1),confint(glm1))

x1 <- c(3,4)                # purposely picked two canine values 1 unit apart
( p1 <- predict(glm1,data.frame(canine=x1)) )
p1[[2]]-p1[[1]]
exp(-11.112)                # back-transformed 'slope' from summary() above
( bp1 <- exp(p1) )
bp1[[2]]/bp1[[1]]

( p2 <- predict(glm1,data.frame(canine=c(3,3.4))) )
exp(p2)/(1+exp(p2))
predict(glm1,data.frame(canine=c(3,3.4)),type="response")

( cfs <- coef(glm1) )
p <- 0.5    # canine tooth height where subspecies ratio is 50/50
( x <- (log(p/(1-p))-cfs[[1]])/cfs[[2]] )
predict(glm1,data.frame(canine=x),type="response")    # test the answer
p <- 0.9    # length where 90% are semotus, 10% are cinereus
(log(p/(1-p))-cfs[[1]])/cfs[[2]]

bc1 <- bootCase(glm1)      # bootstrapping, be patient!
head(bc1)
confint(bc1)
predProb <- function(x,alpha,beta) exp(alpha+beta*x)/(1+exp(alpha+beta*x))
predProb(3,coef(glm1)[[1]],coef(glm1)[[2]])
p3 <- predProb(3,bc1[,1],bc1[,2])
head(p3)
quantile(p3,c(0.025,0.975))
predX <- function(p,alpha,beta) (log(p/(1-p))-alpha)/beta
x50 <- predX(0.5,bc1[,1],bc1[,2])
head(x50)
quantile(x50,c(0.025,0.975))

sp <- read.csv("SolarOffer.csv")
str(sp)
xlbl <- "Family Income (1000s)"
ylbl <- "Response to Offer"

par(mar=c(3.5,3.5,0.5,3.5))
plotBinResp(takeoffer~income,data=sp,xlab=xlbl,ylab=ylbl,breaks=seq(25,135,5))
glm2 <- glm(takeoffer~income,data=sp,family=binomial)
summary(glm2)
fitPlot(glm2,xlab=xlbl,ylab=ylbl,breaks=seq(25,135,5),main="")
p <- 0.25
(log(p/(1-p))-coef(glm2)[[1]])/coef(glm2)[[2]]
predict(glm2,data.frame(income=80),type="response")


# Script created at 2019-01-01 10:39:43
