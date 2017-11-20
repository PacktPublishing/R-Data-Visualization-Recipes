## STEP 1: STORING COORDINATES
library(ggplot2)                                                                            # Load ggplot2
us_map <- map_data('state')                                                                 # store US states coordinates
## STEP 2: STORING GSP
library(Ecdat)                                                                              # Load Ecdat
us_prod1 <- Produc[Produc$year == 1970,]                                                    # Store US states production for 1970
us_prod2 <- Produc[Produc$year == 1986,]                                                    # Store US states production for 1986
## STEP 3: MERGE DATAS
us_prod1$region <- gsub('_',' ',tolower(us_prod1$state))                                     # Create a new column with same sane convention from us_map
us_prod2$region <- gsub('_',' ',tolower(us_prod2$state))                                     # Create a new column with same sane convention from us_map
merged_data1 <- dplyr::left_join(
  us_map,us_prod1[,c('region','gsp','year')],by = 'region')                                 # merge the data into a single data frame
merged_data2 <- dplyr::left_join(
  us_map,us_prod2[,c('region','gsp','year')],by = 'region')                                 # merge the data into a single data frame
## STEP 4: BIND THE ROWS FROM THE TWO DATA FRAMES
merged_data <- rbind(merged_data1,merged_data2)
## STEP 5: PLOT THE FACETED MAP
choropleth <- ggplot(data = merged_data[!is.na(merged_data$year),]) +                       # Initialize ggplot with merged_data
  geom_polygon(aes(x = long, y = lat, group = group, fill = gsp),                           # call geom_polygon() to draw the map
               color = 'grey') +                                                            # pick grey borders
  facet_wrap(~ year, ncol = 1) + coord_map() + theme_void()                                 # call facets
choropleth 