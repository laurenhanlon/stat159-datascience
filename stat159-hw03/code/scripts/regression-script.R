setwd("~/Desktop/Fall2016/stat159-datascience/stat159-hw02/code")
getwd()

# Getting the data
advertising <- read.table('../data/Advertising.csv', header=TRUE, sep=',')

# Linear regression
reg = lm(Sales ~ TV, data=advertising)
reg_summary = summary(reg)

# Scatterplot
# install.packages('ggplot2')
library(ggplot2)
scatterplot = (ggplot(data=advertising, aes(TV, Sales)) 
+ ggtitle('TV vs. Sales') 
+ geom_point(color='gold')
+ stat_smooth(method="lm"))

scatterplot

# Save scatterplot
pdf('../images/scatterplot-tv-sales.pdf')
scatterplot
dev.off()

png('../images/scatterplot-tv-sales.png')
scatterplot
dev.off()

save(reg_summary, scatterplot, file = "../data/regression.RData")
