---
layout: page
title: Exercise
subtitle: Logistic Regression Summary
css: "/css/modules.css"
---

<div class="alert alert-warning">
  <strong>Note:</strong> Your answers to the questions below should follow the <a href="../resources/hwformat" target="_blank">expectations for homework found here</a>. Questions outside of class can be asked on the Module Assignments-Questions Teams channel (see link on homepage).
</div>

----

# Diabetes
Health service professionals working with the [Pima people](http://www.native-languages.org/pima_culture.htm) want to develop,  for women of Pima heritage, a model that may be used to predict diabetes from other more readily measured variables. To begin this process the researchers collated data from the National Institute of Diabetes and Digestive and Kidney Diseases for women of Pima heritage that were at least 21 years old. Their data set is in [diabetes.csv](https://raw.githubusercontent.com/droglenc/NCMTH207/gh-pages/modules/ce/data/diabetes.csv).[^1]

From those data use plasma glucose concentration (`Glucose`) to possibly develop a model to predict the presence of diabetes or not (coded as `1`=diabetes and `0`=no diabetes in the `Outcome` variable). Note that glucose values of 0 in the data are errors and should be removed ([see this note](https://derekogle.com/NCMTH207/modules/resources/R_HowTo_Filter.html#isolating-relative-to-a-quantitative-variable)). Please follow the workflow and the tenor of the example analyses in the reading.

[^1]: These data are originally from [here](https://www.kaggle.com/datasets/uciml/pima-indians-diabetes-database).
