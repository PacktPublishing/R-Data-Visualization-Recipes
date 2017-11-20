## STEP 1: LOAD ggplot2 AND HistData
library(ggplot2)
library(HistData)
## STEP 2: CRAFTING A BUBBLE PLOT
bubble <- ggplot(Armada, aes(x = sailors, y = soldiers)) + 
  geom_point(aes(colour = Armada, size = ships), alpha = .6) +
  scale_color_brewer(palette = 'Set3' ,guide = F) +
  scale_size_continuous(range = c(5,25)) + 
  geom_text(aes(label = Armada), size = 3) + 
  xlim(100,2000) + ggtitle('La Felicisima Armada')