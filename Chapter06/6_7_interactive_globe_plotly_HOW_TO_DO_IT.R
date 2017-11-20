## STEP 1: LOADING AND MANIPULATING DATA
library(Ecdat)                                                           # Loading Ecdat
data(bankingCrises)                                                      # attaching the data frame
row_year <- match(2009,bankingCrises$year)                               # selecting the row number for the year 2009
countries <- colnames(bankingCrises[,bankingCrises[row_year,] == 1])     # creating a vectors for countries that suffered a baking crises in 2009
## STEP 2: PRESETTING GLOBE PROPERTIES
axis_props <- list(
  showgrid = T, gridcolor = toRGB("gray40"), gridwidth = 0.5
)
globe <- list(
  showland = T, showlakes = T, showcountries = T, showocean = T,
  countrywidth = 0.5,
  landcolor = toRGB("grey90"),
  lakecolor = toRGB("white"),
  oceancolor = toRGB("white"),
  projection = list(
    type = 'orthographic',
    rotation = list(
      lon = -100, lat = 40, roll = 0
  ),
  lonaxis = axis_props,
  lataxis = axis_props
  )
)
## STEP 3? MAPPING GLOBE
library(plotly)                                                          # Loading plotly
plot_geo(width = 528, height = 528, locationmode = 'country names') %>%  # initializing plotly object
  add_trace(locations = ~countries, showscale = F, z = 1,                # naming the countries to be plotted
            hoverinfo = 'text', text = ~countries) %>%                   # picking hover information
  layout(geo = globe)                                                    # calling for a globe
