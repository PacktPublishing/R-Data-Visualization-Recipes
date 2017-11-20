## STEP 1: MANIPULATE DATA
library(car)                                                        # load car package                              
data_box <- Salaries                                                # store data into a new object
data_box$discipline <- factor(data_box$discipline,                  # factor discipline
                              labels = c('theoretical','applied'))  # picking appropriate labels
## STEP 2: CRAFTING THE FACETED BOXPLOT
library(ggplot2)                                                    # load ggplot2
boxplot <- ggplot(data = data_box) +                                # initialize the ggplot
  geom_boxplot(aes(x = sex, y = salary), position = 'identity') +   # calls the boxplot geometry
  facet_grid(rank ~ discipline)                                     # add facets
boxplot
## STEP 3: COERCE IT INTO A plotly
plotly::ggplotly(boxplot)