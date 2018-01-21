---
layout: page
title: Homework #2
subtitle: Linear Models Foundations
css: "/css/modules.css"
---

----

<div class="alert alert-warning">
  <strong>Note</strong> Your answers to the questions below should follow the <a href="../../resources/hwformat" target="_blank">expectations for homework found here</a>. Due date is on the <a href="../../resources/Dates-Current" target="_blank">Dates page.</a>
</div>

----

## Fish Oil and Blood Pressure
<img src="../zimgs/fish-oil.jpg" alt="Fish Oil" class="img-right">

[Knapp and Fitzgerald (1989)](https://www.ncbi.nlm.nih.gov/pubmed/2648152){:target="_blank"} randomly assigned 14 male volunteers with high blood pressure to receive one of two diets (fish oil or standard oil) for four weeks.  They measured diastolic blood pressure (DBP) of each individual at the beginning and end of the four weeks, with the goal to determine how much the DBP had reduced (if at all) over the four weeks. The **reductions** in DBP are shown below. [*Note that negative numbers mean the DBP increased during the study.*]

<pre>
Fish Oil:      8, 12, 10, 2, 14,  0, 0
Standard Oil: -6,  0,  1, 2, -3, -4, 2
</pre>

1. Construct a table of 2-Sample t-Test results (use `t.test()` and assume that the group variances are equal). [*Note that an appropriately labeled table is the answer for this and the next two questions. You do not need a complete sentence for these questions.*]
1. Construct an ANOVA table (use `anova()` with an `lm()` object).
1. Construct a summary of coefficients table (use `summary()` with an `lm()` object).
1. How do the p-values for the 2-Sample t-Test, the ANOVA table, and the *slope* (in the summary of coefficients table) compare? Explain why this relationship occurs. [*Hint: You will need to discuss the H<sub>0</sub> and H<sub>A</sub> for each p-value and explain how they are equivalent.*]
1. What overall conclusion about the group means is made from these p-values?
1. How does the mean of the "first" group in the 2-Sample t-Test compare to either (but be specific about which one) of the coefficients from the linear model?  Explain why this relationship occurs. [*Hint: You will need to discuss how factors are coded in R and how an intercept is defined.*]
1. How does the difference in means from the 2-Sample t-Test compare to either (again,  but be specific about which one) of the coefficients from the linear model.  Explain why this relationship occurs [*Hint: Again, you will need to discuss how factors are coded in R and how an intercept is defined.*]
1. How does the df from the 2-Sample t-Test compare to one of the df in the ANOVA table (again,  but be specific about which one).  Explain why this relationship occurs. [*Hint: You will need to discuss how these df are computed.*]
1. How does the 2-Sample t-Test test statistic compare to the F test statistic in the ANOVA table. [*Hint: The answer is in Section 1.8 of the reading. You can just state this as a fact without explanation.*]
1. Use the formula for the t-test statistic (i.e., in Section 1.1 of the reading) and the results for the t-test test statistic from R to "back-calculate" a value for s<sub>p</sub><sup>2</sup>. [*Note that this algebraic manipulation needs to be done by hand. Leave space to show your work or show your work on an attached page.*]
1. What value in the ANOVA table does your result for s<sub>p</sub><sup>2</sup> equal?

----
