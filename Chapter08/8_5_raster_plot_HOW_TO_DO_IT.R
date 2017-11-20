## STEP 1: RASTER WITH DEFAULT COLORS
library(ggplot2)
ggplot(data = cars, aes(x = speed, y = dist)) + 
  stat_density_2d(aes(fill = ..density..),
                  geom = 'raster', contour = F)
## STEP 2: PICK ANOTHER SET OF COLORS
ggplot(data = cars, aes(x = speed, y = dist)) + 
  stat_density_2d(aes(fill = ..density..),
                  geom = 'raster', contour = F) +
  scale_fill_distiller(trans = 'reverse')