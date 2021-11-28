---
layout: page
title: Exercise
subtitle: SLR Foundational Principles
css: "/css/modules.css"
---

<div class="alert alert-warning">
  <strong>Note:</strong> Your answers to the questions below should follow the <a href="../resources/hwformat" target="_blank">expectations for homework found here</a>. Questions outside of class can be asked on the Module Assignments-Questions Teams channel (see link on homepage).
</div>

----

## Male-Female Birth Ratio
[Davis *et al.* (1998)](https://www.researchgate.net/publication/51325887_Reduced_Ratio_of_Male_to_Female_Births_in_Several_Industrial_Countries_A_Sentinel_Health_Indicator){:target="_blank"} observed a decline in the ratio of male to female births in several industrialized countries and explored whether that result was an indicator of larger health issues. The data below are the proportion of male births (PropMale) for the United States. Use these data to answer the questions further below. [*Note: The data are wrapped onto multiple lines simply to save space. Carefully check that your data entry is correct.*]

<pre>
Year:       1970   1971   1972   1973   1974   1975   1976
PropMale: 0.5134 0.5126 0.5125 0.5128 0.5133 0.5132 0.5128

Year:       1977   1978   1979   1980   1981   1982   1983
PropMale: 0.5128 0.5129 0.5127 0.5129 0.5126 0.5123 0.5127

Year:       1984   1985   1986   1987   1988   1989   1990
PropMale: 0.5122 0.5126 0.5122 0.5120 0.5121 0.5120 0.5120
</pre>

1. Construct a graphic that demonstrates the linear model fit.
1. Write the equation of the best-fit line.
1. Interpret the value of the slope (using the 95% confidence interval).
1. Interpret the value of the y-intercept (using the 95% confidence interval). Comment on whether this interpretation makes sense and why or why not?
1. Interpret the r<sup>2</sup> value (with a complete sentence).
1. Predict the proportion of males for 1990. Show your answer using your calculator and a function in R.
1. Predict the proportion of males for 2020. Comment on the validity of the prediction (with an explanation for your thoughts).
1. Calculate the residual for 1980. Physically interpret or explain what this value means.

&nbsp;

# Willow Flycatcher Migration
[Yong and Finch (1997)](https://www.fs.fed.us/rmrs/publications/migration-willow-flycatcher-along-middle-rio-grande) hypothesized that larger Willow Flycatchers (*Empidonax traillii*) migrated up the Middle Rio Grande River earlier than small willow flycatchers. To test this hypothesis they captured flycatchers on several days during their migration and measured the wing length (mm; an index of overall body size) of each bird. They recorded the date that the bird was captured as a Julian date (days since Jan. 1). The results of their study are found in Flycatcher.csv ([data](https://raw.githubusercontent.com/droglenc/NCData/master/Flycatcher.csv), [meta](https://raw.githubusercontent.com/droglenc/NCData/master/Flycatcher_meta.txt)). Use these data to answer the questions below.

1. Construct a graphic that demonstrates the linear model fit.
1. Write the equation of the best-fit line.
1. Interpret the value of the slope (using the 95% confidence interval).
1. Interpret the value of the y-intercept (using the 95% confidence interval). Comment on whether this interpretation makes sense and why or why not?
1. Interpret the r<sup>2</sup> value (with a complete sentence).
1. Predict the wing length for birds on day 160. Show your answer using your calculator and a function in R.
1. Calculate the residual for day 149. Physically interpret or explain what this value means.
1. Predict the wing length for day 140. Comment on the validity of the prediction (with an explanation for your thoughts).

<!----
also could use old wheatears or ashland climate questions
--->
