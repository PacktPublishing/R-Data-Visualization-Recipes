library(ggplot2)
ggplot(data = cars, aes(x = speed, y = dist)) + 
  geom_density_2d(aes(colour = ..level..))

ggplot(cars, aes(x = speed, y = dist)) + 
  stat_density_2d(geom = 'polygon',
                  aes(fill = ..level..),
                  colour = 'yellow') + 
  ylim(-10,110) + xlim(0,30) +
  coord_cartesian(xlim = c(5,25), ylim = c(0,100))