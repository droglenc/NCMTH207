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

## Iron and Mining
<img src="../zimgs/Iron_Mining.jpg" alt="Iron Mining" class="img-right">

Acid mine drainage is formed when water percolates into mines and oxidizes sulfide ores, generating sulfuric acid, which in turn mobilizes many different metals, including iron.  In coal mining districts of the northeast, iron oxide from acid mine drainage stains many streams a brilliant orange. Reclamation projects (including sealing mine shafts and re-contouring and re-vegetating open-pit mines) have been used to reduce the severity of acid mine drainage. In one study, researchers recorded iron concentrations (mg/L) in 120 unique streams in coal-mining districts of Ohio, grouped according to land use in their basins: unmined, reclaimed (mined and later reclaimed), and abandoned (mined but never reclaimed). For a frame of reference, federal drinking water standards for color and taste permit iron concentrations up to 0.3 mg/l in drinking water. Load **AcidMineDrainage.csv** ([download](https://raw.githubusercontent.com/droglenc/NCData/master/AcidMineDrainage.csv), [meta](https://github.com/droglenc/NCData/blob/master/AcidMineDrainage_meta.txt)) into R and answer the questions below. [*Note: please use* `factor()` *with* `levels=` *as shown in Section 1.1.3 of the first reading to change the order of groups to "Unmined" followed by "Reclaimed" and then "Abandoned".*]

1. Test the assumptions of a one-way ANOVA model.
1. If the assumptions are not met on the original scale then identify an appropriate transformation. Transform the variable(s) to this scale and test the assumptions again.
1. Test if the mean (transformed?) iron levels differed among the mine types.
1. If a difference in means among mine types was identified, then use an appropriate method to determine which of the mine types differed significantly. Provide a figure that demonstrates the differences that your found (or did not find).
1. Provide an appropriate statement that describes the difference in means (with a CI) on the **original scale** (not the transformed scale) for the two mine types that are **most** different. [*Hint: You may need to back-transform the results.*]
1. Provide an overall conclusion about the effect of the different site types on mean levels of iron in the streams at those sites.

----
