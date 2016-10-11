## Code

### Packages 

To run these scripts the packages you will need to install are `gclus`, `ggplot2` and `stargazer`. To install these packages run the lines

`install.packages('gclus')`

`install.packages('ggplot2')`

`install.packages('stargazer')`


### Interacting with the scripts

`eda-script.R` first uploads the data from Advertising.csv. It produces visual respresntations of the frequencies of Sales, TV, Radio and Newspaper in the form of a histogram, then saves these histograms in the _images_ folder in png format. A scatterplot matrix of the correlations between each variable is produced and saved in the _images_ folder. It also produces a table of summary statistics for the data as well as a correlation matrix. These tables are saved in the _data_ folder as `eda-output.txt` and the correlation matrix is also saved in `correlation-matrix.RData`. 

`regression-script.R` 

need to update: first uploads the data from Advertising.csv. It uses the `lm` package in R to produce a simple linear regression of Sales ~ TV. It then creates a scatterplot of Sales versus TV, and includes their regression line. The scatterplot uses `ggplot2`. This scatterplot is saved in the _images_ folder in the format of pdf and png files. The output of the regression and scatterplot are saved in the _data_ folder as `regression.RData`.

`session-info-script.R`

### Interacting with functions

`regression-functions.R`

### Interacting with tests
`test-regression.R`


### Testing

`test-that.R`

