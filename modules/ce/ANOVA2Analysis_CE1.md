---
layout: page
title: Exercise
subtitle: Two-Way ANOVA Analysis
css: "/css/modules.css"
---

<div class="alert alert-warning">
  <strong>Note</strong> Your answers to the questions below should follow the <a href="../resources/hwformat" target="_blank">expectations for homework found here</a>. Due date is on the <a href="../../resources/Dates-Current" target="_blank">Dates page.</a>
</div>

----

## Ruffe Weight
Ruffe (*Gymnocephalus cernuus*) are an invasive fish to Lake Superior. After first being detected in the Duluth-Superior Harbor in the late 1980s, there was considerable concern about the species negatively impacting native fishes and ultimately moving to other areas of Lake Superior. The U.S. Fish and Wildlife Service conducted reconnaissance sampling at the mouths of tributaries along the south shore of Lake Superior during the 1990s. One of their sampling locations was the Flag River, near Port Wing, WI. Biologists regularly monitor the weight of fish as a fish's weight often declines as intra-specific (i.e., within the same species) competition increases. Thus, a decline in mean weight over time might indicate an increased density of Ruffe.

Towards this end, biologists collected ruffe from the Flag River every other week during the summer months over three years. As Ruffe are an invasive species, each specimen was sacrificed upon capture. For each specimen, the biologists recorded the weights (g) and sex (as male, female, or unknown based on macroscopic examination of sexual organs). Sex was recorded because weight is sexually dimorphic (i.e., differs by sex) for many fish.

These data were recorded in [Ruffe_Flag.csv](data/Ruffe_Flag.csv). I strongly urge you to remove the "unknown" sex fish from the data frame as they are generally fish born in that year and do not yet compete directly with known sex fish (*[this](../resources/R_HowTo_Filter.html){:target="_blank"} may be helpful*). In addition, year of capture should be converted to a factor as it was recorded as a number.

Use these data (with the suggested modifications) to produce results for each question below.

1. Is this study "balanced"?
1. Comment on the independence assumption.
1. Thoroughly assess all assumptions of a Two-Way ANOVA that can be tested with data.
1. If needed, find an adequate transformation for these data and show that the assumptions are met on this scale. [*Note that no transformation is perfect for these data ... use the common transformation where the most critical assumptions are met.*]
1. Assess the effects (main and interaction) as appropriate.
1. Which level or group means (as appropriate) are significantly different?
1. Compare the level or group means that are MOST different (*on the transformed scale*).
1. Compare the level or group means that are MOST different (*on the back-transformed scale*).
1. What important value is in the confidence interval for the difference in transformed means between females in 1997 and males in 1997? What does this suggest about the two groups? Explain.
1. What important value is in the confidence interval for the back-transformed difference in means between females in 1997 and males in 1997? What does this suggest about the two groups? Explain.
1. Explain mathematically how your last two answers are related.
1. Construct a plot of treatment means with 95% confidence intervals.
1. What is the overall conclusion(s) of this study?
