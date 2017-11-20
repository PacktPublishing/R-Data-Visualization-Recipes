## STEP 1:
library(ggplot2)
sca1 <- ggplot( iris, aes( x = Petal.Length, y = Petal.Width))
sca1 + geom_point( alpha = .5 , 
                   aes(shape = Species, colour = Species))
## STEP 2:
library(plotly)
sca9 <- plot_ly( iris, x = ~Petal.Length, y = ~Petal.Width, 
                 type = 'scatter', mode = 'markers', alpha = .5, symbol = ~Species)
sca9
# STEP 3:
library(ggvis)
sca3 <- ggvis(iris, x = ~Petal.Length, y = ~Petal.Width)
sca3 %>% layer_points( opacity := .5, shape = ~Species, fill = ~Species)