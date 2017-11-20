## STEP 1: COERCE rank INTO NUMERICAL JITTERED CATEGORIES
set.seed(10)
library(car)
dt <- Salaries
dt$rk <- 3 + runif(length(dt$rank), 
                   max = .2, min = -.2)
dt$rk[ dt$rank == 'AssocProf'] <- dt$rk[ dt$rank == 'AssocProf'] - 1
dt$rk[ dt$rank == 'AsstProf'] <- dt$rk[ dt$rank == 'AsstProf'] - 2
## STEP 2: PLOT POINTS WITH ggvis AND REWORK LABELS
library(ggvis)
dt %>% ggvis(x = ~rk, y = ~salary) %>% 
  layer_points(opacity := .3) %>%
  add_axis('x',values = c(1,1), title = '',
           properties = axis_props(labels = list(text = 'Assistant Professor'))) %>%
  add_axis('x',values = c(2,2), title = '',
           properties = axis_props(labels = list(text = 'Associated Professor'))) %>%
  add_axis('x',values = c(3,3), title = 'Rank', 
           properties = axis_props(labels = list(text = 'Professor'))) 
## STEP 3: PLOT POINTS WITH plotly AND REWORK LABELS
library(plotly)
plot_ly(dt, x = ~rk, y =~salary , type = 'scatter', 
        mode = 'markers', alpha =.4) %>%
  layout(xaxis = list(tickvals = c(1,2,3),
                      ticktext = c('Assistant Professor', 
                                   'Associated Professor', 
                                   'Professor')))
## STEP 4: geom_jitter() CAN HANDLE IT USING ggplot2
library(ggplot2)
ggplot(Salaries, aes(x = rank, y = salary)) + 
  geom_jitter(alpha = .4, height = 0, 
              width = .3)