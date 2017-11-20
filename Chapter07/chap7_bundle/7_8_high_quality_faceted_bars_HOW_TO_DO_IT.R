## STEP 1: DRAW THE BASE BAR PLOT
library(ggplot2)
base <- ggplot(data = as.data.frame(Titanic), 
               aes(x = Survived)) + 
  geom_bar(aes(fill = Survived, weight = Freq), 
           colour = 'black', width = 1) + 
  facet_grid(Sex ~ Age) + theme_bw()
## STEP 2: CORRECT LABELS 
h1 <- base + ylab('persons ( un.)') + 
  xlab('')
## STEP 3: GROW LABELS AND ADJUST BIN COLORS
h2 <- h1 + 
  scale_y_continuous(labels = seq(0,16000,200), 
                     breaks = seq(0,16000,200),
                     minor_breaks = 0) +
  scale_fill_manual(values = c('No' = 'red',
                               'Yes' = 'seagreen'),
                    name = 'Survived :')
## STEP 4: ADJUST THEME 
h3 <- h2 + theme(text = element_text(size = 14),
                 axis.text = element_text(size = 14),
                 legend.text = element_text(size = 13),
                 strip.text = element_text(size = 13),
                 legend.position = c(.5,-.1), legend.direction = 'horizontal',
                 strip.background = element_rect(fill = 'lightyellow'),
                 plot.margin = unit(c(.2,.2,1,.2),'cm'))
h3
