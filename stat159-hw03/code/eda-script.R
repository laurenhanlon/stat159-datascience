# Getting the data

advertising <- read.table('../data/Advertising.csv', header=TRUE, sep=',')

# Summary statistics for TV and Sales
s <- summary(advertising)
capture.output(s, file = "../data/eda-output.txt")

# Histograms

## TV
png('../images/histogram-tv.png')
hist(advertising$TV, xlab='TV (in thousands)', breaks=20, main='TV Histogram', col='cadetblue', ylim=c(0, 20))
dev.off()

## Sales
png('../images/histogram-sales.png')
hist(advertising$Sales, xlab='Sales (in thousands)', breaks=10, main='Sales Histogram', col='cadetblue1', xlim=c(0,30), ylim=c(0, 40))
dev.off()

## Radio
png('../images/histogram-radio.png')
hist(advertising$Radio, xlab='Radio (in thousands)', breaks=10, main='Radio Histogram', col='cadetblue2', ylim=c(0, 30))
dev.off()

## Newspaper
png('../images/histogram-newspaper.png')
hist(advertising$Newspaper, xlab='Newspaper (in thousands)', breaks=10, main='Newspaper Histogram', col='cadetblue3', ylim=c(0, 50))
dev.off()