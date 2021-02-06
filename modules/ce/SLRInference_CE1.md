---
layout: page
title: Exercise
subtitle: SLR Inference
css: "/css/modules.css"
---

<div class="alert alert-warning">
  <strong>Note</strong> Your answers to the questions below should follow the <a href="../resources/hwformat" target="_blank">expectations for homework found here</a>. Due date is on the <a href="../../resources/Dates-Current" target="_blank">Dates page.</a>
</div>

----

## Male-Female Birth Ratio
<img src="../zimgs/boy-girl-infants.jpg" alt="Decoration" class="img-right">
In [this previous exercise](SLRFoundations_CE1.html#male-female-birth-ratio) you examined the ratio of male to female births in several industrialized countries. Use those same data to answer the questions below.

1. How much natural variability is there around the best-fit line?
1. Is there a significant statistical change in the proportion of male births in the U.S. over the study period? Provide evidence
1. At what average annual rate (i.e., how much per year, with an appropriate interval) did the proportion of male births change? [*Be specific about the direction of change.*]
1. Explain why the p-value for the slope is so small even though the value of the estimated slope is such a small number [i.e., how is it possible that such a small value for the slope can be considered to be different from zero?].

&nbsp;

# Willow Flycatcher Migration
<img src="../zimgs/willow_flycatcher.jpg" alt="Decoration" class="img-right">
In [this previous exercise](SLRFoundations_CE1.html#willow-flycatcher-migration) you examined the relationship between the date of migration and the wing length of Willow Flycatchers (*Empidonax traillii*) migrating up the Middle Rio Grande River. Use these same data to answer the questions below.

1. Is there a significant relationship between wing length and date of migration? Provide appropriate support.
1. Describe the relationship (with appropriate interval) between wing length and date of migration.
1. Predict (with appropriate interval) the wing length for **a** bird that migrated on day 160.
1. Predict (with appropriate interval) the mean wing length for **all** birds that migrated on day 160.
1. Which of the last two predictions is least precise? Explain why.

&nbsp;

## Car Horsepower and Gas Mileage
<img src="../zimgs/cars93.jpg" alt="1993 Car" class="img-right">
Students in the Introduction to Environmental Studies course were interested in what characteristics of cars affected the gas mileage (miles per gallon) of a car. Using an internet search they recorded several variables on a sample of makes of cars (note that these data are industry-reported summaries for the make of a car, not measurements on an individual car). Two of the variables that they recorded were *mpg* (miles per gallon of gasoline for the car) and *hp* (horsepower of the car engine). These data, along with many other variables are in CarMPG.csv ([data](https://raw.githubusercontent.com/droglenc/NCData/master/CarMPG.csv), [meta](https://github.com/droglenc/NCData/blob/master/CarMPG_meta.txt)). Use these data to compute a model that can be used to predict the mpg of a car from its horsepower and then answer the questions below.

1. Is there a significant relationship between mpg and horsepower? Provide appropriate support.
1. Describe the relationship (with appropriate interval) between mpg and horsepower.
1. Predict (with appropriate interval) the mean mpg for all cars with a horsepower of 110.
1. Predict (with appropriate interval) the mpg for a car with a horsepower of 125.
1. Make two predictions (using one line of code in R) that can be used to demonstrate the meaning of the estimated slope. Explain how this works.
1. Provide a plot (with a confidence band) that illustrates the model fit.
