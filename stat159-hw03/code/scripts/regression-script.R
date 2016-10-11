# Getting the data
advertising <- read.table('../../data/Advertising.csv', header=TRUE, sep=',')

# Linear regression
reg = lm(Sales ~ TV, data=advertising)
reg_summary = summary(reg)

# Scatterplot
# install.packages('ggplot2')
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




save(reg_summary, scatterplot, file = "../data/regression.RData")
