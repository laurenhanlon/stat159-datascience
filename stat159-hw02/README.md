## Simple Linear Regression 

### Author

Lauren Hanlon

## Goal

My goal for this project was to conduct a simple analysis using the [Advertising.csv](http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv) dataset to look at sales across various products as a function of advertising budget, specifically for TV media spend.

### File Structure

<pre><code>stat159-fall2016-project1/
.gitignore
README.md
Makefile
code/
 README.md
 eda-script.R
 regression-script.R
data/
 README.md
 Advertising.csv
 eda-output.txt
 regression.RData
images/
 histogram-sales.pdf
 histogram-sales.png
 histogram-tv.pdf
 histogram-tv.png
 scatterplot-tv-sales.pdf
 scatterplot-tv-sales.png
report/
 report.Rmd
 report.pdf
</code></pre>

### How to reproduce this project 

1. Clone this github repository
2. Within the directory ./stat159-hw02, in the command line type `make all`. This will download all the data, run the R scripts to create the images, save this data then use it within the Rmd file to produce the final report.

### Resources Used
I used the data and followed the regresion analysis from _An Introduction to Statistical Learning_ by Gareth James, Daniela Witten, Trevor Hastie and Robert Tibshirani.