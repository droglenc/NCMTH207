---
layout: page
title: Exercise
subtitle: IVR Summary
css: "/css/modules.css"
---

<div class="alert alert-warning">
  <strong>Note</strong> Your answers to the questions below should follow the <a href="../resources/hwformat" target="_blank">expectations for homework found here</a>. Due date is on the <a href="../../resources/Dates-Current" target="_blank">Dates page.</a>
</div>

----

# Bat Morphology
<img src="../zimgs/bat.jpg" alt="Decoration" class="img-right">
Biologists recognize that brains perform different sensory operations for different activities of the animal. As such there is a thought that the size of brains, or the size of particular portions of brains, may differ depending on the primary foraging activity of the animal. For example, senses that are most useful for bats that are insectivorous may be quite different than senses that are most useful for nectar-feeding bats and, as such, bats in these two groups may have differently sized brains.

To assess this hypothesis, [Hutcheon *et al.* (2002)](http://biology.ucr.edu/people/faculty/Garland/HutcEA02.pdf) recorded the volume of three brain regions ([main olfactory bulb](https://en.wikipedia.org/wiki/Olfactory_bulb), [hippocampus](https://en.wikipedia.org/wiki/Hippocampus), [auditory nuclei](https://en.wikipedia.org/wiki/Cochlear_nucleus)) for 63 species of bats ([Chiroptera](https://en.wikipedia.org/wiki/Bat)). They were primarily interested in determining if the volume of brain regions differed among broad foraging categories ([phytophagous](https://www.merriam-webster.com/dictionary/phytophagous), gleaner, and aerial insectivore). However species of bats differ in overall size and the size of the brain is likely related to overall size (i.e., larger bats likely have larger brains). Thus, they also recorded the body weight for each species of bat so that it could be included in a model as a covariate and, thus, effectively "accounted for" when considering brain size.

The data were recorded from a literature review of papers published with this information for each species. The data are in Batmorph2.csv ([data](https://raw.githubusercontent.com/droglenc/NCData/master/Batmorph2.csv), [meta](https://github.com/droglenc/NCData/blob/master/Batmorph2_meta.txt)). When using these data for this exercise note that two **"vampire" species should be excluded from the analysis** (i.e., n=2 is too small). [*Note: [see this for help](../resources/R_HowTo_Filter.html#eliminating-one-group){:target="_blank"}.*]

Use these data to determine if the mean volume of the **main olfactory bulb** differs among the three foraging groups adjusted for the body weight of the bats. Please follow the workflow and the tenor of the example analyses in the reading. [*Take note of the bold words in the description above. Do NOT use the overall brain volume or the volume of any other region of the brain in your analyses.*]
