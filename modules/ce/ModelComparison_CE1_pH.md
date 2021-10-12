---
layout: page
title: Exercise
subtitle: Model Comparison
css: "/css/modules.css"
---

<div class="alert alert-warning">
  <strong>Note</strong> Your answers to the questions below should follow the <a href="../resources/hwformat" target="_blank">expectations for homework found here</a>. Due date is on the <a href="../../resources/Dates-Current" target="_blank">Dates page.</a>
</div>

----

## pH in Two Rivers
Burke Center researchers recorded the pH at ten locations in two streams that were close in proximity but in different watersheds with markedly different geologies. They wanted to determine if the mean pH differed between the two streams. Their data are shown in the table below.

<pre>
Stream A: 8.97 9.12 9.41 8.67 9.94 8.28 7.86 7.51 9.18 7.68
Stream B: 6.67 5.83 6.84 6.86 5.89 7.42 6.56 5.99 5.33 6.69
</pre>

Load these data into R and answer the following questions. Make sure to show and refer to R code and results as needed. [*Note that these data were used in [a previous exercise](2TReview_CE1_pH). Some questions below may refer to your work on that previous exercise.*]

1. Write the simple and full models for this situation. Make sure to define all symbols (and subscripts).
1. What are values for I and n for these data.

For the following questions you should present and refer to an ANOVA table computed from these data. Each answer should have a value directly from or computed from the ANOVA table and a proper label (i.e., using df<sub>Among</sub>, SS<sub>Total</sub>, MS<sub>Within</sub>, etc.),

{:start="3"}
1. What are the residual df for the simple model?
1. What are the residual df for the full model?
1. What is the difference in number of parameters between the simple and full model?
1. What is the variance of individuals around the simple model?
1. What is the variance of individuals around the full model?
1. What is the variance among sample means?
1. What value represents the amount of "signal" in the data?
1. What value represents the amount of remaining "noise" in the data?
1. What value is the same as the "pooled sample variance" from the 2-sample t-test?
1. What value is the same as the "sample variance" from your introductory statistics course?
1. What value is the variance not explained by the full model?
1. What value is the variance explained by the full model?

The following questions still refer to values from the ANOVA table.

{:start="15"}
1. Explain what the F-ratio means. Your explanation is not simply how it is calculated (i.e., it is not simply a formula), rather it should include two separate explanations focused on variabilities (explained and unexplained) and relative model fits.
1. How does the F-ratio test statistic from the ANOVA table compare to the t test statistic from the 2-sample t-test? This is not a simple "equals", "less than", or "greater than" answer; there is a specific relationship (as described in the reading).
1. What three related conclusions can you make from the p-value? These should be related to models, hypotheses, and number of means.
1. How does the p-value from the ANOVA table compare to the p-value from the 2-sample t-test? [*You may need to refer to your results from [this module's exercises](2TReview_CE1_pH.html)*.]
1. Write an overall conclusion from this study.
