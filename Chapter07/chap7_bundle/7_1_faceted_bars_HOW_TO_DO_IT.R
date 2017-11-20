data_titanic <- as.data.frame(Titanic)
library(ggplot2)
bar <- ggplot(data_titanic, aes(x = Survived)) + 
  geom_bar(aes(fill = Survived, weight = Freq)) + 
  facet_grid(Sex ~ Age)
bar
plotly::ggplotly(bar)