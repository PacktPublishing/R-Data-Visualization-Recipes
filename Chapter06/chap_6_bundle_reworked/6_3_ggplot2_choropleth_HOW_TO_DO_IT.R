## STEP 1: STORING COORDINATES
library(ggplot2)                                                                            # Load ggplot2
us_map <- map_data('state')                                                                 # store US states coordinates
## STEP 2: STORING GSP
library(Ecdat)                                                                              # Load Ecdat
us_prod <- Produc[Produc$year == 1985,]                                                     # Store US states production for 1985
## STEP 3: MERGE DATAS
us_prod$region <- gsub('_',' ',tolower(us_prod$state))                                      # Create a new column with same sane convention from us_map
merged_data <- dplyr::left_join(us_map,us_prod[,c('region','gsp')],by = 'region')           # merge the data into a single data frame
## STEP 4: PLOT THE MAP
choropleth <- ggplot(data = merged_data) +                                                  # Initialize ggplot with merged_data
  geom_polygon(aes(x = long, y = lat, group = group, fill = gsp), color = 'black') +        # call geom_polygon() to draw the map
  theme_void() + theme(legend.position = 'bottom') +                                        # summon void theme and move legends
  scale_fill_continuous( guide = guide_colorbar(barheight = unit(2,units = 'mm'),           # decrease legends heigh
                                                barwidth = unit(5,units = 'cm')))           # increase legends width
choropleth                                                                                  # summon the plot