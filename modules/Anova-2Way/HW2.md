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
<img src="../zimgs/lecture.jpg" alt="Lecture" class="img-right">
An experiment was conducted at a large university to determine whether two different instructional methods for teaching a beginning statistics course would yield different levels of achievement. One instructional method involved using a self-instruction format, including a sequence of taped slide presentations. The other method utilized the standard lecture format. The 100 students who registered for the course were randomly assigned to one of four sections, 25 per section, corresponding to combinations of one of the two methods with one of two instructors (A and B). The summarized results from identical final exams administered in the four sections are below.

<pre>
Variable   Treatment     N       Mean     Median      StDev
Score      LectA        25      75.45      75.15      14.76
           LectB        25      74.46      74.48      13.25
           SelfA        25      83.98      79.97      13.59
           SelfB        25      80.70      79.15      14.20
</pre>

Use these result to complete the ANOVA table below. This question can be hand-written, but clearly show your work for all calculations.

Source     | df | SS | MS | F  | p-value
:----------|--------:|--------:|--------:|--------:|--------:
**Among**  |    |    |    |    |
&nbsp;&nbsp; **Instructor**  |    |    |    |    |
&nbsp;&nbsp; **Method**  |    |    |    |    |
&nbsp;&nbsp; **Instructor:Method**  |    |    |    |    |
**Within** |    |    |    | xxx | xxx
**Total**  |    | 20227.3 | xxx | xxx | xxx


**Hints:**

1. No functions, beyond using `distrib()` to calculate p-values, will be useful for these calculations.
1. I suggest constructing a 2x2 table (Instructor as rows, Method as columns) of treatment means and then appending group means and the grand mean. Note that a "pooled" mean can be computed as the mean of means if the sample sizes in the groups being pooled are equal.
1. I suggest computing appropriate df first, followed by SS.
1. Examine the equations for the SS and determine which ones of these you can compute from the table of means. Compute these and get the others using simple addition and subtraction (from principles of how SS partition).

----
