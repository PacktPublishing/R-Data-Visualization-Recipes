## STEP 1: DRAW THE FACETED LINE PLOT
library(ggplot2)                                        # load ggplot2
lines <- ggplot(data = wooldridge::wage1,               # initialize with data...
                aes(x = educ, y = wage)) +              # and baseic aesthetics
  geom_point(alpha = .2) +                              # draw points
  geom_smooth(se = F, size = 2) +                       # add a tendency line
  facet_grid(female ~ married, labeller = label_both)   # add facets
lines                                                   # call the plot
## STEP 2: COERCE IT TO plotly
plotly::ggplotly(lines)