---
layout: page
title: Homework 2
subtitle: 1-Way ANOVA
css: "/css/modules.css"
---

----

<div class="alert alert-warning">
  <strong>Note</strong> Your answers to the questions below should follow the <a href="../../resources/hwformat" target="_blank">expectations for homework found here</a>. Due date is on the <a href="../../resources/Dates-Current" target="_blank">Dates page.</a>
</div>

----

## Raising Young Cuckoos
<img src="../zimgs/cuckoo-eggs.jpg" alt="Cuckoo Eggs" class="img-right">
Many species of cuckoos are brood parasites where the females lay their eggs in the nests of smaller bird species which then raise the young of the cuckoos at the expense of their own young.  Data on the lengths (mm) of cuckoo eggs found in the nests of three bird species - the [tree pipet](https://en.wikipedia.org/wiki/Tree_pipit){:target="_blank"}, [hedge sparrow](https://en.wikipedia.org/wiki/Dunnock){:target="_blank"}, and [pied wagtail](https://www.rspb.org.uk/birds-and-wildlife/bird-and-wildlife-guides/bird-a-z/p/piedwagtail/){:target="_blank"} - are provided in **Cuckoos.csv** ([download](https://raw.githubusercontent.com/droglenc/NCData/master/Cuckoos.csv), [meta](https://github.com/droglenc/NCData/blob/master/Cuckoos_meta.txt)). Load these data into R, construct a One-Way ANOVA, and answer the following questions. [*Note: do not yet worry about testing the assumptions for the one-way ANOVA.*]

1. Identify and label with a proper symbol the (a) overall sample size and (b) the number of groups in these data.
1. Interpret the meaning of each coefficient from fitting the 1-way ANOVA linear model. [*Hint: Interpret each value from* `coef()`.]
1. Interpret the meaning of each coefficient's confidence interval. [*Hint: Interpret each value from* `confint()`.]
1. Show how each degrees-of-freedom in the ANOVA table was calculated. Include the degrees-of-freedom that R does not show in the ANOVA table. [*Note: Make sure to show the ANOVA table produced by* `anova()`.]
1. Interpret the meaning of each mean-square in the ANOVA table, include the mean-square that is usually not presented in the ANOVA table.
1. Interpret the F test statistic in the ANOVA table. [*Hint: Use language about variance explained and unexplained by models.*]
1. Is there evidence, at the 5% level, for a difference in the mean lengths of cuckoo eggs among the three bird species? Explain.

----
