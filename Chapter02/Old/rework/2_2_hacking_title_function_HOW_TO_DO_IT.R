## STEP 1: WRAPING THE HACK
library(ggvis)
ggvis_title <- function(vis, plot_title, title_size = 18, shift = 0, ...){ 
  add_axis(vis, 'x', ticks = 0, orient = 'top', 
           properties = axis_props( axis = list(strokeWidth = 0),
                                    labels = list(strokeWidth = 0), 
                                    grid = list(strokeWidth = 0),
                                    title = list(fontSize = title_size, dy = -shift, ...)),
           title = plot_title)
}
## STEP 2
sca3 %>% ggvis_title('simple ggvis scatterplot')