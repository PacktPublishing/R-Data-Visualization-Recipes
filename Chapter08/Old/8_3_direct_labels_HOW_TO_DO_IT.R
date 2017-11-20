## STEP 1: DESING A CONTOUR PLOT
library(ggplot2)
plot <- ggplot(data = cars, aes(x = speed, y = dist)) + 
  geom_density_2d(aes(colour = ..level..))
## STEP 2: INPUT IT INTO direct.label()
library(directlabels)
direct.label(plot, list('top.pieces', colour = 'black'))