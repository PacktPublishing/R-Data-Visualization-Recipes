## STEP 1: CREATE BASE data frame
dt <- data.frame(x = c(1:2,rep(3,5),4:5),
                 y = c(3,3,1:5,3,3), id = 1:9,
                 time = 1, col = 'red', alp = 0,
                 ease = as.character('linear'),
                 size = 1)
## STEP 2: CREATE ADDITIONAL ONES
dt1 <- dt
dt1$time <- 2
dt1$alp <- .4
dt2 <- dt1
dt2$x <- dt$y
dt2$y <- dt$x
dt2[,c('time','size')] <- 3
dt2$ease <- 'bounce-out'
dt2$col <- 'green'
dt3 <- dt2
dt3$x <- dt$x
dt3$time <- 4
dt3$col <- 'blue'
## STEP 3: BIND THEM
dt <- rbind(dt,dt1,dt2,dt3)
## STEP 4: INTERPOLATE YOUR DATA WITH tweenr
library(tweenr)
dt <- tween_elements(dt, time = 'time', group = 'id', ease = 'ease',
                     nframes = 300)
## STEP 5: CREATE A PLOT USING dt
library(ggplot2)
library(gganimate)
p <- ggplot(data = dt, aes(x = x, y = y)) +
  geom_point(aes(size = size, color = col, 
                 frame = .frame, alpha = alp)) +
  scale_size(range = c(1, 25), guide = 'none') + 
  scale_alpha_identity(guide = 'none') +
  theme_void()
## STEP 5: ANIMATE IT USING gganimate
animation::ani.options(interval = 1/20)
gganimate(p, title_frame = F)



