## STEP 1:
library(hrbrthemes)
library(tidyverse)
extrafont::loadfonts()
## STEP 2:
p <- ggplot(data = Puromycin, 
            aes(x = conc,
                y = rate)) +
  geom_point(size = 4, aes(colour = state)) +
  labs(title = 'Reaction Velocity of\nan Enzymatic Reaction',
       subtitle = 'thiss ys missspelled')
## STEP 3:
p + theme_ipsum_rc() +
  scale_color_ipsum()
## STEP 4: 
gg_check(p)