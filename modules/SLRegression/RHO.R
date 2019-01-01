setwd("C:/aaaWork/Web/GitHub/NCMTH207/modules/SLRegression")

options(show.signif.stars=FALSE)
library(NCStats)
setwd("C:/aaaWork/Web/GitHub/NCMTH207/modules/SLRegression")

df <- read.csv("galls.csv")
str(df)
xlbl <- "Percentage of Leaf Damage"
ylbl <- "Wasp Gall Density"

( lm1 <- lm(density~damage,data=df) )
fitPlot(lm1,xlab=xlbl,ylab=ylbl)
predict(lm1,data.frame(damage=35))

summary(lm1)
cbind(Ests=coef(lm1),confint(lm1))
fitPlot(lm1,ylab=ylbl,xlab=xlbl,ylim=c(0,2000),xlim=c(0,60),interval="both")

predict(lm1,data.frame(damage=35),interval="confidence")
predict(lm1,data.frame(damage=35),interval="prediction")

predictionPlot(lm1,data.frame(damage=c(13,35)),ylab=ylbl,xlab=xlbl,
               ylim=c(0,2000),xlim=c(0,60),interval="confidence")

anova(lm1)

transChooser(lm1)

petrels <- read.csv("Petrels.csv")
str(petrels)

lm1 <- lm(weight.loss~weight,data=petrels)
fitPlot(lm1,xlab="Weight (g)",ylab="Weight Loss (g/g/d)")

transChooser(lm1)

petrels$log.wt <- log(petrels$weight)
petrels$log.wtloss <- log(petrels$weight.loss)
lm2 <- lm(log.wtloss~log.wt,data=petrels)
fitPlot(lm2,xlab="log Weight (g)",ylab="log Weight Loss (g/g/d)")

anova(lm2)

summary(lm2)
cbind(Ests=coef(lm2),confint(lm2))
( p.log.wtloss <- predict(lm2,data.frame(log.wt=log(5000)),interval="confidence") )
exp(p.log.wtloss)*exp(anova(lm2)[2,3]/2)


# Script created at 2018-12-31 13:38:04
