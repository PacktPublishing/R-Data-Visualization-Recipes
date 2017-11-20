## STEP 1: JITTER WITH ggplot2
set.seed(100)
library(ggplot2)
sca1 <- ggplot( iris, aes( x = Petal.Length, y = Petal.Width))
sca1 + geom_point( position = 'jitter', 
                   aes(shape = Species, colour = Species))
## STEP 2: CREATING NOISE VARIABLES
jx <- rnorm(length(iris$Petal.Length), mean = 0, sd = .2)
jy <- rnorm(length(iris$Petal.Width), mean = 0, sd = .06)
## STEP 3: ADD NOISE TO THE VARIABLES USING plotly
library(plotly)
sca8 <- plot_ly(iris, x = ~Petal.Length + jx, y = ~Petal.Width + jy, 
                type = 'scatter', mode = 'markers', symbol = ~Species)
sca8
## STEP 4: DO ABOUT THE SAME USING ggbis
library(ggvis)
sca3 <- ggvis( data = iris)
sca3 %>% layer_points( x = ~Petal.Length + jx , y = ~Petal.Width + jy,
                       shape = ~Species, fill = ~Species)
