## STEP 1: COMPUTE DATA
cars_d <- MASS::kde2d(cars$speed, cars$dist, n =50)
## STEP 2: DRAW 3D SURFACE USING plotly
library(plotly)
plot_ly(x = cars_d$x, 
        y = cars_d$y, 
        z = cars_d$z) %>% 
  add_surface()