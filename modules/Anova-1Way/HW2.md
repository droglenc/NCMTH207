---
layout: page
title: Homework 2
subtitle: 1-Way ANOVA
css: "/css/modules.css"
---

----

<div class="alert alert-warning">
  <strong>Note</strong> Your answers to the questions below should follow the <a href="../../resources/hwformat" target="_blank">expectations for homework found here</a>.
</div>

----

## Raising Young Cuckoos
<img src="../zimgs/cuckoo-eggs.jpg" alt="Cuckoo Eggs" class="img-right">
Many species of cuckoos are brood parasites where the females lay their eggs in the nests of smaller bird species which then raise the young of the cuckoos at the expense of their own young.  Data on the lengths (mm) of cuckoo eggs found in the nests of three bird species - the [tree pipet](https://en.wikipedia.org/wiki/Tree_pipit){:target="_blank"}, [hedge sparrow](https://en.wikipedia.org/wiki/Dunnock){:target="_blank"}, and [pied wagtail](https://www.rspb.org.uk/birds-and-wildlife/bird-and-wildlife-guides/bird-a-z/p/piedwagtail/){:target="_blank"} - are provided in **Cuckoos.csv** ([download](https://raw.githubusercontent.com/droglenc/NCData/master/Cuckoos.csv), [meta](https://github.com/droglenc/NCData/blob/master/Cuckoos_meta.txt)). Load these data into R, construct a One-Way ANOVA, and answer the following questions.

1. Identify and label with a proper symbol the (a) overall sample size and (b) the number of groups in these data.
1. Interpret the meaning of each coefficients from fitting the One-Way ANOVA linear model. [*Hint: Show results from* `summary()`.]
1. Interpret the meaning of each coefficient's p-value.
1. Show how each degrees-of-freedom in the ANOVA table was calculated. [*Note: Make sure to show the ANOVA table produced by* `r anova()`.]
1. Interpret the meaning of each mean-square in the ANOVA table, include the mean-square that is usually not presented in the ANOVA table.
1. Interpret the F test statistic in the ANOVA table.
1. Is there evidence, at the 5% level, for a difference in the mean lengths of cuckoo eggs among the three bird species?  Explain.
1. If there is evidence of a difference in mean length of cuckoo eggs among the three bird species, then identify which pairs of means are likely different.

----
