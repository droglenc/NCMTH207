---
layout: page
title: Exercise
subtitle: SLR Models
css: "/css/modules.css"
---

<div class="alert alert-warning">
  <strong>Note</strong> Your answers to the questions below should follow the <a href="../../resources/hwformat" target="_blank">expectations for homework found here</a>. Due date is on the <a href="../../resources/Dates-Current" target="_blank">Dates page.</a>
</div>

----

## Male-Female Birth Ratio
<img src="../zimgs/boy-girl-infants.jpg" alt="Decoration" class="img-right">
In [this](SLRFoundations_CE1.html#male-female-birth-ratio) and [this](SLRInference_CE1.html#male-female-birth-ratio) previous exercises you examined the ratio of male to female births in several industrialized countries. Use those same data to construct an ANOVA table that can be used to answer the questions below.

1. Demonstrate how the number of individuals in the analysis can be determined from df<sub>Residuals</sub>.
1. What is the variance of the proportion of males among years ignoring any relationship with year?
1. What is the variance of the proportion of males among years after taking into account the relationship between proportion of males and year?
1. Is there a significant relationship between the proportion of males and year? Provide evidence.
1. How does the p-value in this ANOVA table compare to the p-value for the slope in [this previous exercise](SLRInference_CE1.html#male-female-birth-ratio)? Explain why this occurs.

&nbsp;

# Willow Flycatcher Migration
<img src="../zimgs/willow_flycatcher.jpg" alt="Decoration" class="img-right">
In [this](SLRFoundations_CE1.html#willow-flycatcher-migration) and [this](SLRInference_CE1.html#willow-flycatcher-migration) previous exercise you examined the relationship between the date of migration and the wing length of Willow Flycatchers (*Empidonax traillii*) migrating up the Middle Rio Grande River. Use these same data to construct an ANOVA table that can be used to answer the questions below.

1. Demonstrate how the number of individuals in the analysis can be determined from df<sub>Total</sub>.
1. Is there a significant relationship between wing length and day of migration? Provide evidence.
1. How does the F-ratio in this ANOVA table compare to the t test statistic for the slope in [this previous exercise](SLRInference_CE1.html#willow-flycatcher-migration)? Explain why this occurs.
1. What percent of the variability in wing length is explained by knowing the day of migration?
1. What is the variance of wing length among birds after taking into account the relationship between wing length and day of migration?
1. What is the variance of wing length among birds ignoring any relationship with day of migration?

&nbsp;

## Car Drive Ratio and Gas Mileage
<img src="../zimgs/cars93.jpg" alt="1993 Car" class="img-right">
In [a previous exercise](SLRInference_CE1.html#car-horsepower-and-gas-mileage) you examined the relationship between a car's horsepower and its gas mileage. In this exercise, you will examine the relationship between a car's drive-ratio (a measure of the gearing between the transmission and the wheels) and gas mileage **for only IMPORTed cars** (see the *type* variable and [this](../resources/R_HowTo_Filter.html){:target="_blank"}). Use the same data, but with the variables *drat* and *mpg* to develop a model that can be used to predict gas mileage (mpg) from the drive ratio **for only IMPORTed cars**. Use your results to answer the questions below.

1. Is there a significant relationship between gas mileage and drive ratio for imported cars? Provide appropriate support.
1. What percent of the variability in gas mileage was explained by knowing the value of the drive ratio? Demonstrate how this value is calculated from results in the ANOVA table.
1. What is the variance of gas mileage among makes of cars ignoring any relationship with drive ratio?
1. What is the variance of gas mileage among makes of cars after taking into account the relationship between gas mileage and drive ratio?
1. Provide a plot (with appropriate interval) that illustrates your results.
