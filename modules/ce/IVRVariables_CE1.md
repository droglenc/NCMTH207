---
layout: page
title: Exercise
subtitle: IVR Variables
css: "/css/modules.css"
---

<div class="alert alert-warning">
  <strong>Note:</strong> Your answers to the questions below should follow the <a href="../resources/hwformat" target="_blank">expectations for homework found here</a>. Questions outside of class can be asked on the Module Assignments-Questions Teams channel (see link on homepage).
</div>

----

# Nurse Wages
Male nurses brought a wage discrimination suit against a hospital because the mean wage for male nurses was considerably lower than that for female nurses. The administration argued that the difference was due to female nurses having considerably more experience on the job than male nurses. To examine this the dispute mediators recorded the current hourly wage, time employed at the hospital (i.e., months of experience), and gender (female, male) of 40 nurses working at the hospital. Use this information to answer the following questions.

1. What is the response variable?
1. What is the covariate?
1. What is the factor?
1. Define an indicator variable or variables for the factor variable in the same manner that R would.
1. Create a table (as shown in the reading) that relates the groups in the factor variable to the codes in the indicator variable(s).
1. What is/are the interaction variable(s) that would be created for this analysis?

&nbsp;

## Turtle Nesting Ecology
[Chatting *et al.* (2018)](https://journals.plos.org/plosone/article?id=10.1371/journal.pone.0203257) examined the nesting ecology of the Hawksbill Turtle (*Eretmochelys imbricata*) in the Arabian Gulf and compared their results to results from other parts of the turtle's range. In one part of their analysis they examined the relationship between clutch size (number of eggs per nest) and the curved carapace length (cm) for individual turtles across five areas -- Arabian Gulf, Indian Ocean, Red Sea, Caribbean Sea, and West Atlantic Ocean. It is known that turtles from the Middle East are smaller than turtles from the Atlantic Ocean area and, thus, the authors wanted to determine if mean clutch size differed among the five regions after adjusting for the length of the turtle.

You won't need these actual data in this exercise, but you will use these data in an exercise for the next module. In that exercise, I offer this suggestion

> After loading these data into R I suggest you reorder the regions so that it will be easier to distinguish regions in the Middle East (Arabian Gulf, Indian Ocean, and Red Sea) from those in the Atlantic (Caribbean and West Atlantic) and allow the Arabian Gulf to be the reference group.

Keep this in mind when answering the questions below.

1. What is the response variable?
1. What is the covariate?
1. What is the factor?
1. Define an indicator variable or variables for the factor variable in the same manner that R would (after you have made the adjustment suggested above).
1. Create a table (as shown in the reading) that relates the groups in the factor variable to the codes in the indicator variable(s).
1. What is/are the interaction variable(s) that would be created for this analysis?

&nbsp;

## Water Quality Near a Gold Mine
[Houben *et al.* (2016)](https://journals.plos.org/plosone/article?id=10.1371/journal.pone.0150960) examined factors that affected the water quality of lakes surrounding a gold mine near Yellowknife, Nunavut, Canada. In their study they measured water quality parameters in 25 lakes within a 25 km radius of the Giant Mine gold mine. In one part of their study they recorded total phosphorous (labeled as *total*), total dissolved phosphorous (*dissolved*), and soluble reactive phosphorous (*soluble*). They were interested in determine if the relationship between phosphorous value and distance from the mine differed depending on the type of phosphorous measured. Use this information to answer the questions below, making sure to adjust so that total phosphorous is the reference group.

1. What is the response variable?
1. What is the covariate?
1. What is the factor?
1. Define an indicator variable or variables for the factor variable in the same manner that R would (after you have adjusted the levels so that total phosphorous is the reference group).
1. Create a table (as shown in the reading) that relates the groups in the factor variable to the codes in the indicator variable(s).
1. What is/are the interaction variable(s) that would be created for this analysis?

&nbsp;

## Data Preparation for Next Module
The assignment for the next module is a bit more work than this one. Thus, please prepare the data for next module as described below.

### Turtle Nesting Ecology
The data for this situation are in HawksbillTurtles.csv ([data](https://raw.githubusercontent.com/droglenc/NCData/master/HawksbillTurtles.csv), [meta](https://github.com/droglenc/NCData/blob/master/HawksbillTurtles_meta.txt)). Load these data and **reorder the regions so that it will be easier to distinguish regions in the Middle East (Arabian Gulf, Indian Ocean, and Red Sea) from those in the Atlantic (Caribbean and West Atlantic) and allow the Arabian Gulf to be the reference group**. [*Note: [see this for help](../resources/R_HowTo_Factor.html#change-order-of-levels){:target="_blank"}.*]

### Water Quality Near a Gold Mine
The data for this situation are in [GoldMine.csv](data/GoldMine.csv). Load these data and **reorder the groups so that total phosphorous is the reference group** ... [see this for help](../resources/R_HowTo_Factor.html#change-order-of-levels){:target="_blank"}.
