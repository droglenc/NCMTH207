---
layout: page
title: Exercise
subtitle: Getting Organized
css: "/css/modules.css"
---

<div class="alert alert-warning">
  <strong>Note</strong> Your answers to the questions below should follow the <a href="../resources/hwformat" target="_blank">expectations for homework found here</a>. Due date is on the <a href="../../resources/Dates-Current" target="_blank">Dates page.</a>
</div>

----

# Variable Types
<div class="alert alert-info">
For each question below, identify what type of variable the variable is.
</div>

1. Height (m) of an oak tree.
1. Number of goals scored in a game.
1. Area (km<sup>2</sup>) of the ozone hole.
1. Species of bird.
1. Satisfaction with customer service (Excellent, Good, Fair, Poor).

&nbsp;

# pH in Two Rivers
<div class="alert alert-warning">
Recall from your Introductory Statistics course how (what format and in what software and saved how) these data need to be entered. This <a href="http://derekogle.com/NCMTH107/modules/RData">reading</a> and <a href="http://derekogle.com/NCMTH107/resources/FAQs/stacked-data.html">FAQ</a> may be useful.
</div>

Burke Center researchers recorded the pH at ten locations in two streams that were close in proximity but in different watersheds with markedly different geologies. They wanted to determine if the mean pH differed between the two streams. Their data are shown in the table below.

<pre>
Stream A: 8.97 9.12 9.41 8.67 9.94 8.28 7.86 7.51 9.18 7.68
Stream B: 6.67 5.83 6.84 6.86 5.89 7.42 6.56 5.99 5.33 6.69
</pre>

Load these data into R and answer the following questions. Make sure to show and refer to R code and results as needed.

1. How many total measurements were made? [*Refer to R output*]
1. Construct histograms of pH for both streams.
1. Construct summary statistics of pH for both streams.

You may find the following general R code useful.

```
ggplot(data=DFOBJ,mapping=aes(x=QVAR)) +
  geom_histogram(binwidth=NUM,boundary=0,color="black",fill="lightgray") +
  labs(y="Frequency of INDIVIDUALS",x="QVAR DESCRIPTION") +
  scale_y_continuous(expand=expansion(mult=c(0,0.05))) +
  theme_NCStats() +
  facet_wrap(vars(CVAR))

Summarize(QVAR~CVAR,data=DFOBJ,digits=NUM)
```
