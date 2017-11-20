## STEP 1: LOAD PACKAGES
library(ggforce)
library(ggplot2)
## STEP 2: DRAW FACET USING facet_zoom()
ggplot(data = boot::motor, 
       aes(x = times, y = accel)) + 
  geom_point(aes(color = factor(strata))) +
  facet_zoom(xy = factor(strata) == 1,
             horizontal = F)