---
layout: page
title: Exercise
subtitle: 1-Way ANOVA
css: "/css/modules.css"
---

----

<div class="alert alert-warning">
  <strong>Note</strong> Your answers to the questions below should follow the <a href="../../resources/hwformat" target="_blank">expectations for homework found here</a>. Due date is on the <a href="../../resources/Dates-Current" target="_blank">Dates page.</a>
</div>

----

## Temperature and Turtle Hatchings I
<img src="../zimgs/sea_turtles.jpg" alt="Sea Turtles" class="img-right">

It is widely reported that climate change is having a profound impact on the functioning of ecosystems. Species abundances and distributions are shifting due to the changing environment. The breeding phenology of migratory species is also changing in response to environmental change. Furthermore, climate change-induced habitat loss puts species at risk of extinction when no alternative adequate habitat is available. The risk of climate change is particularly pronounced for marine ectotherms as they conform more closely to thermal tolerance limits than terrestrial ecotherms and, in particular, species whose biology and phenology are intimately linked to temperature.

To examine the effect of sand temperature on the phenology of sea turtules, researchers placed individual turtle eggs in individual containers of sand for which the temperature could be controlled. Four temperatures were used with the specific temparatured used for each container randomly determined. The researchers then recorded the number of days for the egg in each container to hatch. The results of their study are below.

<pre>
15C:  37  43  45  54  56  65  62  73  74  75
20C:  30  31  34  35  35  47  53  54  63  64
25C:  21  23  48  52  52  54  54  61  62  65
30C:  13  16  19  11  12  18  21  23  29  39
</pre>

Load these data into R and answer the questions below. [*Note: If you enter the temperatures with out the "C" (so just numbers) then you will need to use `factor()` to force R to treat the temperatures as categories.*]

1. Thoroughly assess the independence assumption.
1. Thoroughly (*use all possible options*) test the equal variances assumption.
1. Thoroughly (*use all possible options*) test the normality assumption.
1. Thoroughly (*use all possible options*) test the outliers assumption.

----
