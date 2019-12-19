---
layout: page
title: Exercise
subtitle: Logistic Regression
css: "/css/modules.css"
---

----

<div class="alert alert-warning">
  <strong>Note</strong> Your answers to the questions below should follow the <a href="../../resources/hwformat" target="_blank">expectations for homework found here</a>. Due date is on the <a href="../../resources/Dates-Current" target="_blank">Dates page.</a>
</div>

----

## Ruffe Feeding
<img src="../zimgs/ruffe.jpg" alt="Ruffe" class="img-right">
[Ogle *et al.* (2004)](https://www.researchgate.net/publication/242185834_Diet_of_Larval_Ruffe_Gymnocephalus_cernuus_in_the_St_Louis_River_Harbor_Lake_Superior){:target="_blank"} examined the diet of larval Ruffe (*Gymnocephalus cernuus*) in the St. Louis River Harbor, Lake Superior.  In one part of their study, they recorded the occurrence (i.e., presence or absence) of six different prey items, plus an "other" category, for Ruffe captured at two locations (Allouez Bay and Whaleback Bay) over six dates.  In addition, they recorded the length of the larval Ruffe (in mm).  The results of this study are in RuffeLarvalDiet.csv ([download](https://raw.githubusercontent.com/droglenc/NCData/master/RuffeLarvalDiet.csv), [meta](https://github.com/droglenc/NCData/blob/master/RuffeLarvalDiet_meta.txt)).  For the questions below, restrict the data set to fish captured **just in Allouez Bay** (*you will need to use `filterD()` to isolate this location*) and focus on the occurrence of *Daphnia* relative to the length of larval Ruffe.

1. Comment on the adequacy of fit of this logistic regression model (i.e., from a `fitPlot()`). [*Note: Make sure that you use enough breaks to adequately characterize the change in proportions.*]
1. Is there a significant relationship between the logit probability of consuming a  *Daphnia* and the length of the larval Ruffe?  Explain.
1. Describe, in as much detail and as specifically as possible, the relationship between the probability of having consumed a *Daphnia* and the length of the larval Ruffe.
1. Predict the odds that a 6-mm larval Ruffe consumed a *Daphnia*. Describe what this number means.
1. Predict the probability, with appropriate confidence interval, that a 6-mm larval Ruffe consumed a *Daphnia*. Describe what this number means.

----
