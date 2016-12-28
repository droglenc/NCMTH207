---
layout: page
title: Homework 4
subtitle: 1-Way ANOVA
css: "/css/modules.css"
---

----

<div class="alert alert-warning">
  <strong>Note</strong> Your answers to the questions below should follow the <a href="../../resources/hwformat" target="_blank">expectations for homework found here</a>.
</div>

----

## Crayfish and Periphyton Abundance
<img src="../zimgs/snail-grazing.jpg" alt="Snail grazing" class="img-right">

[Luttenton *et al.* (1998)](http://booksandjournals.brillonline.com/content/journals/10.1163/156854098x00860){:target="_blank"} tested the implications of littoral zone food web changes for periphyton abundance by comparing algal removal rates of three *Orconectes* crayfishes and a grazing snail (*Amnicola* spp.) in a laboratory experiment.  Periphyton communities were established on unglazed clay tiles incubated in grazer-free enclosures in the littoral zone of Carrol Lake, Wisconsin.  In the laboratory, tiles were placed in individual arenas that were randomly assigned to one of four grazing treatments or a control treatment (no crayfish or snails).  After 96 h, total algal biovolume (&mu;m<sup>3</sup>/cm<sup>2</sup>) was measured on seven replicates in each treatment.  The three crayfishes (with abbreviations) tested were *Orconectes rusticus* (Or), *O. virilis* (Ov), and *O. propinquus* (Op).  The observed total algal biovolumes are shown below. Load these data into R and answer the questions below. [*Note: you may need to change the default order of groups from being alphabetical. Use* `factor()` *with* `levels=` *as shown in Section 1.1.3 of the first reading.*]

<pre>
Control: 16.7, 59.2, 30.2, 20.2, 17.6, 24.3, 38.5
Op:      10.0, 10.9, 10.2, 14.7, 16.5,  8.8,  9.4 
Or:      26.3,  6.5, 14.6, 16.8, 22.4, 11.8, 12.4
Ov:       3.3,  8.5,  5.1,  6.4, 13.3,  8.1, 16.4
Am:       8.6, 15.0,  5.5,  4.3, 10.7,  6.2, 11.8
</pre>

1. Test the assumptions of a one-way ANOVA model.
1. If the assumptions are not met on the original scale then identify an appropriate transformation.  Transform the variable(s) to this scale and re-test the assumptions.
1. Test if the mean (transformed?) algal biovolumes differed among the groups.
1. If a difference among means was identified, then use an appropriate method to determine which of the grazers differed significantly **from the control treatment**.
1. Provide, for the grazer that is **most** different from the control treatment, an appropriate statement describing the difference between the means on the **original scale** (not the transformed scale). [*Hint: You may need to back-transform the results*]
      
----
