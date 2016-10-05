## Scripts

### Packages 

To run these scripts the only package you will need to install is `ggplot2`. To install this package simply uncomment the line

`install.packages('ggplot2')`

or run this line within your own R window.

### Interacting with the scripts

`eda-script.R` first uploads the data from Advertising.csv. It then produces a table of summary statistics for the data. This table is saved in the _data_ folder as `eda-output.txt`. It also produces visual representations of the frequency of both TV and Sales from the data in the form of a histogram, then saves these histograms in the _images_ folder in the format of pdf and png files.

`regression-script.R` first uploads the data from Advertising.csv. It uses the `lm` package in R to produce a simple linear regression of Sales ~ TV. It then creates a scatterplot of Sales versus TV, and includes their regression line. The scatterplot uses `ggplot2`. This scatterplot is saved in the _images_ folder in the format of pdf and png files. The output of the regression and scatterplot are saved in the _data_ folder as `regression.RData`.