setwd("~/Desktop/Fall2016/stat159-datascience/stat159-hw02/code")
getwd()

# Getting the data
setwd("../")
setwd(paste(getwd(),"/data",sep=""))
getwd()

advertising <- read.table('Advertising.csv', header=TRUE, sep=',')

# Linear regression
reg = lm(Sales ~ TV, data=advertising)
summary = summary(reg)

# Scatterplot
# install.packages('ggplot2') if you don't already have ggplot2
library(ggplot2)
scatterplot = (ggplot(data=advertising, aes(TV, Sales)) 
+ ggtitle('TV vs. Sales') 
+ geom_point(color='gold')
+ stat_smooth(method="lm"))

scatterplot

# Save scatterplot
setwd("../")
setwd(paste(getwd(),"/images",sep=""))
getwd()

pdf('scatterplot-tv-sales.pdf')
scatterplot
dev.off()

png('scatterplot-tv-sales.png')
scatterplot
dev.off()

capture.output(summary, scatterplot, file = "../data/regression.RData")