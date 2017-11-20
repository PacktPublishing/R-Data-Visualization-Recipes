## STEP 1: GET THE COORDINATES
tristate <- c('new york','new jersey','connecticut')                                                 # creating a vector with tri-state names
long_lim <- merged_data$long[merged_data$region %in% tristate]                                       # Getting longitudes
lat_lim <- merged_data$lat[merged_data$region %in% tristate]                                         # getting latitudes
outer <- merged_data[!merged_data$region %in% tristate,]                                             # separating outer states
## STEP 2: ZOOMING IN
library(ggplot2)                                                                                      # load ggplot2
choropleth +                                                                                          # Plot base
  geom_polygon(data = outer,                                                                          # select outer states
               aes(x = long, y = lat, group = group), fill = 'gray', color = 'black') +               # fill gray
  coord_fixed(xlim = c(min(long_lim),max(long_lim)),                                                  # zooming longitudinal
              ylim = c(min(lat_lim),max(lat_lim)),                                                    # zooming latitudinal     
              ratio = 1.3)                                                                            # fixe aspect ratio