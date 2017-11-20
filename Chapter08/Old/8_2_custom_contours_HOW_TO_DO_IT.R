## STEP 1: 
library(ggplot2)
ggplot(data = cars, aes(x = speed, y = dist)) + 
  geom_density_2d(aes(colour = ..level..), bins = 15)
## STEP 2:
ggplot(data = cars, aes(x = speed, y = dist)) + 
  geom_density_2d(aes(colour = ..level..), binwidth = .0005)