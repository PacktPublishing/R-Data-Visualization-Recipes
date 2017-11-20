## STEP 1: DRAW A BOX PLOT USING ggplot2
library(ggplot2)
box1 <- ggplot(data = car::Salaries, 
               aes( x = rank, y = salary))
box1 + geom_boxplot( outlier.alpha = .4 )
## STEP 2: DRAW SIMILAR USING plotly
library(plotly)
box2 <- plot_ly(data = car::Salaries, y = ~salary, x = ~rank, 
                 type = 'box', marker = list(opacity = .4))
box2 
## STEP 3: SIMPLE BOX PLOT USING ggvis
library(ggvis)
box3 <- ggvis(data = car::Salaries, 
              x = ~rank, y = ~salary)
box3 %>% layer_boxplots(opacity := .4) %>% 
  layer_boxplots(size := 0)