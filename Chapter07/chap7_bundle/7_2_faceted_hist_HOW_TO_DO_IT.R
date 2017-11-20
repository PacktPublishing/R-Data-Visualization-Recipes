## STEP 1: DRAWING THE FACETED HISTOGRAM
library(ggplot2)                                         # load ggplot2
hist <- ggplot(data = wooldridge::wage1) +               # initialize the ggplot object
  geom_histogram(aes(x = wage), binwidth = 2) +          # call for the histogram
  facet_grid( married ~ female, labeller = label_both)   # call for the facets
hist                                                     # see the result
## STEP 2: COERCE TO plotly
plotly::ggplotly(hist)