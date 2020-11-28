---
layout: page
title: Homework Format
css: /css/modules.css
---

## Getting Started with GradeScope
All assignments in this course will be turned in on GradeScope. You should have received an e-mail from me inviting you to activate a GradeScope account and join this class. Make sure to follow the directions in that e-mail. If you do not have that e-mail you can also access Gradescope from the [quick link on the class homepage](../){:target="_blank"} (you will need to email me for the access code (as [described here](https://www.gradescope.com/#help-center-item-student-adding-a-course){:target="_blank"})). Let me know if you have any questions. Gradescope also provides a [list of FAQs for students here](https://help.gradescope.com/category/cyk4ij2dwi-student-workflow){:target="_blank"}.

Assignments **must** be converted to a PDF for uploading to Gradescope. Most of the assignments in this course will require some work to be completed in R. Notebooks in RStudio are an efficient way to enter R code, show results of R code, write answers to assignment questions, and compile all of that to a PDF that can be handed in.

For class assignments, start by downloading [this template](https://raw.githubusercontent.com/droglenc/NCMTH107/gh-pages/resources/FAQs/R%20Assignment%20Template.Rmd) (right-click, don't change the name) to a folder where you plan to store all of your class-related work. Then open the template in RStudio and change the Author in line 3 to your name. Save the template with this change. Every time you start an assignment you should open this template file and follow the directions below.

Open your template file in RStudio and immediately save it (File .. Save As) with a different name (e.g., "Assignment1" ... make sure that the name does not have a "dot" in it). Then edit the Title in line 2 to something that represents the assignment (e.g., "Linear Regression 1"). Do not change anything else in the first 21 lines.

![Notebook Top](http://derekogle.com/NCMTH107/resources/FAQs/Figs/Notebook_TopLines.JPG)

<br>

# RStudio Notebook
## Creating Sections
Some assignments will have questions in separate sections (identified with a section heading). Your answers to the assignments should be shown under section headings with the same name as on the assignment. Section headings are created by preceding the section heading name with a hashtag. The template has several section headings started that look like this

```
# EDIT THIS WITH FIRST SECTION HEADING TEXT
```

You should change this text to create the section heading that you want; e.g., 

```
# Arctic Penguins
```

## Writing Text for Your Answers
Sentences can be included by simply typing the text at the beginning of any line. A new paragraph is created by pressing return twice so that there is a blank line between paragraphs.

## Numbered Lists for Your Answers
A numbered item list is created by starting a line with "1." followed by what you want after the number (e.g., your answer). If there are no blank lines between consecutive "1." items then RStudio will automatically iterate the number when the document is compiled. For example, typing this will produce the result further below ...

![Notebook Numbered List](http://derekogle.com/NCMTH107/resources/FAQs/Figs/Notebook_NumberedList.JPG)

A univariate EDA for penguin body mass is

1. Shape ... right-skewed
1. Outlier ... None
1. Center ... Median of 4050 g
1. Dispersion ... IQR from Q1 of 3550 g to Q3 of 4750 g.
1. Why? ... I used the median and IQR because of the skewed shape of the data.

<br>

# Including R Code and Results
My preference is to include a subsection of R code and results **AFTER** you have answered the questions. You can create a subsection for this code by starting a line with "#### R Code and Results".

All R code is entered into a "code chunk." Code chunks begin with three backticks followed by curly brackets around "r" (see line 33 below) and end with three backticks (see line 36 below). Between the beginning and ending of the code chunk can be any viable R code. For example,

![Notebook Code Chunk](http://derekogle.com/NCMTH107/resources/FAQs/Figs/Notebook_Code1.JPG)

In RStudio, each code chunk will have three "icons" in the upper-right portion of the gray chunk (see above). Pressing the right-most icon (right-pointing green arrow) will run the code in the current chunk and show the results immediately below the chunk. For example,

![Notebook Code Chunk Run](http://derekogle.com/NCMTH107/resources/FAQs/Figs/Notebook_Code1Run.JPG)

If the code in this chunk depends on code in previous chunks being run then press the middle icon (gray down arrow pointing to a green horizontal line) to run all code in chunks above the current chunk. If the code in previous chunks had already been run then this is unnecessary.

<br>

# Compiling to MSWord
Once you are comfortable that your R code runs without error and that you have answered all questions for the assignment, then you should compile your Notebook to a MSWord document. To compile the Notebook to MSWord, select the small arrow on the icon that either says "Preview" or "Knit" and select "Knit to Word". If you get an error related to the name of your Notebook file, then simply select "Knit to Word" a second time. If the document does not produce an MSWord document (this make take several seconds) then there may be an error in your R code.

![Notebook Knit to Word](http://derekogle.com/NCMTH107/resources/FAQs/Figs/Notebook_KnitWord.JPG)

<br>

# Creating a PDF
A PDF can be created from the MSWord document so that your assignment can be handed in via GradeScope. Some assignments for this course may require you to perform calculations that are more efficiently done by hand than by typing into the computer (e.g., some long equations). In these instances, you could take a picture of your handwork and the paste it into the end of your MSWord file. If doing this, make sure you refer to this work when answering the questions in the RStudio notebook (e.g., answer with "See hand calculations at the end of the document.")

<br>
<br>

# Tips and Tricks
## Data Files
Many of the assignments will require you to load a data file for analysis. The data file to be loaded SHOULD be **saved in the same directory as your Notebook file.**

## Vertical Spacing
If you would like to add some vertical spacing between parts of your notebook (e.g., between sections, between code and paragraphs, etc.) then add a "br" between less than and greater than signs (see below) with a blank line both above and below it where you want the vertical spacing. For example,

![Use of br](http://derekogle.com/NCMTH107/resources/FAQs/Figs/Notebook_UseOfBR.JPG)

## Code Chunk Custom Settings
Code chunks can have a variety of settings. The most important settings can be controlled through the left-most "gear" icon. My most common change here is to change the figure width to be smaller (to 3.5 inches wide) and, if you want the plot to be square, to change the figure height to the same value. For some plots with side-by-side graphs I will also make the figure width twice the the figure height. I may also "turn off" the warnings and messages, but I never do this immediately as I would like to see those first before deciding that I should "hide" them. Below shows the gear box for changing the figure width and how the code chunk and result is changed.

![Notebook Code Chunk Run](http://derekogle.com/NCMTH107/resources/FAQs/Figs/Notebook_Code2Run.JPG)

## Document Preview
The results of code chunks can be run as described above. However, an HTML version of the entire document can be viewed within RStudio. This is particularly useful as you are building your complete document. Compiling a completed document to MSWord (and then ultimately a PDF) is described in the next section.

Before previewing, I select the "gear" icon in the script window toolbar and change "Preview in Window" to "Preview in Viewer Pane."

![Notebook Preview Setting](http://derekogle.com/NCMTH107/resources/FAQs/Figs/Notebook_PreviewSetting.JPG)

I then select the small arrow on the icon to the left of the gear icon that will either say "Preview" or "Knit" and select "Preview HTML".

![Notebook Previewer](http://derekogle.com/NCMTH107/resources/FAQs/Figs/Notebook_Previewer.JPG)

RStudio will then run your script and, if there are no errors, show a preview of the document in the lower-right pane (which may expand to be just the right pane).

![Notebook Preview](http://derekogle.com/NCMTH107/resources/FAQs/Figs/Notebook_Preview.JPG)
