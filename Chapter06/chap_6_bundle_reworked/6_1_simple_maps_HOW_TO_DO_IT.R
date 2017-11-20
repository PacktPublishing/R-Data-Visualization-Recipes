## STEP 1
library(HistData)                                                                   # loading package with data

## STEP 2 - MAPPING WITH ggplot2
library(ggplot2)                                                                    # loading ggplot2
ggplot(data = Snow.streets) +                                                       # initializing plot
  geom_path(aes(x = x, y = y, group = street))                                      # calling geom_path() to draw the streets


## STEP 3 - MAPPING WITH ggvis
library(ggvis)                                                                      # loading ggvis
Snow.streets %>% group_by(street) %>%                                               # call the data and group by street
  ggvis(x = ~x, y = ~y) %>% layer_paths()                                           # calling layer_paths() to draw lines


## STEP 4 - MAPPING WITH plotly
library(plotly)                                                                    # loading plotly
plot_ly(data = Snow.streets, type = 'scatter', showlegend = F) %>%                 # initialize plot, ask to hide legends  
  group_by(street) %>% add_lines(x = ~x, y = ~y)                                   # add_lines() actually draw the lines