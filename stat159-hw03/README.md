## Simple Linear Regression 

### Author

Lauren Hanlon

## Goal

My goal for this project was to conduct a multivariable analysis using the [Advertising.csv](http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv) dataset to look at sales across various products as a function of advertising budget for TV, radio and newspaper media spend.

### File Structure

<pre><code>stat159-fall2016-project1/
.gitignore
README.md
Makefile
License
session-info.txt
code/
 README.md
 functions/
  regression-functions.R
 scripts/
  eda-script.R
  regression-script.R
  session-info-script.R
 tests/
  test-regression.R
data/
 README.md
 Advertising.csv
 correlation-matrix.RData
 eda-output.txt
 regression.RData
images/
 histogram-newspaper.png
 histogram-radio.png
 histogram-sales.png
 histogram-tv.png
 normal-qq-plot.png
 residual-plot.png
 scale-location.png
 scatterplot-matrix.png
 scatterplot-newspaper-sales.png
 scatterplot-radio-sales.png
 scatterplot-tv-sales.png
report/
 report.Rmd
 report.pdf
</code></pre>

### How to reproduce this project 

1. Clone this github repository
2. Within the directory `./stat159-hw02`, in the command line type `make all`. This will download all the data, run the R scripts to create the images, save this data then use it within the Rmd file to produce the final report.

### Resources Used
I used the data and followed the regresion analysis from _An Introduction to Statistical Learning_ by Gareth James, Daniela Witten, Trevor Hastie and Robert Tibshirani.

### License

<a rel="license" href="http://creativecommons.org/licenses/by/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/4.0/">Creative Commons Attribution 4.0 International License</a>.
