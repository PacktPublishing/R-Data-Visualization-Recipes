## STEP 1:MIDDLE PLOT
library(ggplot2) 
base_p <- ggplot(iris, aes( x = Petal.Length, y = Petal.Width, colour = Species))
scatter <- base_p + geom_point( alpha = .5, aes(shape = Species)) + 
  geom_rug(alpha = .5, sides = 'tr', show.legend = F) +
  theme(legend.position = 'bottom')
## STEP 2: DRAW MARGINAL PLOTS WITH ggExtra
library(ggExtra)
ggMarginal(scatter, iris, type = 'histogram', bins = 150)