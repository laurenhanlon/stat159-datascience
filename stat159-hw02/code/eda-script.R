# Getting the data

advertising <- read.table('../data/Advertising.csv', header=TRUE, sep=',')

# Summary statistics for TV and Sales
tv_sales = c('TV', 'Sales')
subset = advertising[tv_sales]

s <- summary(subset)
capture.output(s, file = "../data/eda-output.txt")

# Histograms

## TV
pdf('../images/histogram-tv.pdf')
hist(advertising$TV, xlab='TV (in thousands)', breaks=20, main='TV Histogram', col='blue', ylim=c(0, 20))
dev.off()

png('../images/histogram-tv.png')
hist(advertising$TV, xlab='TV (in thousands)', breaks=20, main='TV Histogram', col='blue', ylim=c(0, 20))
dev.off()

## Sales
pdf('../images/histogram-sales.pdf')
hist(advertising$Sales, xlab='Sales (in thousands)', breaks=15, main='Sales Histogram', col='lightblue', xlim=c(0,30), ylim=c(0, 40))
dev.off()

png('../images/histogram-sales.png')
hist(advertising$Sales, xlab='Sales (in thousands)', breaks=15, main='Sales Histogram', col='lightblue', xlim=c(0,30), ylim=c(0, 40))
dev.off()
