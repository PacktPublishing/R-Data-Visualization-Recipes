## STEP 1: LOAD ggplot2 AND HistData
library(ggplot2)
library(HistData)
bubble <- ggplot(Armada, aes(x = sailors, y = soldiers)) + 
  geom_point(aes(colour = Armada, size = ships), alpha = .6) +
  scale_color_brewer(palette = 'Set3' ,guide = F) +
  scale_size_continuous(range = c(5,25)) + 
  xlim(100,2000) + ggtitle('La Felicisima Armada')
## STEP 2: PLOT USING ggrepel
library(ggrepel)
bubble + 
  geom_text_repel(aes(label = Armada), 
                  point.padding = 3) + 
  theme_classic()
