library(dplyr)
data_pl <- data_journals %>% count(pub)
library(plotly)
pl_eco <- plot_ly(data = data_pl, x = ~pub, y= ~n, type = 'bar', 
                  marker = list(color = 'white', line = list(color = 'black', width = 1.5)))
pl_eco