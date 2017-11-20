## STEP 1: DRAW BASIC PLOT WITH ggplot2
library(ggplot2) 
h1 <- ggplot( data = car::Salaries, aes(x = rank)) + 
      geom_bar(position = 'fill', aes(fill = sex)) +                      
      theme_minimal()
## STEP 2: CHANGE LABELS  
h2 <- h1 + xlab('') + ylab('U.S. college composition of academics (in percent)') + 
      scale_y_continuous(labels = sprintf('%.1f%%',seq(0,1,.125)*100), breaks = seq(0,1,.125))
## STEP 3: CORRECT NAMES AND USE A DIFFERENT COLOR SCALE
h3 <- h2 + scale_fill_manual(labels = c('Female','Male'), 
                        values = c('coral','deepskyblue'), name = 'Sex') +
      scale_x_discrete(labels = c('Assistant\nProfessor', 'Associated\nProfessor', 'Professor'))
## STEP 4: RESIZE TEXTS AND REPOSITION LEGENDS
h4 <- h3 + theme(legend.background = element_rect(color = "black", size = 1, linetype = "solid"),
                 legend.text = element_text(size = 13),
                 legend.title = element_text(size = 13),
                 axis.text = element_text(size = 13.5),
                 axis.title = element_text(size = 15))
h4