library(ggplot2)
ggplot(data = cars, aes(x = speed, y = dist)) + 
  stat_density_2d(aes(fill = ..density..),
                  geom = 'raster', contour = F) + 
  geom_density_2d(colour =  'white')