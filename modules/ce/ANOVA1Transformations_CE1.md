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

1. What transformation results in the One-Way ANOVA assumptions to be adequately met. Briefly but completely explain your evidence for why each assumption is now met.

Create a new variable in the data frame that is the appropriately transformed response variable. Fit a new One-Way ANOVA with this transformed variable. Use it to answer the following questions.

{:start="2"}
1. Is there a significant difference in the groups means of the transformed data?

Perform multiple comparisons on the transformed scale (i.e., use `tran=` appropriately in `emmeans()`, but don't use `type="response"` in `summary()` of the `emmeans()` object). Use these results to answer the questions below.

{:start="3"}
1. Specifically which group means (of transformed data) differ?
1. Interpret the first group mean (i.e., from the `$emmeans` results).
1. Interpret the first difference of paired means (i.e., from the `$contrasts` results).

Back-transform the multiple comparisons results (i.e., use `type="response"` in `summary()` of the `emmeans()` object). Use these results to answer the questions below.

{:start="6"}
1. Interpret the first back-transformed group mean (i.e., from the `$emmeans` results).
1. Interpret the first back-transformed difference of paired means (i.e., from the `$contrasts` results).

&nbsp;

# Assumptions II
In [a previous exercise](ANOVA1Assumptions_CE1.html#assumptions-ii) you assessed the assumptions of a One-Way ANOVA (except for independence) for the data in [ANOVA1Assumptions2.csv](http://derekogle.com/NCMTH207/modules/ce/data/ANOVA1Assumptions2.csv). Load those data and the fit the untransformed linear model again. Use these data to answer the questions below. Show and refer to results as appropriate.

1. What transformation results in the One-Way ANOVA assumptions to be adequately met. Briefly but completely explain your evidence for why each assumption is now met.

Create a new variable in the data frame that is the appropriately transformed response variable. Fit a new One-Way ANOVA with this transformed variable. Use it to answer the following questions.

Perform multiple comparisons on the transformed scale). Use these results to answer the questions below.

{:start="3"}
1. Specifically which group means (of transformed data) differ?
1. Interpret the first group mean.
1. Interpret the first difference of paired means.

Back-transform the multiple comparisons results. Use these results to answer the questions below.

{:start="6"}
1. Interpret the first back-transformed group mean.
1. Interpret the first back-transformed difference of paired means.

&nbsp;

# Iron and Mining
<img src="../zimgs/Iron_Mining.jpg" alt="Iron Mining" class="img-right">
In [a previous exercise](ANOVA1Assumptions_CE1.html#iron-and-mining) you assessed the assumptions for data related to iron concentrations (mg/L) in 120 unique streams in coal-mining districts of Ohio, grouped according to land use in their basins: unmined, reclaimed, and abandoned. Load those data and the fit the untransformed linear model again. Use these data to answer the questions below. Show and refer to results as appropriate.

1. What transformation results in the One-Way ANOVA assumptions to be adequately met. Briefly but completely explain your evidence for why each assumption is now met.

Create a new variable in the data frame that is the appropriately transformed response variable. Fit a new One-Way ANOVA with this transformed variable. Use it to answer the following questions.

{:start="2"}
1. Is there a significant difference in the groups means of the transformed data?
1. Specifically which group means (of transformed data) differ?
1. Interpret (on the transformed scale) the smallest group mean.
1. Interpret (on the transformed scale) the difference in means for the paired means that are most different.
1. Interpret the small back-transformed group mean.
1. Interpret the back-transform difference in group means for paired means that are most different.
