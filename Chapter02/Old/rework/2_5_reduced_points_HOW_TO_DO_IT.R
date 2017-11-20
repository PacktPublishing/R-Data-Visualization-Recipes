## STEP 1: REDUCED POINTS WITH ggplot2
library(ggplot2)
sca5 <- ggplot(diamonds, aes(x = carat, y = price))
sca5 + geom_point(shape = '.')
## STEP 2: REDUCED POINTS WITH plotly
library(plotly)
sca6 <- plot_ly(diamonds, x = ~carat, y = ~price, type = 'scatter', 
                mode = 'markers', marker = list(size = .8))
sca6
## STEP 3: REDUCED POINTS WITH ggvis
library(ggvis)
sca7 <- diamonds %>% ggvis(x = ~carat, y = ~price)
sca7 %>% layer_points( size := .5)