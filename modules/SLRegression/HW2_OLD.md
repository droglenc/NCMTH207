---
layout: page
title: Homework 2
subtitle: Simple Linear Regression
css: "/css/modules.css"
---

----

<div class="alert alert-warning">
  <strong>Note</strong> Your answers to the questions below should follow the <a href="../../resources/hwformat" target="_blank">expectations for homework found here</a>. Due date is on the <a href="../../resources/Dates-Current" target="_blank">Dates page.</a>
</div>

----

## Male-Female Birth Ratio
<img src="../zimgs/boy-girl-infants.jpg" alt="Boy and Girl Infants" class="img-right">
[Davis *et al.* (1998)](https://www.researchgate.net/publication/51325887_Reduced_Ratio_of_Male_to_Female_Births_in_Several_Industrial_Countries_A_Sentinel_Health_Indicator){:target="_blank"} observed a decline in the ratio of male to female births in several industrialized countries and explored whether that result was an indicator of larger health issues. The data below are the proportion of male births (PropMale) for the United States. Use these data to answer the questions further below. [*Note: The data are wrapped onto multiple lines simply to save space. Carefully check that your data entry is correct.*]

<pre>
Year:       1970   1971   1972   1973   1974   1975   1976
PropMale: 0.5134 0.5126 0.5125 0.5128 0.5133 0.5132 0.5128

Year:       1977   1978   1979   1980   1981   1982   1983
PropMale: 0.5128 0.5129 0.5127 0.5129 0.5126 0.5123 0.5127

Year:       1984   1985   1986   1987   1988   1989   1990
PropMale: 0.5122 0.5126 0.5122 0.5120 0.5121 0.5120 0.5120
</pre>

1. Is there evidence for a significant statistical change in the proportion of male births in the U.S. over the study period?
1. At what average annual rate (i.e., how much per year) did the proportion of male births change? [*Be specific about the direction of change.*]
1. Explain why the p-value for the slope is so small even though the value of the estimated slope is such a small number [i.e., how is it possible that such a small value for the slope can be considered to be different from zero?].

----

## Health of Black Wheatears
<img src="../zimgs/black-wheater.jpg" alt="Black Wheater" class="img-right">
[Black Wheatears (*Oenanthe leucura*)](https://en.wikipedia.org/wiki/Black_wheatear){:target="_blank"} are small birds found in Spain and Morocco. Male Black Wheatears demonstrate an exaggerated sexual display by carrying many heavy stones to nesting cavities. [Soler *et al.* (1999)](https://beheco.oxfordjournals.org/content/10/3/281.full){:target="_blank"} studied whether carrying larger stones might be a signal of higher health status. To examine this, they measured the average stone mass (in g) carried for 21 male Black Wheatears.  In addition, they indexed the health of each bird by measuring their T-cell response, which reflects the bird's immune system strength (larger T-cell responses indicate a "healthier" bird).  Use the data below to answer the questions further below.

<pre>
Mean Stone Mass:  3.33  4.62  5.43  5.73  6.12  6.29  6.45
T-Cell Response: 0.252 0.263 0.251 0.251 0.183 0.213 0.332

Mean Stone Mass:  6.51  6.65  6.75  6.81  7.56  7.83  8.02
T-Cell Response: 0.203 0.252 0.342 0.471 0.431 0.312 0.304

Mean Stone Mass:  8.06  8.18  9.08  9.15  9.35  9.42  9.95
T-Cell Response: 0.370 0.381 0.430 0.430 0.213 0.508 0.411
</pre>

1. Is there a significant relationship between the mass of carried stones and the mean T-cell response of the birds?  If so, specifically describe that relationship (with appropriate interval)?
1. Predict (with appropriate interval) the mean T-Cell response for birds that carried a mean stone mass of 5 g.
1. Predict (with appropriate interval) the T-Cell response for a bird that carried a mean stone mass of 5 g.
1. Explain why your answer to (2) is different from your answer to (3) -- be specific.

----
