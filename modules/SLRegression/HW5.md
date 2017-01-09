---
layout: page
title: Homework 5
subtitle: Simple Linear Regression
css: "/css/modules.css"
---

----

<div class="alert alert-warning">
  <strong>Note</strong> Your answers to the questions below should follow the <a href="../../resources/hwformat" target="_blank">expectations for homework found here</a>.
</div>

----

## Respiratory Rate of Children
<img src="../zimgs/respiratory-infection.jpg" alt="Respiratory Infection" class="img-right">
A high respiratory rate is a potential diagnostic indicator of respiratory infection in children.  To judge whether a respiratory rate is truly "high," however, a physician must have a clear picture of the distribution of normal respiratory rates.  To this end, Italian researchers [Rusconi *et al. (1994)](http://www.people.carleton.edu/\~rdobrow/Courses/215Common/RespiratoryRate.pdf){:target="_blank"} measured the respiratory rates of 618 children between the ages of 4 days and 3 years.  The data are in Rusconi.csv ([download](https://raw.githubusercontent.com/droglenc/NCData/master/Rusconi.csv), [meta](https://github.com/droglenc/NCData/blob/master/Rusconi_meta.txt)) with the variables *Age*="age of children **in months**" and *Rate*="respiratory rate in breaths per minute." Use these data to answer the following questions.

1. Perform a thorough analysis of assumptions.
1. If needed, identify a transformation so that the assumptions are met.  Describe your process and show that the assumptions are adequately met on the new scale. [*Note: Attempt to find a simple scale where most of the assumptions are at least closely met.  The ideal analysis for these data is a combination of transformation and polynomial regression -- you do not have to do the polynomial regression.*]
1. Describe whether a significant relationship exists between the two variables.
1. If a significant relationship exists between the two variables, then carefully (and thoroughly) describe that relationship.
1. Demonstrate how your model can be used to predict the respiratory rate for a child given an age of your choosing. [*Note: Make sure to interpret the interval on the scale of interest to the doctors.*]

----
