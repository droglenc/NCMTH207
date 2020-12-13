---
layout: page
title: Exercise
subtitle: One-Way ANOVA Transformations
css: "/css/modules.css"
---

<div class="alert alert-warning">
  <strong>Note</strong> Your answers to the questions below should follow the <a href="../../resources/hwformat" target="_blank">expectations for homework found here</a>. Due date is on the <a href="../../resources/Dates-Current" target="_blank">Dates page.</a>
</div>

----

# Assumptions I
In [a previous exercise](ANOVA1Assumptions_CE1.html#assumptions-i) you assessed the assumptions of a One-Way ANOVA (except for independence) for the data in [ANOVA1Assumptions1.csv](http://derekogle.com/NCMTH207/modules/ce/data/ANOVA1Assumptions1.csv). Load those data and the fit the untransformed linear model again. Use these data to answer the questions below. Show and refer to results as appropriate.

1. What transformation results in the One-Way ANOVA assumptions to be adequately met.

Create a new variable in the data frame that is the appropriately transformed response variable. Fit a new One-Way ANOVA with this transformed variable. Use it to answer the following questions.

1. Is there a significant difference in the groups means of the transformed data?
1. Specifically which group means (of transformed data) differ?
1. Interpret the mean of the first group from the `emmeans()` results.
1. Back-transform the mean of the first group. Interpret this value.
1. Interpret the first difference of paired means from the `emmeans()` results.
1. Back-transform the first difference of paired means from the `emmeans()` results. Interpret this value.

&nbsp;

# Assumptions II
In [a previous exercise](ANOVA1Assumptions_CE1.html#assumptions-ii) you assessed the assumptions of a One-Way ANOVA (except for independence) for the data in [ANOVA1Assumptions2.csv](http://derekogle.com/NCMTH207/modules/ce/data/ANOVA1Assumptions2.csv). Load those data and the fit the untransformed linear model again. Use these data to answer the questions below. Show and refer to results as appropriate.

1. What transformation results in the One-Way ANOVA assumptions to be adequately met.

Create a new variable in the data frame that is the appropriately transformed response variable. Fit a new One-Way ANOVA with this transformed variable. Use it to answer the following questions.

1. Is there a significant difference in the groups means of the transformed data?
1. Specifically which group means (of transformed data) differ?
1. Interpret the largest group mean in the `emmeans()` results.
1. Back-transform the largest group mean. Interpret this value.
1. Interpret the paired means from the `emmeans()` results that are most different.
1. Back-transform the most different difference of paired means from the `emmeans()` results. Interpret this value.

&nbsp;

# Iron and Mining
<img src="../zimgs/Iron_Mining.jpg" alt="Iron Mining" class="img-right">
In [a previous exercise](ANOVA1Assumptions_CE1.html#iron-and-mining) you assessed the assumptions for data related to iron concentrations (mg/L) in 120 unique streams in coal-mining districts of Ohio, grouped according to land use in their basins: unmined, reclaimed, and abandoned. Load those data and the fit the untransformed linear model again. Use these data to answer the questions below. Show and refer to results as appropriate.

1. What transformation results in the One-Way ANOVA assumptions to be adequately met.

Create a new variable in the data frame that is the appropriately transformed response variable. Fit a new One-Way ANOVA with this transformed variable. Use it to answer the following questions.

1. Is there a significant difference in the groups means of the transformed data?
1. Specifically which group means (of transformed data) differ?
1. Interpret the smallest group mean in the `emmeans()` results.
1. Back-transform the smallest group mean. Interpret this value.
1. Interpret the paired means from the `emmeans()` results that are most different.
1. Back-transform the most different difference of paired means from the `emmeans()` results. Interpret this value.
