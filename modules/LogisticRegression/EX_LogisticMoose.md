---
layout: page
title: Exercise
subtitle: Logistic Regression
css: "/css/modules.css"
---

----

<div class="alert alert-warning">
  <strong>Note</strong> Your answers to the questions below should follow the <a href="../../resources/hwformat" target="_blank">expectations for homework found here</a>. Due date is on the <a href="../../resources/Dates-Current" target="_blank">Dates page.</a>
</div>

----

## Moose Calf Production
<img src="../zimgs/MooseCalf.jpg" alt="Moose and Calf" class="img-right">
[Lowe and Aderman (2014)](https://www.fwspubs.org/doi/full/10.3996/032013-JFWM-028) examined the population dynamics of Moose (*Alces alces*) in the [Togiak National Wildlife Refuge](https://www.fws.gov/refuge/togiak/). In one portion of this study they examined the impacts of capture and fitting with a radio-telemtry collar on the ability of female Moose to produce at least one calf. To examine this they radio collared a number of Moose and recorded whether they produced calves or not. They did the same for a number of Moose that were not radio collared. Their results are recorded in [this Excel file](https://fwspubs.org/doi/suppl/10.3996/032013-JFWM-028/suppl_file/10.3996_032013-jfwm-028.s1.xls) (note that you will need to save this as a CSV). Use all of these data to see if whether a female Moose produces at least one calf or not (regardless of whether the Moose was collared or not).

1. Comment on the adequacy of fit of this logistic regression model (i.e., from a `fitPlot()`). [*Note: Make sure that you use enough breaks to adequately characterize the change in proportions.*]
1. Interpret the meaning of the slope (&beta;<sub>1</sub>) from the fitted logistic regression model.
1. Interpret the meaning of the "back-transformed" slope from the fitted logistic regression model.
1. Show ("by hand") how to predict the log odds of having at least one calf if the female moose is 10-years-old. [*Note: You can show this work in a hand-written appendix*]
1. Confirm your hand-calculations to the previous question with R output.
1. Show ("by hand") how to predict the odds that a 10-year-old female Moose will have at least one calf.
1. Show ("by hand") how to predict the probability that a 10-year-old female Moose will have at least one calf.
1. Confirm your hand-calculations to the previous question with R output.
1. Use R to predict the probability that a 11-year-old female Moose will have at least one calf. Then show ("by hand") how to compute the odds that an 11-year-old female Moose will have at least one calf.
1. Use the results from the previous questions for 10- and 11-year-old Mooses to show the meaning of the "back-transformed" slope.

----
