---
layout: page
title: Exercise
subtitle: IVR Models and Sub-Models
css: "/css/modules.css"
---

<div class="alert alert-warning">
  <strong>Note</strong> Your answers to the questions below should follow the <a href="../../resources/hwformat" target="_blank">expectations for homework found here</a>. Due date is on the <a href="../../resources/Dates-Current" target="_blank">Dates page.</a>
</div>

----

# Nurse Wages
<img src="../zimgs/Nurses.jpg" alt="Decoration" class="img-right">
In [this previous exercise](IVRVariables.html#nurse-wages) you prepared the variables required of an IVR. Continue that exercise by answering the questions below. Be careful and specific with your interpretations (i.e., refer to slopes and intercepts and to specific groups in the data (not "reference group" and "first group")).

1. Write the ultimate full model for this situation.
1. Create a table like that in the reading that shows the sub-model for each group.
1. Interpret the meanings of each parameter in your model.
1. What type of value (positive, negative, zero) would you expect for &beta; if wage increased with increasing months of experience for both groups? Explain.
1. What type of value would you expect for &gamma;<sub>1</sub> if mean wage increased at a slower rate with increasing months of experience for male than female nurses? Explain.
1. what type of value would you expect for &delta;<sub>1</sub> if the mean wage for females with no experience was the same as the mean wage for males with no experience? Explain.
1. what type of value would you expect for &delta;<sub>1</sub> if &gamma;<sub>1</sub>=0 and the mean wage for females was less than the mean wage for males with the same amount of experience? Explain.

&nbsp;

## Turtle Nesting Ecology
<img src="../zimgs/hawksbill-turtle.jpg" alt="Decoration" class="img-right">
In [this previous exercise](IVRVariables.html#turtle-nesting-ecology) you prepared the variables required of an IVR. Continue that exercise by answering the questions below. Be careful and specific with your interpretations (i.e., refer to slopes and intercepts and to specific groups in the data (not "reference group" and "first group")).

1. Write the ultimate full model for this situation.
1. Create a table like that in the reading that shows the sub-model for each group.

The data for this situation are in HawksbillTurtles.csv ([download](https://raw.githubusercontent.com/droglenc/NCData/master/HawksbillTurtles.csv), [meta](https://github.com/droglenc/NCData/blob/master/HawksbillTurtles_meta.txt)). Load these data and **reorder the regions so that it will be easier to distinguish regions in the Middle East (Arabian Gulf, Indian Ocean, and Red Sea) from those in the Atlantic (Caribbean and West Atlantic) and allow the Arabian Gulf to be the reference group.** Then fit the ultimate full model and create a table of parameter estimates (and confidence intervals) that can be used to answer the questions below. Be careful and specific with your interpretations (i.e., refer to slopes and intercepts and to specific groups in the data (not "reference group" and "first group")).

1. Interpret the meaning of the "(Intercept)" estimate.
1. Interpret the meaning of the estimate in the row with your covariate variable.
1. Interpret the meaning of the estimate in the row with your **first** interaction variable.
1. Interpret the meaning of the estimate in the row with your **third** indicator variable.

&nbsp;

## Water Quality Near a Gold Mine
<img src="../zimgs/GoldMineWQ.jpg" alt="Decoration" class="img-right">
In [this previous exercise](IVRVariables.html#water-quality-near-a-gold-mine) you prepared the variables required of an IVR. Continue that exercise by answering the questions below. Be careful and specific with your interpretations (i.e., refer to slopes and intercepts and to specific groups in the data (not "reference group" and "first group")).

1. Write the ultimate full model for this situation.
1. Create a table like that in the reading that shows the sub-model for each group.

The data for this situation are in [GoldMine.csv](data/GoldMine.csv). Load these data and **reorder the groups so that total phosphorous is the reference group.** Then fit the ultimate full model and create a table of parameter estimates (and confidence intervals) that can be used to answer the questions below. Be careful and specific with your interpretations (i.e., refer to slopes and intercepts and to specific groups in the data (not "reference group" and "first group")).

1. Interpret the meaning of the estimate in the row with your covariate variable.
1. Interpret the meaning of the "(Intercept)" estimate.
1. Interpret the meaning of the estimate in the row with your **second** interaction variable.
1. Interpret the meaning of the estimate in the row with your **first** indicator variable.
1. Construct a plot that shows the separate regression lines for the groups.
