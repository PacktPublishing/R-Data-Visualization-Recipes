## STEP 1: CREATE A DATA FRAME
dt <- data.frame(x_axis = rep(1:3,each = 3),
                 y_axis = rep(1:3,3))
## STEP 2: USE ggplot2 TO DO BASIC AESTHETIC MAPPING
library(ggplot2)
p <- ggplot(data = dt, aes(x = x_axis,
                           y = y_axis)) +
  xlim(c(0,4)) + ylim(c(0,4))
## STEP 3: CALL ggtech TO COERCE A GEOMETRY AND THEME
library(ggtech)
p + ggtitle('Twitter plot') +
  geom_tech(theme = 'twitter') + 
  theme_tech(theme = 'twitter')