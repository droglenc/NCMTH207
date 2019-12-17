---
layout: page
title: Exercise
subtitle: Indicator Variable Regression
css: "/css/modules.css"
---

----

<div class="alert alert-warning">
  <strong>Note</strong> Your answers to the questions below should follow the <a href="../../resources/hwformat" target="_blank">expectations for homework found here</a>. Due date is on the <a href="../../resources/Dates-Current" target="_blank">Dates page.</a>
</div>

----

## Bat Morphology
<img src="../zimgs/bat.jpg" alt="Bat" class="img-right">
[Hutcheon *et al.* (2002)](http://biology.ucr.edu/people/faculty/Garland/HutcEA02.pdf) examined variations in the volume of three brain regions (main olfactory bulb, hippocampus, auditory nuclei) using a data set for 63 species of bats (Chiroptera). They were primarily interested in determining if the volume of brain regions differed among broad foraging categories (phytophagous, gleaner, and aerial insectivore). They "factored out" body weight of the bats (by including it as a covariate in their model) because differences in size of bats among the foraging categories was suspected and thought to possibly mask possible differences in the volume of the brain regions. Use the data in Batmorph2.csv ([download](https://raw.githubusercontent.com/droglenc/NCData/master/Batmorph2.csv), [meta](https://github.com/droglenc/NCData/blob/master/Batmorph2_meta.txt)) to compute results to address the questions below assuming that interest is in just **auditory nuclei volume. A fourth foraging type -- vampire bats -- is included in the data, but should be excluded from the analysis. The phytophagous foraging groups should be the reference group** [*Note: You MUST remove the vampire group and make the phytophagous group the reference within your R code, not by manipulating the CSV file.*]

1. Construct (i.e., write) the ultimate full model for an indicator variable regression with these data. [*Note: Clearly define your variables.*]
1. Construct all possible submodels from your ultimate full model.
1. Address all assumptions for the ultimate model. If the major assumptions are not met, then transform the data to a scale where the assumptions are met (and show that the assumptions are met on this new scale). Do not remove any individuals from the analysis.
1. Perform a parallel lines test.  If the lines are not parallel, then determine which pairs of lines differ.
1. If appropriate, perform an intercepts test.  If the lines have different intercepts, then determine which pairs of lines are different.
1. Write an overall conclusion about the bats from your results.

----
