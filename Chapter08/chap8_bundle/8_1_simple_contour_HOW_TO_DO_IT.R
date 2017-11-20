## STEP 1: USE geom_density_2d() TO DRAW CONTOUR PLOT
library(ggplot2)
ggplot(data = cars, aes(x = speed, y = dist)) + 
  geom_density_2d(aes(colour = ..level..))
## STEP 2: USE stat_density_2d() TO DRAW POLYGONS INSTEAD
ggplot(cars, aes(x = speed, y = dist)) + 
  stat_density_2d(geom = 'polygon',
                  aes(fill = ..level..),
                  colour = 'yellow') + 
  ylim(-10,110) + xlim(0,30) +
  coord_cartesian(xlim = c(5,25), ylim = c(0,100))