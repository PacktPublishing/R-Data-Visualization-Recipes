## STEP 1: CENTERING TITLES AND SUBITLES
library(ggplot2)                                                            # Loading package
choropleth <- choropleth + theme(plot.title =  element_text(hjust = .5),    # setting titles centered
                                 plot.subtitle = element_text(hjust = .5))  # setting subtitles centered
## STEP 2: ADOPTING MERCATOR PROJECTION
choropleth + coord_map() +                                                  # choosing mercator projection
  ggtitle('US Map - mercator projection')                                   # adding an informative title
## STEP 3: ADOPTING THE GILBERT PROJECTION
choropleth + coord_map(projection = 'gilbert') +                            # choosing gilbert projection
  ggtitle('US Map - gilbert projection')                                    # adding an informative title   
## STEP 4: ADOPTING THE CONIC PROJECTION
choropleth + coord_map(projection = 'conic', lat0 = 50) +                   # adopting conic projection with latitude zero = 50 
  labs(title = 'US Map - conic projection',                                 # adding an informative title ...
       subtitle = 'latitute zero = 50')                                     # .... and subtitle