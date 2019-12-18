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

## Turtle Nesting Ecology
<img src="../zimgs/hawksbill-turtle.jpg" alt="Hawksbill Turtle" class="img-right">
[Chatting *et al.* (2018)](https://journals.plos.org/plosone/article?id=10.1371/journal.pone.0203257) examined the nesting ecology of the Hawksbill Turtle (*Eretmochelys imbricata*) in the Arabian Gulf and compared their results to results from other parts of the turtle's range. In one part of their analysis they examined the relationship between clutch size (number of eggs per nest) and the curved carapace length (cm) for individual turtles across five areas -- Arabian Gulf, Indian Ocean, Red Sea, Caribbean Sea, and West Atlantic Ocean. It is known that turtles from the Middle East are smaller than turtles from the Atlantic Ocean area and, thus, the authors wanted to determine if mean clutch size differed among the five regions after adjusting for the size of the turtle.

The author's data are in HawksbillTurtles.csv ([download](https://raw.githubusercontent.com/droglenc/NCData/master/HawksbillTurtles.csv), [meta](https://github.com/droglenc/NCData/blob/master/HawksbillTurtles_meta.txt)). After loading these data into R I suggest you reorder the regions so that it will be easier to distinguish regions in the Middle East (Arabian Gulf, Indian Ocean, and Red Sea) from those in the Atlantic (Caribbean and West Atlantic) and allow the Arabian Gulf to be the reference group. Use these data to address the questions below.
 
1. Write the ultimate full model for an indicator variable regression with these data. [*Note: Clearly define all of your variables.*]
1. Show all possible submodels that can be created from your ultimate full model.
1. Address all assumptions for the ultimate model. If the major assumptions are not met, then transform the data to a scale where the assumptions are met (and show that the assumptions are met on this new scale). Do not remove any individuals from the analysis.
1. Perform a parallel lines test. If the lines are not parallel, then determine which pairs of lines differ.
1. If appropriate, perform an intercepts test. If the lines have different intercepts, then determine which pairs of lines are different.
1. If appropriate, perform a relationships tests.
1. Create a plot that illustrates your results.
1. Write an overall conclusion about the turtles from your results. [*Note: You shoudl attempt to address whether the relationship differed among groups, whether the lines were coincident, and whether there was a significant relationship. If any differences among groups were evident these should be specifically addressed.*]

----
