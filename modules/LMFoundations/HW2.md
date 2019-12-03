---
layout: page
title: Exercise
subtitle: Linear Models Foundations
css: "/css/modules.css"
---

----

<div class="alert alert-warning">
  <strong>Note</strong> Your answers to the questions below should follow the <a href="../../resources/hwformat" target="_blank">expectations for homework found here</a>. Due date is on the <a href="../../resources/Dates-Current" target="_blank">Dates page.</a>
</div>

----

## pH in Two Rivers
<img src="../zimgs/pHrivers.jpg" alt="Measuring pH" class="img-right">

Burke Center researchers recorded the pH at ten locations in two streams that were close in proximity but in different watersheds with markedly different geologies. They wanted to determine if the mean pH differed between the two streams. Their data are shown in the table below.

<pre>
Stream A: 8.97 9.12 9.41 8.67 9.94 8.28 7.86 7.51 9.18 7.68
Stream B: 6.67 5.83 6.84 6.86 5.89 7.42 6.56 5.99 5.33 6.69
</pre>

Enter these data into R and construct tables of 2-Sample t-Test results (use `t.test()` and assume that the group variances are equal), ANOVA results (use `anova()` with an `lm()` object), and summary of coefficients (use `summary()` with an `lm()` object). [*Note that you should have three appropriately labeled tables that you will refer to when answering the questions below.*]

1. Show and then explain why the p-values for the 2-Sample t-Test, the ANOVA table, and the *slope* (in the summary of coefficients table) are all the same. [*Hint: You will need to discuss the H<sub>0</sub> and H<sub>A</sub> for each p-value and explain how they are equivalent.*]
1. What overall conclusion about group means is made from these p-values?
1. Show and then explain why the mean of the "first" group in the 2-Sample t-Test is equal to one of the coefficients from the linear model (be specific about which coefficient). [*Hint: You will need to discuss how factors are coded in R and how an intercept is defined.*]
1. Show and then explain why the difference in means from the 2-Sample t-Test is qual to one of the coefficients from the linear model (be specific about which coefficient). [*Hint: Again, you will need to discuss how factors are coded in R and how a slope is defined.*]
1. Show and then explain why the df from the 2-Sample equals one of the df in the ANOVA table (again, be specific about which one). [*Hint: You will need to discuss how these df are computed.*]
1. Show how the 2-Sample t-Test test statistic is related to the F test statistic in the ANOVA table. [*Hint: The answer is in Section 1.8 of the reading. You can just state this as a fact without explanation.*]
1. Use the formula for the t-test statistic (i.e., in Section 1.1 of the reading) and the results for the t-test test statistic from R to "back-calculate" a value for s<sub>p</sub><sup>2</sup>. [*Note that this algebraic manipulation needs to be done by hand. Leave space to show your work or show your work on an attached page.*]
1. What value in the ANOVA table does your result for s<sub>p</sub><sup>2</sup> equal?

----
