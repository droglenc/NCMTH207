---
title: "Logistic Regression Lecture"
author: Derek H. Ogle
layout: page
css: "/css/modules.css"
output:
  html_document:
    fig_height: 3.5
    fig_width: 3.5
    self_contained: false
---




----

## Background
<img src="../zimgs/solarpanel.jpg" alt="Solar Panel" class="img-right">
Households were asked if they would accept an offer to put solar panels on the roof of their house if they would receive a 50% subsidy from the state. Demographic variables for each household such as income, size, monthly mortgage payment, and age of the head of household were also recorded. The analysis below will examine the willingness of the respondents to accept the offer relative to their annual income (which was recorded in \$1000s; i.e., 80 means \$80000). The data were recorded in [SolarOffer.csv](https://raw.githubusercontent.com/droglenc/NCData/master/SolarOffer.csv) and are loaded below.

```r
> spo <- read.csv("https://raw.githubusercontent.com/droglenc/NCData/master/SolarOffer.csv")
> str(spo)
```

```
'data.frame':	30 obs. of  5 variables:
 $ income   : int  80 60 35 45 29 43 34 104 102 59 ...
 $ age      : int  30 34 25 27 23 28 24 43 46 36 ...
 $ takeoffer: Factor w/ 2 levels "decline","take": 2 2 1 1 1 1 1 2 2 1 ...
 $ mortgage : int  2000 2100 1500 1800 1900 1600 1500 2400 2700 2600 ...
 $ famsize  : int  4 3 2 4 2 3 1 5 3 2 ...
```

```r
> xlbl <- "Family Income (1000s)"
> ylbl <- "Response to Offer"
```

The logistic regression model is fit and visualized below. The model was used to answer specific questions further below.

```r
> glm2 <- glm(takeoffer~income,data=spo,family=binomial)
> fitPlot(glm2,xlab=xlbl,ylab=ylbl,breaks=seq(25,135,5))
```

<img src="Lecture_LogReg_SolarPanel_files/figure-html/unnamed-chunk-4-1.png" width="480" />

Figure  1: Fitted line plot for the logistic regression of willingness to accept the solar panel offer on family income.



<ul>
  <li>Comment on the fit of the logistic regression model.</li>
  <ul>
    <li>The logistic regression fits fairly well as there is a fairly distinct break in whether respondents will accept the offer near a family income of approximately $60000 (Figure  1). However, the model does seem to over predict their willingness to accept the offer just below this break and under predict just above it.</li>
  </ul>

  <li>Describe the relationship between the <strong>probability</strong> of accepting the offer and family income.</li>
  <ul>
    <li>The probability of accepting the offer is near 0 to about a family income of $45000, where it rises sharply until about $80000, after which the probability of accepting the offer is nearly 1.</li>
  </ul>
  
  <li>Is there a significant relationship between willingness to accept the offer and family income?</li>
  <ul>
    <li>There is a significant relationship between the log(odds) of accepting the offer and family income (p=0.0414)</li>
  </ul>


```r
> summary(glm2)$coefficients
```

```
               Estimate Std. Error   z value   Pr(>|z|)
(Intercept) -12.8450260 6.16398385 -2.083884 0.03717074
income        0.1993402 0.09774425  2.039406 0.04140952
```
  
  <li>Interpret the slope of this regression model.</li>
  <ul>
    <li>I am 95% confident that as family income increases by $1000 that the log(odds) of accepting the offer increase by 0.199, with a 95% confidence interval from 0.077 to 0.479.</li>
  </ul>


```r
> (cfs <- cbind(Ests=coef(glm2),confint(glm2)) )
```

```
                   Ests        2.5 %    97.5 %
(Intercept) -12.8450260 -30.54585338 -5.057650
income        0.1993402   0.07744564  0.479132
```

  <li>Interpret the back-transformed slope of this regression model.</li>
  <ul>
    <li>I am 95% confident that as family income increases by $1000 that the odds of accepting the offer are 1.221, with a 95% confidence interval from 1.081 to 1.615, TIMES greater.</li>
  </ul>
  

```r
> exp(cfs)
```

```
                    Ests        2.5 %      97.5 %
(Intercept) 2.639223e-06 5.421312e-14 0.006360486
income      1.220597e+00 1.080523e+00 1.614672303
```



  
  <li>What is the probability that a resident will accept the offer if their family income is $80000?</li>
  <ul>
    <li>The probability that a resident with a family income of $80000 will accept the offer is 0.957, with a 95% confidence interval from 0.814 to 1.000.</li>
  </ul>


```r
> predict(glm2,data.frame(income=80),type="response")
```

```
        1 
0.9569831 
```

```r
> predProb <- function(x,alpha,beta) exp(alpha+beta*x)/(1+exp(alpha+beta*x))
> p80 <- predProb(80,cfs[[1]],cfs[[2]])
> bc2 <- bootCase(glm2)      # bootstrapping, be patient!
> p80bc <- predProb(80,bc2[,1],bc2[,2])
> quantile(p80bc,c(0.025,0.975),na.rm=TRUE)
```

```
    2.5%    97.5% 
0.813897 1.000000 
```

  <li>Predict the odds that a family with an income of $80000 will accept the offer? [You do not need a confidence interval for this] Interpret the results.</li>
  <ul>
    <li>The odds that a family with an income of $80000 will accept the offer is 22.2. Thus, residents with a family income of $80000 are 22.2 times more likely to accept the offer than to not accept the offer.</li>
  </ul>


```r
> p80/(1-p80)
```

```
[1] 22.24665
```



  <li>At what family income will 25% of the residents accept the offer?</li>
  <ul>
    <li>The offer will be accepted by 25% of the residents when their family income is $58926, with a 95% confidence interval from $53694 to $68477.</li>
  </ul>
  

```r
> predX <- function(p,alpha,beta) (log(p/(1-p))-alpha)/beta
> x25 <- predX(0.25,bc2[,1],bc2[,2])
> quantile(x25,c(0.025,0.975))
```

```
    2.5%    97.5% 
53.69441 68.47666 
```

</ul>
