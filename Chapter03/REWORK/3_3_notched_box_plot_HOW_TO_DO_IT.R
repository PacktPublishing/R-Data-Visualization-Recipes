## STEP 1: SEPARETE OUTLIERS
library(ggplot2) ; library(car)
out_data <- Salaries[match((boxplot.stats(Salaries$salary))$out,
                           Salaries$salary),]
## STEP 2: PLOT WITH ggplot2
set.seed(50)
box1 <- ggplot(Salaries, aes( x = rank, y = salary))
box1 + geom_boxplot( notch = T, outlier.shape = NA ) +
  geom_jitter( data = out_data, height = 0, width = .2)