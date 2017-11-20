## STEP 1: LOADING AND INITIALIZING
library(HistData); library(plotly)                                                                      # Load Required packges                                                                 
plot_ly(data = Snow.streets, type = 'scatter') %>%  group_by(street) %>%                                # initialize plotly object
## STEP 2: DRAW STREETS    
  add_lines(x = ~x, y = ~y, hoverinfo = 'none',                                                         # use add_lines to draw streets
            line = list(color = 'rgba(0, 0, 0, 1)'), showlegend = F) %>%                                # choose the color and hide legends
## STEP 3: REPRESENT DEATHS
  add_markers(data = Snow.deaths, x = ~x, y = ~y,  hoverinfo = 'none',                                  # use add_markers to display points
              marker = list(symbol = 0, size = 4, color = 'rgba(153, 0, 0, 1)'),                        # choose symbol, size and color
              name = 'cholera\ndeath') %>%                                                              # add a name to be displayed by legends
## STEP 4: DRAW THE WATER PUMPS  
  add_markers(data = Snow.pumps, x = ~x, y = ~y,                                                        # use add_markers to set up more points
              hoverinfo = 'text', text = ~label,                                                        # set up a text to show up when mouse is hovered
              marker = list(symbol = 2, size = 10, color = 'rgba(0, 0, 153, 1)'),                       # choose symbol, size and color
              name = 'water\npump') %>%                                                                 # properly name it
## STEP 5: HIDE AXES AND ADD A TITTLE
  layout(xaxis = list(visible = F), yaxis = list(visible = F), title = '1854 London')                   # really?