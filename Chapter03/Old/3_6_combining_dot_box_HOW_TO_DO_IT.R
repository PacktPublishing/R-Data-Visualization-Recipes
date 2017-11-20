library(ggplot2) ; library(car)
dot1 <- ggplot(Salaries, aes( x = rank, y = salary))
dot1 + geom_boxplot(outlier.size = 0) +
  geom_dotplot(binaxis = 'y', 
               dotsize = .3, 
               stackdir = 'center',
               fill = 'red', alpha = .5)
  
library(plotly)
box2 <- plot_ly(data = Salaries, x = ~rank, 
                y = ~salary, type = 'box', 
                boxpoints = 'all', 
                marker = list(color = 'red', 
                              opacity = .2))
box2