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
[Hutcheon *et al.* (2002)](http://biology.ucr.edu/people/faculty/Garland/HutcEA02.pdf) examined variations in the volume of three brain regions (main olfactory bulb, hippocampus, auditory nuclei) using a data set for 63 species of bats (Chiroptera). They were primarily interested in determining if the volume of brain regions differed among broad foraging categories (phytophagous, gleaner, and aerial insectivore). They "factored out" body weight of the bats by including it as a covariate in their model because differences in size of bats among the foraging categories was suspected and thought to possibly mask possible differences in the volume of the brain regions. Use the data in Batmorph2.csv ([download](https://raw.githubusercontent.com/droglenc/NCData/master/Batmorph2.csv), [meta](https://github.com/droglenc/NCData/blob/master/Batmorph2_meta.txt)) to compute results to address the questions below. However, note the following items:

* Assume that interest is in just **auditory nuclei volume** and no other region of the brain.
* Vampire bats are included in the data, but should be excluded from the analysis. Use `filterD()` to remove them from the data once it is loaded into R.
* The **phytophagous foraging group** should be the reference group. Use `factor()` to change the levels in R to accomplish this ([see here](http://derekogle.com/NCMTH107/resources/FAQ/FAQs/reorder-levels)).

1. Write the ultimate full model for an indicator variable regression with these data. [*Note: Clearly define all of your variables.*]
1. Show all possible submodels that can be created from your ultimate full model.
1. Address all assumptions for the ultimate model. If the major assumptions are not met, then transform the data to a scale where the assumptions are met (and show that the assumptions are met on this new scale). Do not remove any individuals from the analysis.
1. Perform a parallel lines test. If the lines are not parallel, then determine which pairs of lines differ.
1. If appropriate, perform an intercepts test. If the lines have different intercepts, then determine which pairs of lines are different.
1. Create a plot that illustrates your results.
1. Write an overall conclusion about the bats from your results.

----
