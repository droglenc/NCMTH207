---
layout: page
title: Homework 1
subtitle: Logistic Regression
css: "/css/modules.css"
---

----

<div class="alert alert-warning">
  <strong>Note</strong> Your answers to the questions below should follow the <a href="../../resources/hwformat" target="_blank">expectations for homework found here</a>.
</div>

----

## X-Rated Movies
<img src="../zimgs/x-rate-movie.jpg" alt="X-rated Movie" class="img-right">
The General Sociological Survey (GSS) is a very large survey that has been administered 25 times since 1972.  The basic purposes of the GSS are to gather data on contemporary American society in order to monitor and explain trends and constants in attitudes, behaviors, and attributes; to examine the structure and functioning of society in general as well as the role played by relevant subgroups; to compare the United States to other societies in order to place American society in comparative perspective and develop crossnational models of human society; and to make high-quality data easily accessible to scholars, students, policy makers, and others, with minimal cost and waiting.  One question that was asked in the most recent GSS was "Have you watched an x-rated movie in the last year?"  The respondent's answer to this question (Yes or No) and age are recorded in XMovieAge.csv ([download](https://raw.githubusercontent.com/droglenc/NCData/master/XMovieAge.csv), [meta](https://github.com/droglenc/NCData/blob/master/XMovieAge_meta.txt)). Use these **for only individuals 95-years-old or younger) to answer the following questions.

1. Comment on the adequacy of fit of this logistic regression model (i.e., from a `fitPlot()`). [*Note: Make sure that you use enough breaks to adequately characterize the change in proportions.*]
1. Interpret the meaning of the slope (&beta;<sub>1</sub>) from the fitted logistic regression model.
1. Interpret the meaning of the "back-transformed" slope from the fitted logistic regression model.
1. Show ("by hand") how to predict the log odds of having seen an x-rated movie in the last year for a 50-year-old respondent. [*Note: You can show this work in a hand-written appendix*]
1. Confirm your hand-calculations to the previous question with R output.
1. Show ("by hand") how to predict the odds that a 50-year-old respondent has seen an x-rated movie in the last year.
1. Show ("by hand") how to predict the probability that a 50-year-old respondent has seen an x-rated movie in the last year.
1. Confirm your hand-calculations to the previous question with R output.
1. Use R to predict the probability that a 30-year-old respondent has seen an x-rated movie in the last year.  Then show ("by hand") how to compute the odds that a 30-year-old respondent will have seen an x-rated movie in the last year.
1. Repeat the previous question but for a 31-year-old respondent.  Use these results and the results from the previous question to show a computational example of the meaning of the "back-transformed" slope.

----
