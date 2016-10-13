# Getting the data
advertising_full <- read.table('../../data/Advertising.csv', header=TRUE, sep=',')
advertising <- advertising_full[c('TV', 'Sales', 'Radio', 'Newspaper')]

# Singular linear regressions
reg1 = lm(Sales ~ TV, data=advertising)
reg_summary_TV = summary(reg1)

reg2 = lm(Sales ~ Radio, data=advertising)
reg_summary_Radio = summary(reg2)

reg3 = lm(Sales ~ Newspaper, data=advertising)
reg_summary_Newspaper = summary(reg3)

# Scatterplot
library(ggplot2)

scatterplot_TVxSales = (ggplot(data=advertising, aes(TV, Sales)) 
                        + ggtitle('TV vs. Sales') 
                        + geom_point(color='gold')
                        + stat_smooth(method="lm"))

scatterplot_RadioxSales = (ggplot(data=advertising, aes(Radio, Sales)) 
                        + ggtitle('Radio vs. Sales') 
                        + geom_point(color='gold')
                        + stat_smooth(method="lm"))

scatterplot_NewspaperxSales = (ggplot(data=advertising, aes(Newspaper, Sales)) 
                           + ggtitle('Newspaper vs. Sales') 
                           + geom_point(color='gold')
                           + stat_smooth(method="lm"))

# Save scatterplot

png('../../images/scatterplot-tv-sales.png')
scatterplot_TVxSales
dev.off()

png('../../images/scatterplot-radio-sales.png')
scatterplot_RadioxSales
dev.off()

png('../../images/scatterplot-newspaper-sales.png')
scatterplot_NewspaperxSales
dev.off()

################################################
################################################
################################################

## Multivariate Linear Regression

multiregression <- lm(Sales ~ TV + Newspaper + Radio, data=advertising)
reg_summary_multi = summary(multiregression)

## Residual Plot
png('../../images/residual-plot.png')
plot(multiregression, which=1)
dev.off()

## Scale Location Plot
png('../../images/scale-location.png')
plot(multiregression, which=3)
dev.off()

## Normal QQ Plot
png("../../images/normal-qq-plot.png")
plot(multiregression, which=2)
dev.off()

################################################
################################################
################################################

## Save all to RData

save(reg_summary_TV, reg_summary_Radio, reg_summary_Newspaper,
     scatterplot_TVxSales, scatterplot_RadioxSales, scatterplot_NewspaperxSales, 
     reg_summary_multi, file = "../../data/regression.RData")
