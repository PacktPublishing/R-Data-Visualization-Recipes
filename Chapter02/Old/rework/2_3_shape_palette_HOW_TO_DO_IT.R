## STEP 1: SHAPES AND COLORS WITH ggplot2
library(ggplot2)
sca1 <- ggplot(data = iris, aes(x = Petal.Length, y = Petal.Width))
sca1 + geom_point(aes(shape = Species, colour = Species))
## STEP 2: SHAPES AND COLORS WITH plotly
library(plotly)
sca4 <- plot_ly(iris, x = ~Petal.Length, y = ~Petal.Width, 
                type = 'scatter', mode = 'markers', symbol = ~Species)
sca4
## STEP 3: SHAPES AND COLORS WITH ggvis
library(ggvis)
sca3 <- ggvis(data = iris, x = ~Petal.Length, y = ~Petal.Width)
sca3 >%> layer_points( shape = ~Species, fill = ~Species)