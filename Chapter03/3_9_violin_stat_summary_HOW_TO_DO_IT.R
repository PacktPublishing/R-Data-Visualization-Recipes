## STEP 1: DRAW BASE VIOLIN
library(ggplot2)
violin <- ggplot(car::Salaries, aes(x = rank, y = salary)) +
  geom_violin(draw_quantiles = c(.25,.75), size = 1,
              fill = 'steelblue1')
## STEP 2: STACK stat_summary TO IT
violin + 
  stat_summary(fun.y = median, geom = 'point', shape = 24, 
               fill = 'darkslategray1', size = 4, stroke = 1.5)
## STEP 3: geom AND fun ARGUMENTS CAN BE TWEAKED
violin + 
  stat_summary(fun.data = mean_sdl, fun.args = list(mult = 1), 
               geom = 'pointrange', color = 'darkslategray1', 
               size = 1)
