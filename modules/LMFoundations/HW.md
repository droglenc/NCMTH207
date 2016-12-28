---
layout: page
title: Homework Assignment
subtitle: Linear Models Foundations
css: "/css/modules.css"
---

----

<div class="alert alert-warning">
  <strong>Note</strong> Your answers to the questions below should follow the <a href="../../resources/hwformat" target="_blank">expectations for homework found here</a>.
</div>

----

## Sea Level Rise Rate
<img src="../zimgs/sea-level-rise.jpg" alt="Sea Level Rise" class="img-right">

Knapp and Fitzgerald (1989) randomly assigned 14 male volunteers with high blood pressure to receive one of two diets (fish oil or standard oil) for four weeks.  They measured diastolic blood (DBP) pressure of each individual at the beginning and end of the four weeks, with the goal to determine by how much the DBP had reduced (if at all). The **reductions** in DBP are shown below. [*Note that negative numbers mean the DBP increased during the study.*]

<pre>
Fish Diet -- 8, 12, 10, 2, 14, 0, 0
Standard Diet -6, 0, 1, 2, -3, -4, 2
</pre>

1. Construct a table of results from `t.test()`. [*Note that an appropriately labeled table is the answer for this and the next two questions. You do not need a complete sentence here.*]
1. Construct an ANOVA table (using `anova()` with an `lm()` object).
1. Construct a summary of coefficients table (using `summary()` with an `lm()` object).
1. How do the p-values from the two-sample t-test, ANOVA table, and the *slope* in the coefficients table compare?  What is the overall conclusion about the group means from these p-values?
1. How does the mean of the "first" group in the two-sample t-test compare to either (but be be specific about which one) of the coefficients from the linear model?  Explain why this relationship occurs. [*Hint: You will need to discuss how factors are coded in R and how an intercept is defined.*]
1. How does the difference in means from the two-sample t-test compare to either (again,  but be be specific about which one) of the coefficients from the linear model.  Explain why this relationship occurs [*Hint: Again, you will need to discuss how factors are coded in R and how an intercept is defined.*]
1. How does the df from the two-sample t-test compare to the df in the ANOVA table.  Explain why this relationship occurs. [*Hint: You will need to discuss how these df are computed.*]
1. How does the two-sample t-test test statistic compare to the $F$ test statistic in the ANOVA table. [*Hint: The answer is in Section 1.8 of the reading*]
1. Use the formula for the t-test statistic (i.e., in Section 1.1 of the reading) and the results for the t-test test statistic from R to ``back-compute'' a value for $s_{p}^{2}$ (note that this algebraic manipulation needs to be done by hand -- show your work).
1. What value in the ANOVA table does your result for $s_{p}^{2}$ equal?

----
