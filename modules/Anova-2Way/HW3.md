---
layout: page
title: Homework 3
subtitle: 2-Way ANOVA
css: "/css/modules.css"
---

----

<div class="alert alert-warning">
  <strong>Note</strong> Your answers to the questions below should follow the <a href="../../resources/hwformat" target="_blank">expectations for homework found here</a>. Due date is on the <a href="../../resources/Dates-Current" target="_blank">Dates page.</a>
</div>

----

## Feeding Under Risk of Predation
<img src="../zimgs/smallmouth-eats-crayfish.jpg" alt="Smallmouth and Crayfish" class="img-right">
Nystrom and Graneli (1996) examined the importance of intraspecific competition for food as a factor regulating survival, growth, and fecundity in noble crayfish (*Astacus astacus*).  In one aspect of their research they examined factors that increased the risk of predation.  In this part of their study, the authors assumed that the number of active crayfish (i.e., not in shelters) was an indicator of predation risk (i.e., the crayfish are out of their shelters and are thus more vulnerable).  The authors hypothesized that the risk of predation would be greater if the level of competition was high.  The authors created two levels of competition by regulating how much food the crayfish received (with the assumption being that competition is greater with lesser food).  The two feeding regimes were labeled as FED meaning that the crayfish were fed *ad libitum* and UNFED meaning that they were fed slightly less than a maintenance ration.  In addition, the authors hypothesized that the crayfish would be more active near dusk.  Thus, they also included a time of day factor that had three levels:  1200 (noon), 1700, and 1900.  The authors had a large number of crayfish available to them for this experiment.  They randomly assigned groups of 50 crayfish to each treatment.  After an acclimatization period for the crayfish, the authors recorded the number of crayfish that were active (i.e., not in shelters) in each treatment.  The results of their observations are shown below.

<pre>
Comp  Time   Number (out of 50) of Active Crayfish
Fed   1200    3,  2 , 3,  2,  2,  2
Unfed 1200    7, 14,  4,  4, 10,  5
Fed   1700    4,  2,  4,  3,  2,  4,  4,  3,  4,  3,  4,  4
Unfed 1700   24, 33, 41,  6, 22, 28, 12, 35, 31, 30, 24, 39
Fed   1900    3,  3,  4,  2,  5,  3
Unfed 1900   49, 13, 40, 48, 47, 47
</pre>

Load these data into R to answer these questions. [*Note: You will need to force the Time variable to be a factor variable with* `factor()`.]

1. Thoroughly check the assumptions. If necessary, transform the data to meet the assumptions. If you transform the data, then show that the assumptions are met on the transformed scale. [*Note: For simplicity, do not remove any outliers from the data. Also, it may not be possible to find a transformation where all assumptions are met. Thus, try to find the transformation where the most critical assumptions are met. You may check your chosen transformation with me before continuing (which I would prefer so that you don't torture both of us analyzing these data on a "difficult" or "bad" scale.*]
1. Are there significant main effects or an interaction effect? [*Note: Provide explicit evidence for each effect.*]
1. Thoroughly describe specific differences related to significant main or interaction effects (i.e., which groups, if any, differ and by how much).
1. Construct a plot or plots that depict the differences identified in the previous question.  Note, this plot should have letters that depict which groups are and are not significantly different.
1. Summarize (ecologically, not statistically) your findings about the actual number of active crayfish and the level of competition and time of day.

----
