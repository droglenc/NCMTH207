---
title: Exercise
subtitle: Logistic Regression Models and Predictions
author: Derek H. Ogle
layout: page
css: "/css/modules.css"
output:
  html_document:
    fig_height: 4
    fig_width: 4
    self_contained: false
---





<div class="alert alert-warning">
  <strong>Note</strong> Your answers to the questions below should follow the <a href="../resources/hwformat" target="_blank">expectations for homework found here</a>. Due date is on the <a href="../../resources/Dates-Current" target="_blank">Dates page.</a>
</div>

----

# Marketability of Cucumbers
<img src="../zimgs/cucumbers.jpg" alt="Decoration" class="img-right">
In [this previous exercise](LogRegFoundations_CE1#marketability-of-cucumbers) you used these logistic regression results -- logit(p)=6.430-0.330DOS -- for the Levantino cultivar of cucumber to answer questions about cucumber marketability. Continue with this information to answer the questions below.

1. Interpret the slope.
1. Interpret the exponentiated slope.
1. Predict the days of storage where the probability that the cucumber is marketable is at least 0.90.
1. Predict the days of storage where the probability that the cucumber is marketable first drops below 0.10.

&nbsp;


# Bat Subspecies
<img src="../zimgs/bat2.jpg" alt="Hoary Bat" class="img-right">
Researchers measured (among other things) the canine tooth height (cm) from two subspecies of [Hoary bats](https://en.wikipedia.org/wiki/Hoary_bat) (*Lasiurus cinereus cinereus* and *Lasiurus cinereus semotus*) found in Hawaii. Their primary question was to determine if canine tooth height (hereafter, just tooth height) differed between subspecies and, more importantly to them, could tooth height be used to predict the subspecies of bat. The parameter estimates of the logistic regression model used to predict subspecies (note that *cinereus* was considered a "success") from canine tooth height (mm) is shown below. The fitted logistic regression is also shown in the figure below.




