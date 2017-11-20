## STEP 1: LOADING DATA AND CREATING CLICK ACTION
library(DAAG)
dt <- races2000
dt$click <- 'window.open(\"http://www.hillrunning.co.uk\")'
## STEP 2: LOAD ggiraph WHILE DESIGING A ggplot
library(ggiraph)
p <- ggplot(dt, 
            aes(x = dist, 
                y = time, 
                color = type)) + 
  geom_point_interactive( alpha = .8,
    aes(tooltip = timef, 
        data_id = timef, 
        onclick = click)) + 
  xlim(1.5,8) + 
  ylim(.2,.8)
## STEP 3: CREATE A STRING FOR css-style AND PLOT p USING ggiraph
css <- 'fill-opacity:.3;cursor:pointer;r:5pt;'
ggiraph(code = print(p), 
        hover_css = css, 
        zoom_max = 2)