choropleth + geom_polygon(data = us_map[us_map$region == 'tennessee' ,], 
                          aes(x = long, y = lat, group = group), fill = 'grey')