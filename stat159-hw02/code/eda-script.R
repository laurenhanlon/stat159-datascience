setwd("~/Desktop/Fall2016/stat159-datascience/stat159-hw02/code")
getwd()

# Getting the data
setwd("../")
setwd(paste(getwd(),"/data",sep=""))
getwd()

advertising <- read.table('Advertising.csv', header=TRUE, sep=',')

# Summary statistics
s <- summary(advertising)
capture.output(s, file = "eda-output.txt")

# Histograms
setwd("../")
setwd(paste(getwd(),"/images",sep=""))
getwd()

## TV
pdf('histogram-tv.pdf')
hist(advertising$TV, xlab='TV', breaks=20, main='TV Histogram', col='lightgreen', ylim=c(0, 20))
dev.off()

png('histogram-tv.png')
hist(advertising$TV, xlab='TV', breaks=20, main='TV Histogram', col='lightgreen', ylim=c(0, 20))
dev.off()

## Sales
pdf('histogram-sales.pdf')
hist(advertising$Sales, xlab='Sales', breaks=15, main='Sales Histogram', col='limegreen', xlim=c(0,30), ylim=c(0, 40))
dev.off()

png('histogram-sales.png')
hist(advertising$Sales, xlab='Sales', breaks=15, main='Sales Histogram', col='limegreen', xlim=c(0,30), ylim=c(0, 40))
dev.off()
