## STEP 1:  USE bins TO SET THE LEVELS
library(ggplot2)
ggplot(data = cars, aes(x = speed, y = dist)) + 
  geom_density_2d(aes(colour = ..level..), bins = 15)
## STEP 2: USE binwidth TO SET THE LEVELS
ggplot(data = cars, aes(x = speed, y = dist)) + 
  geom_density_2d(aes(colour = ..level..), binwidth = .0005)