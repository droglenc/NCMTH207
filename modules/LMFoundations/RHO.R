setwd("C:/aaaWork/Web/GitHub/NCMTH207/modules/LMFoundations")

options(show.signif.stars=FALSE)
library(NCStats)

setwd("C:/aaaWork/Web/GitHub/NCMTH207/modules/LMFoundations")
sdir <- read.csv("SexDirection.csv")
str(sdir)
sdir$sexmf <- factor(sdir$sex,levels=c("male","female"))
levels(sdir$sexmf)
levels(sdir$sex)

hist(abserr~sexmf,data=sdir,xlab="Absolute Error",w=25)
Summarize(abserr~sexmf,data=sdir,digits=2)

levenesTest(abserr~sexmf,data=sdir)

tmp <- levenesTest(abserr~sexmf,data=sdir)
attr(tmp,"heading") <- NULL
tmp

t.test(abserr~sexmf,data=sdir,var.equal=TRUE)

kHtest(t.test(abserr~sexmf,data=sdir,var.equal=TRUE))

t.test(abserr~sex,data=sdir,var.equal=TRUE)

kHtest(t.test(abserr~sex,data=sdir,var.equal=TRUE))

lm1 <- lm(abserr~sexmf,data=sdir)
summary(lm1)
cbind(Ests=coef(lm1),confint(lm1))
fitPlot(lm1,xlab="Sex",ylab="Absolute Error")

anova(lm1)


# Script created at 2019-01-01 14:13:10
