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
Researchers measured (among other things) the canine tooth height (cm) from two subspecies of Hoary bats (*Lasiurus cinereus cinereus* and *Lasiurus cinereus semotus*) found in Hawaii. Their primary question was to determine if canine tooth height differed between the subspecies and, more importantly to them, can canine tooth height be used to predict the subspecies of bat. In this lecture we will focuse on their primary goal -- can canine tooth height be used to predict the subspecies of bat. With this, 

* What are the response and explanatory variables?[^Vars]
* What type of analysis should be used?[^Method]

The data are loaded into R below. For class demonstration purposes only, the data.frame was reduced to only the two variables of interest. In addition, the `canine` variable was converted from cm to mm so that the slope would be more usefully interpreted.[^cm2mm] Neither of these decisions is required for a logistic regression.

```r
> bat <- read.csv("https://raw.githubusercontent.com/droglenc/NCData/master/Batmorph.csv")
> bat <- bat[,c("subsp","canine")]  # for class demo purposes only
> bat$canine <- bat$canine*10      # convert cm to mm
> xlbl <- "Canine Tooth Height (mm)"
> ylbl <- "Subspecies Code"
> str(bat)
```

```
'data.frame':	118 obs. of  2 variables:
 $ subsp : Factor w/ 2 levels "cinereus","semotus": 2 2 2 2 2 2 2 2 2 2 ...
 $ canine: num  3.26 3.08 2.91 2.87 3.01 3.05 2.77 3.13 2.89 2.93 ...
```

<div class="alert alert-info">
<ul>
  <li>Note above that `cinereus` is listed as the first level for `subsp` and, thus, will be coded with a 0 (and `semotus`) will be coded with a 1. Recall that R lists levels alphabetically and codes the first item as 0. This ordering is important in the discussion that follows.</li>
</ul>
</div>

Before beginning this analysis, I like to examine the data to see if it is going to be reasonable to distinguish between the two subspecies based on canine tooth height. The histograms show some overlap but also considerable separation between the two subspecies. Thus, it may be reasonable to separate the two subspecies for many canine tooth heights.[^hist]


```r
> hist(canine~subsp,data=bat,w=0.1,xlim=c(2.6,3.8),ymax=20,xlab=xlbl,nrow=2,ncol=1)
```

<img src="Lecture_LogReg_BatMorph_files/figure-html/unnamed-chunk-4-1.png" width="336" />

<br>

## Preparing to Model

All models that we have fit in class have been linear (at least after transformation) and represented the mean of the response variable (recall that all models had &mu;<sub>Y</sub>) on the right-hand-side. At first this seems like an issue in this case because the response variable is categorical. How do you compute the mean of "words"?

Recall that behind the scenes R has converted the levels into numbers -- *cinereus* as a 0 and *semotus* as a 1. Now supposed that you have five hoary bats and two are *cinereus* and three are *semotus*. Behind the scenes this is the same as have two 0s and three 1s. The mean of these values is thus 3 (the sum of the 0s and 1s) divided by 5 (total number of numbers) or 0.6. This is ALSO precisely the propotion of *semotus* of those five hoary bats.

<div class="alert alert-info">
<ul>
  <li>The mean of a binary categorical variable is exactly the same as the proprtion of individuals in the second level of the variable.</li>
  <li>The second level of a binary categorical variable is generically considered a "success" (and, thus, the first level is a "failure").</li>
</ul>
</div>

One way to visualize logistic regression data is to plot the categorical response (but as numbers) on the y-axis and the quantitative explanatory on the x-axis (see below). Because of the nature of the categorical data there will be many points plotted on top of each other. Thus, points are plotted with transparency such that darker "points" actually represent more points. In the plot below you can see that canine tooth heights are always *semotus* unel about 3 mm where some *cinereus* appear, but then they are all *cinereus* after about 3.4 mm.

<img src="Lecture_LogReg_BatMorph_files/figure-html/unnamed-chunk-5-1.png" width="336" />

This plot can be modified by thinking of narrow vertical "windows" (dashed lines below). The mean of the points within each of these windows is computed and plotted in the center of the window with a "blue plus sign." From above these blue plusses also represent the proportion of *semotus* within each window. In the plot below, the first four "windows" at 100% *semotus*, then the percent that are *semotus* drops until it is 0% in the last three "windows." 

<img src="Lecture_LogReg_BatMorph_files/figure-html/unnamed-chunk-6-1.png" width="336" />

What we would like to do with logistic regression is fit a model that best represents the blue plusses (i.e., the means as with other models, but remembering that these are also proportions). However, the blue plusses are clearly not linear. What do we try to do when the data are non-linear?

<div class="alert alert-info">
<ul>
  <li>A logistic regression model attempts to fit a linear model to the proportion of "successes" and the quantitative explanatory variable.</li>
  <li>The proportion of "successes" is very rarely linear. The easiest way to visualize this is to realize that the propotion of "successes" must be between 0 and 1. Thus, the line must bend at the edges to vertically stay between 0 and 1.</li>
</ul>
</div>

<br>

## Transformations
The transformation required to linearize the proportion of "successes" is a two-step process. These two steps are discusses separately below.

### Odds



### Log Odds or Logits



## Model Fitting







----

## Footnotes
[^Vars]: The researchers are trying to predict subspecies so it is the response variable. Thus, canine tooth height is the explanatory variable.
[^Method]: The subspeces response variable is categorical (and binomial) and the canine tooth height explanatory variable is quantitative. Thus, this question requires a (binary) logistic regression.
[^cm2mm]: The range of canine tooth heights was less than 1cm. Thus, when interpreting the slope a "1cm increase in canine tooth height" was not realistic. Thus, this variable was multiplied by 10 to convert the cm to mm such that a slope would be for a "1mm increase in canine tooth height" and would thus would not be a larger increase then the range of the data.
[^hist]: There are several arguments used in this `hist()` that you may not have seen before. The `w=` controls how wide the bins are, `ymax=` sets a common maximum value for the two y-axes, `ncol=` sets how many columns the plots will be placed in, and `nrow=` sets how many rows the plots will be placed in.
