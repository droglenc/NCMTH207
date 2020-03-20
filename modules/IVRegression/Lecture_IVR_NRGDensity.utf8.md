---
title: "IVR Lecture"
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
[Hartman and Brandt (1995)](https://www.researchgate.net/profile/Kyle_Hartman/publication/250019672_Estimating_Energy_Density_of_Fish/links/0a85e52e51c7c8df25000000.pdf){:target="_blank"} examined the relationship between energy density (J/g wet weight) and percent dry weight for four species -- Bay Anchovy (*Anchoa mitchilli*), Bluefish (*Pomatomus saltatrix*), Striped Bass (*Morone saxatilis*), and Weakfish (*Cynoscion regalis*). Their primary interest was to determine how energy density was related to percent dry weight and if the relationship differed among species. The recorded energy density values were converted from J/g to kJ/g to better represent significant digits.


```r
options(show.signif.stars=FALSE)
library(NCStats)
FED <- read.csv("https://raw.githubusercontent.com/droglenc/NCData/master/FishEnergyDensity.csv")
FED$ed2 <- FED$ed/1000
str(FED)
```

```
## 'data.frame':	64 obs. of  4 variables:
##  $ species: Factor w/ 4 levels "bayanchovy","bluefish",..: 2 2 2 2 2 2 2 2 2 2 ...
##  $ dw     : int  39 34 34 32 31 30 30 29 26 25 ...
##  $ ed     : int  10000 9000 8500 8100 7500 7100 7700 6100 5900 5500 ...
##  $ ed2    : num  10 9 8.5 8.1 7.5 7.1 7.7 6.1 5.9 5.5 ...
```

```r
levels(FED$species)
```

```
## [1] "bayanchovy"  "bluefish"    "stripedbass" "weakfish"
```

This represents an indicator variable regression because the response variable (energy density) is quantitative and there is a quantitative explanatory variable (dry weight), which is called a covariate, and a categorical explanatory variable (species).

The concept of an indicator variable was described in [this video](https://vimeo.com/398994393){:target="_blank"}.

<br>

## Model Setups
Three indicator variables are required to represent the four species.

* BF=1 if Bluefish, =0 otherwise
* SB=1 if Striped Bass, =0 otherwise
* WF=1 if Weakfish, =0 otherwise

With this Bay Anchovy are the reference group. Constructing indicator variables was described in [this video](https://vimeo.com/399006140){:target="_blank"}.

The ultimate full model is

* &mu;<sub>ED</sub> = &alpha; + &beta;DW + &delta;<sub>1</sub>BF + &delta;<sub>2</sub>SB + &delta;<sub>3</sub>WF + &gamma;<sub>1</sub>BF&times;DW + &gamma;<sub>2</sub>SB&times;DW + &gamma;<sub>3</sub>WF&times;DW,

where ED is energy density and DW is dry weight. The corresponding submodels are

* Bay Anchovy: &mu;<sub>ED</sub> = &alpha; + &beta;DW
* Bluefish: &mu;<sub>ED</sub> = (&alpha;+&delta;<sub>1</sub>) + (&beta;+&gamma;<sub>1</sub>)DW
* Striped Bass: &mu;<sub>ED</sub> = (&alpha;+&delta;<sub>2</sub>) + (&beta;+&gamma;<sub>2</sub>)DW
* Weakfish: &mu;<sub>ED</sub> = (&alpha;+&delta;<sub>3</sub>) + (&beta;+&gamma;<sub>3</sub>)DW

The ultimate full model is fit in R with

```r
lm1 <- lm(ed2~dw*species,data=FED)
```

The model parameters have the following meanings:

* &alpha; is the intercept for Bay Anchovy (reference group).
* &beta; is the slope for Bay Anchovy (reference group).
* &delta;<sub>1</sub> is the difference in intercept of Bluefish and Bay Anchovy
* &delta;<sub>2</sub> is the difference in intercept of Striped Bass and Bay Anchovy
* &delta;<sub>3</sub> is the difference in intercept of Weakfish and Bay Anchovy
* &gamma;<sub>1</sub> is the difference in slopes of Bluefish and Bay Anchovy
* &gamma;<sub>2</sub> is the difference in slopes of Striped Bass and Bay Anchovy
* &gamma;<sub>3</sub> is the difference in slopes of Weakfish and Bay Anchovy

Estimates (and 95% CIs) of the model parameters are obtained with

```r
cbind(Ests=coef(lm1),confint(lm1))
```

```
##                             Ests       2.5 %     97.5 %
## (Intercept)            0.7027509 -0.42063764  1.8261395
## dw                     0.1541905  0.10223406  0.2061469
## speciesbluefish       -4.4402509 -5.96844344 -2.9120584
## speciesstripedbass    -2.3783415 -3.86110640 -0.8955765
## speciesweakfish       -2.3960056 -3.85760797 -0.9344031
## dw:speciesbluefish     0.2083095  0.14562788  0.2709912
## dw:speciesstripedbass  0.1576205  0.09429774  0.2209434
## dw:speciesweakfish     0.1496038  0.08320906  0.2159985
```

Constructing the ultimate full model and submodels, descriptions of the meanings of the parameters, and the R code were described in [this video](https://vimeo.com/398994239){:target="_blank"}.

<br>

## Parallel Lines Test
The hypothese (and, thus, models) for the parallel lines test are as follows:

* H<sub>0</sub>: &mu;<sub>ED</sub> = &alpha; + &beta;DW + &delta;<sub>1</sub>BF + &delta;<sub>2</sub>SB + &delta;<sub>3</sub>WF
* H<sub>A</sub>: &mu;<sub>ED</sub> = &alpha; + &beta;DW + &delta;<sub>1</sub>BF + &delta;<sub>2</sub>SB + &delta;<sub>3</sub>WF + &gamma;<sub>1</sub>BF&times;DW + &gamma;<sub>2</sub>SB&times;DW + &gamma;<sub>3</sub>WF&times;DW

The ANOVA table for conducting the parallel lines test is below

```r
anova(lm1)
```

```
## Analysis of Variance Table
## 
## Response: ed2
##            Df  Sum Sq Mean Sq  F value    Pr(>F)
## dw          1 170.693 170.693 1858.966 < 2.2e-16
## species     3  10.592   3.531   38.452 1.258e-13
## dw:species  3   4.106   1.369   14.904 3.002e-07
## Residuals  56   5.142   0.092
```

The p-value for the interaction term ($p<0.00005$; i.e., last p-value in table above) is clearly less than &alpha; indicating that H<sub>0</sub> should be rejected. This results indicates that the slopes for the regressions between energy density and dry weight differ among species and, thus, the relationship between energy density and dry weight differs among the species.

<div class="alert alert-warning">
<ul>
  <li>To this point was largely review from previous materials</li>
</ul>
</div>

The parallel lines test told us that there is SOME difference in slopes between the species, but not specifically which species are different. The following video explains what we should do to identify the specific differences.

<iframe src="https://player.vimeo.com/video/398994393" width="640" height="483" frameborder="0" allow="autoplay; fullscreen" allowfullscreen></iframe>

XXX

----
