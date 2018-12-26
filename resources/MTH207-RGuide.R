library(NCStats)
options(show.signif.stars=FALSE)

mdat <- read.csv("https://raw.githubusercontent.com/droglenc/NCData/master/Mirex.csv")
str(mdat)
headtail(mdat,n=2)

coho <- filterD(mdat,species=="coho")
cohoALT <- filterD(mdat,species!="chinook")
just80s <- filterD(mdat,year>=1980,year<1990)
just80sALT <- filterD(mdat,year %in% c(1982,1986))
cohochin <- filterD(mdat,species %in% c("coho","chinook"))


mdat$year <- factor(mdat$year)
levels(mdat$species)
mdat$species <- factor(mdat$species,levels=c("coho","chinook"))
levels(mdat$species)

oneway <- lm(mirex~year,data=mdat)
twoway <- lm(mirex~species*year,data=mdat)
slr <- lm(mirex~weight,data=mdat)
ivr <- lm(mirex~weight*species,data=mdat)
logreg <- glm(species~weight,data=mdat,family="binomial")

transChooser(oneway)
transChooser(ivr)
transChooser(slr)

anova(twoway)
anova(slr)
anova(ivr)

round(cbind(Ests=coef(oneway),confint(oneway)),3)
round(cbind(Ests=coef(ivr),confint(ivr)),3)

library(multcomp)
mc1w <- glht(oneway,mcp(year="Dunnett"))
summary(mc1w)
confint(mc1w)

anova(twoway)
mc2w <- glht(oneway,mcp(year="Tukey"))
summary(mc2w)
confint(mc2w)
glhtSig(mc2w)
cld(mc2w)

compSlopes(ivr)
compIntercepts(ivr)

par(mar=c(3,3,0.5,0.5),mgp=c(1.9,0.5,0),tcl=-0.2)  # copy at 400x400
fitPlot(oneway,xlab="Year",ylab="Mirex Concentration")
addSigLetters(oneway,lets=c("","","","","","*"),pos=c(1,1,1,1,1,4))

fitPlot(twoway,xlab="Year",ylab="Mirex Concentration",change.order=TRUE,legend="topleft")
fitPlot(twoway,xlab="Year",ylab="Mirex Concentration",which="year")
addSigLetters(twoway,which="year",lets=c("b","b","b","b","ab","a"),pos=c(2,2,4,4,2,4))

fitPlot(ivr,xlab="Weight (g)",ylab="Mirex Concentration",
        interval="confidence",legend="topleft")
