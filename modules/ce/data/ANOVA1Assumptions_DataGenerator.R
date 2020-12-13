setwd(here::here())

library(NCStats)
set.seed(157394)

ns1 <- c(20,20,20,20)
mns1 <- c(10,20,30,20)
sds1 <- c(3,3,3,3)
df1 <- mrnorm(ns1,mns1,sds1,digits=1)
df1$measure <- df1$measure^2
lm1 <- lm(measure~group,data=df1)
fitPlot(lm1)
assumptionCheck(lm1)
assumptionCheck(lm1,lambday=0.5)
write.csv(df1,file="modules/ce/data/ANOVA1Assumptions1.csv",quote=FALSE,row.names=FALSE)


ns2 <- c(30,30,30)
lmns2 <- c(2,1.5,3)
lsds2 <- c(1,1,1)
df2 <- mrnorm(ns2,lmns2,lsds2)
df2$measure <- exp(df2$measure)
lm2 <- lm(measure~group,data=df2)
fitPlot(lm2)
assumptionCheck(lm2)
assumptionCheck(lm2,lambday=0)
write.csv(df2,file="modules/ce/data/ANOVA1Assumptions2.csv",quote=FALSE,row.names=FALSE)
