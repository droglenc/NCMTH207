---
layout: page
title: Exercise
subtitle: One-Way ANOVA Assumptions
css: "/css/modules.css"
---

<div class="alert alert-warning">
  <strong>Note</strong> Your answers to the questions below should follow the <a href="../resources/hwformat" target="_blank">expectations for homework found here</a>. Due date is on the <a href="../../resources/Dates-Current" target="_blank">Dates page.</a>
</div>

----

```{r TNAnalysis, echo=FALSE, results='hide', fig.show='hide'}
MB <- read.csv("http://derekogle.com/NCMTH207/modules/readings/data/MooseBrowse.csv")
MB$treat <- factor(MB$treat,levels=c("Control","Fertilized","Clipped","Shaded"))
lm.mb <- lm(height~treat,data=MB)
assumptionCheck(lm.mb)
anova(lm.mb)
mc.mb <- emmeans(lm.mb,specs=pairwise~treat)
( mcsum.mb <- summary(mc.mb,infer=TRUE) )
```
```{r echo=FALSE}
p.lev.mb <- levenesTest(lm.mb)$"Pr(>F)"[1]
p.ad.mb <- adTest(lm.mb$residuals)$p.value
p.out.mb <- outlierTest(lm.mb)$bonf.p[[1]]
p.aov.mb <- anova(lm.mb)$"Pr(>F)"[1]
mns.mb <- summary(mc.mb,infer=TRUE)$emmeans
dmns.mb <- summary(mc.mb,infer=TRUE)$contrasts
```

The availability of resources for growth is believed to have a substantial impact on the chemical defense of plants against herbivores. However, the means by which resource availability affects different plant traits, and the way in which these factors in turn affect diet selection by herbivores are not well understood. [Edenius (1993)](https://esajournals.onlinelibrary.wiley.com/doi/abs/10.2307/1939579) addressed the relation between plant biomass, morphology, and tissue nutritional quality and browsing by moose (*Alces alces*) on Scots pine (*Pinus sylvestris*).

In one part of this study, Edenius examined the effect of three different experimental treatments related to nutrient and light availability on various characteristics of the Scots pine. In this example, the characteristic of the Scots pine that will be examined is tree height (measured in cm). The four treatments were labeled as "Fertilized", "Clipped", "Shaded", and "Control."  In the fertilized treatment, 60 g of nitrogen (ammonium nitrate) was applied to the soil within a 2-m radius of each tree at the beginning of the growing season. In the clipped treatment, all shoots produced in the previous growing year were removed. In the shaded treatment, the top- and lateral-most branches were covered with a shade cloth that reduced the light intensity by 50% in the 400-700 nm wavelengths. Finally, a fourth group of trees were maintained without any manipulation as a control.

A total of 140 unbrowsed trees that were approximately 1.4 m in height were specifically selected for use in the experiment. The trees were randomly allocated to the four treatments such that each group had 35 trees in it. Selected trees were separated by at least 5 m to avoid interference among individual trees and, thus, treatment groups. Trees were allowed to grow for one full growing season and then were measured for height. Edenius, wanted to determine if there was a significantly different mean height among the treatments. Thus,

\[ \begin{split}
   H_{0}&: \mu_{Fert} = \mu_{Clip} = \mu_{Shade} = \mu_{Control} \\
   H_{A}&:\text{``At least one pair of means is different''}
\end{split} \]

where &mu; is the mean height of the trees and the subscripts represent the treatment groups.

The random allocation of trees to the treatments and the realization that applying the treatment to any one tree has no affect on any other tree implies that there is independence both within a treatment and among treatments. Variances among the treatments may be non-constant (Levene's \Sexpr{kPvalue(mb.lev[1,"Pr(>F)"],digits=3)}), though the residual plot (\figref{fig:OWAEx2Plot2}-Left) does not indicate any extreme differences in variances and no transformation (see \sectref{sect:AOVTransformations}) corrected this problem. The residuals from the initial model fit appear to be approximately normal (Anderson-Darling \Sexpr{kPvalue(mb.ad$p.value,digits=3)}). None of the individuals appeared to be a significant outlier (outlier test \Sexpr{kPvalue(mb.out$bonf.p,digits=3)}). The one-way ANOVA analysis will continue as the assumptions either appear to be met, are not grossly unmet, or no reasonable solution to the problems exists.

\begin{figure}[h]
  \centering
  \includegraphics[width=5in]{FigsStatic/OWAEx2Plot2.jpg}
  \caption{Boxplot (Left) and histogram (Right) of residuals from the initial fit of the one-way ANOVA model to the Scots pines heights at each treatment level.}\label{fig:OWAEx2Plot2}
\end{figure}

There appears to be a significant difference in mean tree growth among the four treatments (\Sexpr{kPvalue(anova(mb.lm)[1,"Pr(>F)"],digits=3)}; \tabref{tab:OWAEx2ANOVA}). Plots for each treatment group indicate that mean height for the clipped treatment is lower than mean height in all other treatments, mean height in the fertilized treatment may be greater than mean height in all other treatments, and mean heights in the shaded and control groups do not differ \figrefp{fig:OWAEx2Means1}.

\begin{table}[h]
  \centering
  \caption{ANOVA results for tree growth for four treatments.}\label{tab:OWAEx2ANOVA}
\vspace{-12pt}
<<echo=FALSE, background='white'>>=
kANOVA(mb.lm)
@
\end{table}

<<OWAEx2Means1, echo=FALSE, fig.cap="Mean Scots pine height with 95\\% confidence interval for each treatment group from the initial fit of the one-way ANOVA model.", fig.width=5, out.width='.6\\linewidth'>>=
fitPlot(mb.lm,xlab="Treatment",ylab="Tree Height (cm)")
@

The clipped treatment resulted in significantly lower growth of Scots pine. The fertilized treatment may have produced slightly taller trees than the control group.

It can be concluded that the different treatments caused the differences in tree growth because the individual trees were randomly allocated to treatment groups and all other variables were controlled. However, the inferences cannot be extended to a general population of trees because the 140 trees used in the experiment were not randomly chosen from the population of trees.
&nbsp;

This example is a follow-up analysis to the second example in \sectref{sect:OWAEx2A}. Only those sections that would be modified to include multiple comparison results are shown here. Thus, a full analysis would be a combination of what was shown in \sectref{sect:OWAEx2A} and what is shown here.

\vspace{-6pt}
\subsubsection*{Data Collection}
\vspace{-12pt}
One-way ANOVA will be used to identify if significant differences exist among the means of the treatment groups. If a significant difference is identified, then Tukey's HSD method will be used to determine which pairs of treatment means are different.\footnote{Dunnett's method is not used here, even though there is a control group, because interest is in comparing all pairs of treatments, not just all pairs of treatments with the control group.}

\vspace{-6pt}
\subsubsection*{Results}
\vspace{-12pt}
There appears to be a significant difference in mean tree growth among the four treatments (\Sexpr{kPvalue(anova(mb.lm)[1,"Pr(>F)"],digits=3)}; \tabref{tab:OWAEx2ANOVA}). Trees in the clipped treatment are significantly shorter then trees in the other three treatments \tabrefp{tab:OWAEx2HSD}. The trees in the shaded treatment are shorter than trees in the fertilized treatment but statistically similar to trees in the control treatment \tabrefp{tab:OWAEx2HSD}. Trees in the control treatment are statistically similar to trees in both the shaded and fertilized treatments \tabrefp{tab:OWAEx2HSD}.\footnote{This result for the shaded, control, and fertilized treatments is a fairly common occurrence - i.e., the middle of the ordered treatments is statistically similar to both the treatment just bigger and the treatment just smaller, but the two treatments on the ends are statistical different. So, sometimes the results lead to confusing but ultimately correct statements such as --- ``the control treatment is equal to both the shaded and fertilized treatments but the shaded and fertilized treatments are different.''}  The results of this analysis are summarized in \figref{fig:OWAEx2Means2}.

\begin{table}[h]
  \centering
  \caption{Tukey's adjusted confidence intervals for mean tree growth for four treatments. Note that the output was modified to save space.}\label{tab:OWAEx2HSD}
\vspace{-12pt}
<<echo=FALSE, background='white'>>=
kGLHT(summary(glht(mb.lm, mcp(treat="Tukey"))))
@
\end{table}

<<OWAEx2Means2, echo=FALSE, fig.cap="Plot of group means versus treatment levels with means that are statistically the same marked with the same letter.",fig.width=5,out.width='.6\\linewidth'>>=
fitPlot(mb.lm,xlab="Treatment",ylab="Tree Height (cm)")
addSigLetters(mb.lm,c("bc","c","a","b"),pos=c(2,4,2,4))
@

\vspace{-6pt}
\subsubsection*{Appendix -- R commands}
\vspace{-12pt}
\begin{Verbatim}[formatcom=\color{red},xleftmargin=5mm,commandchars=\\\{\}]
mb.mc <- glht(mb.lm, mcp(treat="Tukey"))
summary(mb.mc)
confint(mb.mc)
fitPlot(mb.lm,xlab="Treatment",ylab="Tree Height (cm)")
addSigLetters(mb.lm,lets=c("bc","c","a","b"),pos=c(2,4,2,4))
\end{Verbatim}

