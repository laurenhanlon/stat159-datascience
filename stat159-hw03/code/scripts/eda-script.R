# Getting the data

advertising_full <- read.table('../../data/Advertising.csv', header=TRUE, sep=',')
advertising <- advertising_full[c('TV', 'Sales', 'Radio', 'Newspaper')]

# Summary statistics
summary_advertising <- summary(advertising)

# Histograms

## TV
png('../../images/histogram-tv.png')
hist(advertising$TV, xlab='TV (in thousands)', breaks=20, main='TV Histogram', col='cadetblue', ylim=c(0, 20))
dev.off()

## Sales
png('../../images/histogram-sales.png')
hist(advertising$Sales, xlab='Sales (in thousands)', breaks=10, main='Sales Histogram', col='cadetblue1', xlim=c(0,30), ylim=c(0, 40))
dev.off()

## Radio
png('../../images/histogram-radio.png')
hist(advertising$Radio, xlab='Radio (in thousands)', breaks=10, main='Radio Histogram', col='cadetblue2', ylim=c(0, 30))
dev.off()

## Newspaper
png('../../images/histogram-newspaper.png')
hist(advertising$Newspaper, xlab='Newspaper (in thousands)', breaks=10, main='Newspaper Histogram', col='cadetblue3', ylim=c(0, 50))
dev.off()

# Relations

## Scatterplot matrix
#Scatterplot Matrices from the glus Package 
library(gclus)
advertising.r <- abs(cor(advertising)) # get correlations
advertising.col <- dmat.color(advertising.r) # get colors
# reorder variables so those with highest correlation
# are closest to the diagonal
advertising.o <- order.single(advertising.r) 
png('../../images/scatterplot-matrix.png')
cpairs(advertising, advertising.o, panel.colors=advertising.col, gap=.7,
       main="Scatterplot Matrix" )
dev.off()

## Correlations
correlation_matrix <- cor(advertising)

## Save Outputs to txt file and RData file
capture.output(summary_advertising, correlation_matrix, file = "../../data/eda-output.txt")
save(correlation_matrix, file = "../../data/correlation-matrix.RData")
