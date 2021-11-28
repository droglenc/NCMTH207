---
layout: page
title: Exercise
subtitle: One-Way ANOVA Foundational Principles
css: "/css/modules.css"
---

<div class="alert alert-warning">
  <strong>Note:</strong> Your answers to the questions below should follow the <a href="../resources/hwformat" target="_blank">expectations for homework found here</a>. Questions outside of class can be asked on the Module Assignments-Questions Teams channel (see link on homepage).
</div>

----

# ANOVA Table Completion I

Source     | df |   SS  |  MS  |   F  | p-value
:----------|---:|------:|-----:|-----:|--------:
**Among**  |    | 17.25 |      | 1.26 |
**Within** |    |       | 4.56 |   -  | -
**Total**  | 23 |       |  -   |   -  | -

1. Complete the missing cells in the ANOVA table above. Show your work. [*Note this does not use R except to compute the p-value with* `distrib()`.[^distrib]]
1. How many groups were in this analysis?
1. How many individuals were in this analysis?
1. What is the pooled variance among individuals in each group?
1. What is the variance among individuals if groups are ignored?
1. Is there a significant difference among group means? [*Provide statistical evidence to support your answer*]

&nbsp;

# ANOVA Table Completion II

A study that used 54 individuals evenly allocated to 6 treatment groups had a variance among all individuals (ignoring group membership) of 47.33 and a combined variance of individuals in each group of 33.78.

1. Use this information to construct an ANOVA table. Show your work. [*Note this does not use R except to compute the p-value with* `distrib()`.]
2. Is there a significant difference among the group means? [*Provide statistical evidence to support your answer*]

&nbsp;

# Raising Young Cuckoos
Many species of cuckoos are brood parasites where the females lay their eggs in the nests of smaller bird species which then raise the cuckoo young at the expense of their own young. Data on the lengths (mm) of cuckoo eggs found in the nests of three bird species - the [tree pipet](https://en.wikipedia.org/wiki/Tree_pipit){:target="_blank"}, [hedge sparrow](https://en.wikipedia.org/wiki/Dunnock){:target="_blank"}, and [pied wagtail](https://www.rspb.org.uk/birds-and-wildlife/bird-and-wildlife-guides/bird-a-z/p/piedwagtail/){:target="_blank"} - are provided in Cuckoos.csv ([download](https://raw.githubusercontent.com/droglenc/NCData/master/Cuckoos.csv), [meta](https://raw.githubusercontent.com/droglenc/NCData/master/Cuckoos_meta.txt)). Load these data into R, construct a One-Way ANOVA (*make sure to show the* `anova()` *results.*), and answer the following questions.

1. Identify and label with a proper symbol the (a) overall sample size and (b) the number of groups in these data.
1. Explain how each degrees-of-freedom in the ANOVA table was calculated. Include the degrees-of-freedom that R does not show in the ANOVA table.
1. Interpret the meaning of each mean-square in the ANOVA table, include the mean-square that is usually not presented in the ANOVA table.
1. Explain what the F-ratio means. Your explanation is not simply how it is calculated (i.e., it is not simply a formula), rather it should include two separate explanations focused on variabilities (explained and unexplained) and relative model fits.
1. What three related conclusions can you make from the p-value? These should be related to hypotheses, models, and number of means.
1. Make a graphic that illustrates the results of the study.
1. Write an overall conclusion from this study.

&nbsp;

[^distrib]: Use `distrib(##,distrib="f",df1=##,df2=##,lower.tail=FALSE)`
