# Getting the data
advertising <- read.table('../../data/Advertising.csv', header=TRUE, sep=',')

# Linear regressions
reg1 = lm(Sales ~ TV, data=advertising)
reg_summary_TV = summary(reg1)

reg2 = lm(Sales ~ Radio, data=advertising)
reg_summary_Radio = summary(reg2)

reg3 = lm(Sales ~ Newspaper, data=advertising)
reg_summary_Newspaper = summary(reg3)

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


## Save all to RData

save(reg_summary_TV, reg_summary_Radio, reg_summary_Newspaper,
     scatterplot_TVxSales, scatterplot_RadioxSales, scatterplot_NewspaperxSales, file = "../../data/regression.RData")
