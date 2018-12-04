---
layout: page
title: Homework 2
subtitle: 2-Way ANOVA
css: "/css/modules.css"
---

----

<div class="alert alert-warning">
  <strong>Note</strong> Your answers to the questions below should follow the <a href="../../resources/hwformat" target="_blank">expectations for homework found here</a>. Due date is on the <a href="../../resources/Dates-Current" target="_blank">Dates page.</a>
</div>

----

## ANOVA Table
<img src="../zimgs/cattails.jpg" alt="Cattails" class="img-right">

A study was conducted to determine if the mean density of non-native cattail plants differed between two years, two habitats ("near" and "far" from a road), or the interaction between year and habitat. The researchers collected information at 25 sampling sites within each year and habitat combination. The summarized density of cattails in each year and habitat are shown below.

<pre>
Response  Year  Habitat       n       Mean     Median      StDev
Density   2015    far        25      75.45      75.15      14.76
                  near       25      74.46      74.48      13.25
          2016    far        25      83.98      79.97      13.59
                  near       25      80.70      79.15      14.20
</pre>

Use these result to complete the ANOVA table below. This question can be hand-written, but clearly show your work for all calculations.

Source     | df | SS | MS | F  | p-value
:----------|--------:|--------:|--------:|--------:|--------:
**Among**  |    |    |    |    |
&nbsp;&nbsp; **Habitat**  |    |    |    |    |
&nbsp;&nbsp; **Year**  |    |    |    |    |
&nbsp;&nbsp; **Habitat:Year**  |    |    |    |    |
**Within** |    |    |    | xxx | xxx
**Total**  |    | 20227.3 | xxx | xxx | xxx


**Hints:**

1. No functions, beyond using `distrib()` to calculate p-values, will be useful for these calculations.
1. I suggest constructing a 2x2 table (Year as rows, Habitat as columns) of treatment means and then appending group means and the grand mean. Note that a "pooled" mean is the mean of group means if the sample sizes in the groups being pooled are equal.
1. I suggest computing appropriate df first, followed by SS.
1. Examine the equations for the SS and determine which ones of these you can compute from the table of means. Compute these and get the others using simple addition and subtraction (from principles of how SS partition).

----
