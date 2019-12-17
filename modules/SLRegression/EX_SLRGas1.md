---
layout: page
title: Exercise
subtitle: Simple Linear Regression
css: "/css/modules.css"
---

----

<div class="alert alert-warning">
  <strong>Note</strong> Your answers to the questions below should follow the <a href="../../resources/hwformat" target="_blank">expectations for homework found here</a>. Due date is on the <a href="../../resources/Dates-Current" target="_blank">Dates page.</a>
</div>

----

## Car Horsepower and Gas Mileage I
<img src="../zimgs/cars93.jpg" alt="1993 Car" class="img-right">
Students in the Introduction to Environmental Studies course were interested in what characteristics of cars affected the gas mileage (miles per gallon) of a car. Using an internet search they recorded several variables on a sample of makes of cars (note that these data are industry-reported summaries for the make of a car, not measurements on an individual car). Two of the variables that they recorded were *mpg* (miles per gallon of gasoline for the car) and *hp* (horsepower of the car engine). These data, along with many other variables are in CarMPG.csv ([download](https://raw.githubusercontent.com/droglenc/NCData/master/CarMPG.csv), [meta](https://github.com/droglenc/NCData/blob/master/CarMPG_meta.txt)).  Use these data to compute a model that can be used to predict the mpg of a car from its horsepower.

1. Fully interpret the meaning of each coefficient from fitting the model. [*Hint: Show results from* `summary()`.]
1. Fully interpret the meaning of each coefficient's p-value.
1. Fully interpret the meaning of the coefficient of determination.
1. Fully interpret the meaning of each coefficient's confidence interval. [*Hint: Show results from* `confint()`.]
1. Show how each degrees-of-freedom in the ANOVA table was calculated. Include the degrees-of-freedom that R does not report. [*Note: Make sure to show the ANOVA table produced by* `anova()`.]
1. Interpret the meaning of each mean-square in the ANOVA table, include the mean-square that is usually not presented in the ANOVA table.
1. Interpret the F test statistic in the ANOVA table.
1. Is there evidence, at the 5% level, for a relationship between mpg and the horsepower of a car? Explain.
1. Provide a plot that illustrates your results.

----
