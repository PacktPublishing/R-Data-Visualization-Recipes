## STEP 1: CALL scale_fill_* TO CHANGE COLORS
ggplot(data = NOxEmissions, aes( x  = LNOx, y = sqrtWS)) + 
  geom_hex(binwidth = c(.2,.1)) +  
  scale_fill_gradientn(colours = rainbow(7), breaks = seq(0,80,10))
## STEP 2: COERCE WITH plotly
plotly::ggplotly()