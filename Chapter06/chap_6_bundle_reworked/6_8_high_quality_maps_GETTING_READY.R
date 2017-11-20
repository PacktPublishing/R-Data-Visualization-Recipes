library(ggplot2)                                                                           
us_map <- map_data('state') 
library(Ecdat)                                                                             
us_prod <- Produc[Produc$year == 1985,]
us_prod$region <- gsub('_',' ',tolower(us_prod$state))                                      
merged_data <- dplyr::left_join(us_map,us_prod[,c('region','gsp')],by = 'region')
if( !require(viridis)){ install.packages('viridis')}