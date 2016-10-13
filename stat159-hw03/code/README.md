## Code

### Scripts

`session-info-script.R` lists the required packages needed for this project, including `ggplot2`, `gclus`, `stargazer` and `testthat`. It's output is saved in `session-info.txt` in the main directory.

`eda-script.R` first uploads the data from Advertising.csv. It produces visual respresntations of the frequencies of Sales, TV, Radio and Newspaper in the form of a histogram, then saves these histograms in the _images_ folder in png format. A scatterplot matrix of the correlations between each variable is produced and saved in the _images_ folder. It also produces a table of summary statistics for the data as well as a correlation matrix. These tables are saved in the _data_ folder as `eda-output.txt` and the correlation matrix is also saved in `correlation-matrix.RData`. 

`regression-script.R` first uploads the data from Advertising.csv. It uses the `lm` package in R to first produce simple regression models between each predictor and the response. It then creates a multivariable regression model as well as correlated residual, scale and QQ plots. All of this data is saved in `regression.RData` and all png images are saved in the _images_ folder. 

### Functions

`regression-functions.R` contains functions to produe the residual sum of squares, total sum of squres, r-squared statistic, f-statistic as well as the residual standard error.

### Tests

`test-regression.R`contains tests using the `testthat` package for each function in `regression-functions.R`.