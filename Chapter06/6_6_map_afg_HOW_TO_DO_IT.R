## STEP 1: CREATE TEMP FILES AND DIRECTORIES
url1 <- 'http://www.mapcruzin.com/afghanistan-shapefiles/district-boundaries.zip'  # Download url 1
url2 <- 'http://www.mapcruzin.com/afghanistan-shapefiles/health-facilities.zip'    # Download url 2
tmp_file <- tempfile()                                                             # creating temporary file
tmp_dir <- tempdir()                                                               # creating temporary directory
## STEP 2: DOWNLOAD AND UNZIP
download.file(url1,tmp_file)                                                       # DOWNLOAD DISTRICS SHAPEFILES
unzip(tmp_file,exdir = tmp_dir)                                                    # UNZIP       "      "
download.file(url2,tmp_file)                                                       # DOWNLOAD HEALTH FACILITIES SHAPEFILES 
unzip(tmp_file,exdir = tmp_dir)                                                    # UNZIP      "         "         "
## STEP 3: READ SHAPEFILES
library(rgdal)   
districtis <- readOGR(dsn = tmp_dir, layer = 'admin3_poly_32')                     # READ DISTRICTS SHAPEFILE
health <- readOGR(dsn = tmp_dir, layer = 'all_bphs')                               # READ HEALTH FACILITIES SHAPEFILE
## STEP 4: LOAD REQUIRED PACKAGES
library(broom)                                                                     # broom package turns sp objs into data frames
library(ggplot2)                                                                   # load ggplot2 to draw the map
bg <- element_rect(fill = 'lightgray')
## STEP 5: DRAWING THE MAP
ggplot() +                                                                        # initialize ggplot
  geom_polygon(data = tidy(districts),                                            # use polygons to draw the districts
            aes(x = long, y = lat, group = group),
            color = 'white', fill = 'lightblue', size = .1) +
  geom_point(data = data.frame(health@coords),
             aes(x = coords.x1, y = coords.x2),
             color = 'red', shape = 3) +
  theme_bw() + 
  theme(panel.background = bg) +
  labs(title = 'Afganisthan\'s Health Facilities',
       subtitle ='source: www.mapcruzin.com')
## STEP 6: REMOVE TEMP DIRECTORIES AND FILES
unlink(tmp_file, recursive = T)
unlink(tmp_dir, recursive = T)