## STEP 1: DRAW BASIC MAP
library(ggplot2)
h1 <- ggplot(data = merged_data) +                                                  
  geom_polygon(aes(x = long, y = lat, group = group, fill = gsp), 
               color = 'black') + theme_void()
## STEP 2: PRESET COLORS,BREAKS,LABELS AND BAR SIZE
clrs <- rev(viridis::magma(8))
brks <- c(0,10000,seq(100000,500000,100000))
lbls <- format(brks, nsmall = 2, big.mark = ',', scientific = F)
bar <- guide_colorbar(barheight = unit(4,units = 'cm'), 
                      barwidth = unit(2,units = 'mm'))
## STEP 3: CHANGE COLOR SCAE
h2 <- h1 + scale_fill_gradientn(colors = clrs, breaks = brks, labels = lbls, 
                                guide = bar, name = 'GSP (US$)') 
## STEP 4: PICK A PROJECTION, ADD INFORMATIVE TITLE, REPOSITION LEGENDS 
h3 <- h2 + coord_map() + 
  labs(title = 'Gross State Product (GSP) - 1985', 
       subtitle = 'United States of America') +
  theme(legend.position = c(.9,.1), 
        text = element_text(face = 'bold'), 
        plot.title = element_text(hjust = .5), 
        plot.subtitle = element_text(hjust = .5))
h3