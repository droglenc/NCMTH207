---
layout: page
title: Extracting Data from a Scatterplot
css: /css/modules.css
---

----

1. Save an image of the scatterplot as a PNG, JPG, or BMP file.
1. Load the `digitize` package with `library(digitize)`. [*If you have not done so previously, you may need to install the `digitize` package by selecting the `Packages` tab in the lower-right pane of RStudio, then the `Install` button, then type `digitize` in the ensuing dialog box, and press `Install`.*]*
1. Set the working directory to where the image file is located with `setwd()`.
1. Run `dat <- digitize("filename")` with `filename` replaced by the name of the image file (including the extension).
1. On the image in the plot window ...
    * Click on an obvious "lower" point on the x-axis.
    * Click on an obvious "higher" point on the x-axis.
    * Click on an obvious "lower" point on the y-axis.
    * Clikc on an obvious "higher" point on the y-axis.
1. You will then be prompted to enter the actual values (read these off the plot) for each of the four points that you clicked on. These are called "return values."
1. Then carefully click on each point on the plot.
1. After you have clicked on the last point either press the "Finish" button on the plot window or press the "ESC"ape key. The data are then saved into an object called `dat`.
1. Write the data in `dat` out to a file with `write.csv(data, "filename.csv", quote=FALSE, row.names=FALSE)` where `filename` is replaced with a name for your data file.
1. In the future, you can then load these data into R in the usual way (i.e., using `read.csv()`).
