advertising_full <- read.table('../../data/Advertising.csv', header=TRUE, sep=',')
advertising <- advertising_full[c('TV', 'Sales', 'Radio', 'Newspaper')]
mr <- lm(Sales ~ TV + Newspaper + Radio, data=advertising)
#sales = β0 + β1 × TV + β2 × radio + β3 × newspaper + ε.

## Regression Functions

#' @title Residusummal Sum Squares
#' @param x = lm()
#' @return RSS

residual_sum_squares <- function(x) {
  return(sum(x$residuals^2))
}

## RSS measures the amount of variability that is left unexplained after performing the regrssion

#' @title Total Sum Squares
#' @param x = lm()
#' @return TSS

total_sum_squares <- function(x) {
  y = residuals(x) + fitted(x)
  return(sum((y - mean(y))^2))
}

## TSS measures the total variance in the response Y, and can be thought of as the amount of variability inherent in the response before the regression is performed

#' @title R-squared
#' @param x = lm()
#' @return R^2

r_squared <- function(x) {
  y = residuals(x) + fitted(x)
  TSS = sum((y - mean(y))^2)
  RSS = sum(residuals(x)^2)
  return(1 - RSS/TSS)
}

# Works for r_squared(lm(Sales ~ TV, data=advertising)) = 0.6118751
# Works for r_squared(mr) = 0.8972106
## R^2 statistic provides an alternate measure of fit. It takes the form of a _proportion_-the proportion of variance explained as a value beween 0 and 1 and is indepdent of the scale of Y
## Measures the _proportion of variability in Y that can be explained using X_
## An R squared statistic that is close to 1 indicates that a large proportion of the variability in the response has been explained by the regression
## A number near 0 indicates that the regression did not explain much of the variability in the response


#' @title F-statistic
#' @param x = lm()
#' @return F-statistic

f_statistic <- function(x) {
  y = residuals(x)+fitted(x)
  tss = sum((y-mean(y))^2)
  rss = sum(residuals(x)^2)
  p = length(coef(x)) - 1
  return(((tss-rss) / p)/(rss / (x$df.residual - p + 1)))
}

# Works for f_statistic(lm(Sales ~ TV, data=advertising)) = 312.145
# Works for f_statistic(mr) = 564.4516
## In other words, the large F-statistic suggests that at least one of the advertising media must be related to sales.

#' @title Residual Standard Error
#' @param x = lm()
#' @return RSE

residual_std_error <- function(x) {
  return(sqrt( sum(residuals(x)^2) / x$df.residual))
}

# Works for residual_std_error(lm(Sales ~ TV, data=advertising)) = 3.258656
# Works for residual_std_error(mr) = 1.68551
#In other words, actual sales in each market deviate from the true regression line by approximately 3,260 units, on average.
#In the advertising data set, the mean value of sales over all markets is approximately 14,000 units, and so the percentage error is 3,260/14,000 = 23 %.
### The RSE is considered a measure of the _lack of fit_ of the model
### Absolute measure of lack of fit of model

