---
layout: page
title: Exercise
subtitle: Two-Way ANOVA Analytical Foundations
css: "/css/modules.css"
---

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

1. Use these result to complete the ANOVA table below. This question can be hand-written, but clearly show your work for all calculations. Keep one decimal for SS and MS, two decimals for F, and four decimals for p-values.

Source     | df | SS | MS | F  | p-value
:----------|--------:|--------:|--------:|--------:|--------:
**Among**  |    |    |    |    |
&nbsp;&nbsp; **Year**  |    |    |    |    |
&nbsp;&nbsp; **Habitat**  |    |    |    |    |
&nbsp;&nbsp; **Year:Habitat**  |    |    |    |    |
**Within** |    |    |    | xxx | xxx
**Total**  |    | 20227.3 | xxx | xxx | xxx

&nbsp;

{:start="2"}
1. What type of effects are evident (i.e., significant) in these results.

&nbsp;
&nbsp;

<div class="alert alert-info">
<strong>Hints:</strong>
<ol>
  <li>Think about what type of means are shown in the table of results above (grand mean, level means, or treatment means).
  <li>Identify values for <i>a</i>, <i>b</i>, and <i>m</i> and then use the formulae provide in the reading to calculate all degrees-of-freedom.</li>
  <li>Construct a 2x2 table (Year as rows, Habitat as columns) of treatment means and then append the level means and grand mean in the margins. Note that level (and grand) means are simply the mean of treatments means when the sample sizes in the treatments are equal, as they are in this example.</li>
  <li>Use the definitions of <i>a</i>, <i>b</i>, and <i>m</i>, and your table of means to compute SS<sub>among</sub>, SS<sub>row</sub>, and SS<sub>column</sub> according to formulae provided in the reading. Compute the remaining SS with simple addition and subtraction (from principles of how SS partition).</li>
  <li>No functions, beyond using `distrib()` to calculate p-values, will be useful for these calculations.</li>
</ol>
</div>
