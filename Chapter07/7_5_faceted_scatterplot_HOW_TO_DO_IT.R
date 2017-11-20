## STEP 1: MANIPULATING DATA
data_sport <- DAAG::ais                                  # Storing data into a separeted object
sports <- c('B_Ball','Field','Row','T_400m')             # picking the sports to look after
data_sport <- data_sport[data_sport$sport %in% sports,]  # filtering data accordingly to those sports
## STEP 2: DRAWING THE FACETED SCATTERPLOT
library(ggplot2)                                         # Loading ggplot2
scatter <- ggplot(data_sport) +                          # initializing plot
  geom_point(aes(x = ht, y = wt), alpha = .4) +          # calling for point geometry
  facet_grid(sex ~ sport)                                # stacking the facets
scatter                                                  # summoning the result
## STEP 3: COERCE TO plotly's
plotly::ggplotly(scatter)