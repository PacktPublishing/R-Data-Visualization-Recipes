## STEP 1: ggplot2 SIMPLE SCATTERPLOT
library(ggplot2)                                                        # Load package
sca1 <- ggplot(data = iris, aes(x = Petal.Length, y = Petal.Width))     # initialize ggplot
sca1 + geom_point() +                                                   # call point geometry
  ggtitle('Simple ggplot2 scatterplot')                                 # add title
## STEP 2: plotly SIMPLE SCATTERPLOT
library(plotly)                                                         # load plotly
sca2 <- plot_ly(data = iris, x = ~Petal.Length, y = ~Petal.Width,       # initialize plotly
                type = 'scatter', mode = 'markers')                     # pick graph type and mode
sca2 %>% layout(title = 'Simple plotly scatterplot')                    # add title
## STEO 3: ggvis SIMPLE SCATTERPLOT
library(ggvis)                                                          # load ggvis
sca3 <- iris %>% ggvis(x = ~Petal.Length, y = ~Petal.Width)             # initilize ggvis object
sca3 %>% layer_points()                                                 # add point geometry
# ggvis lacked a funtion to add title