## STEP 1: DRAW BASE CONTOUR PLOT
library(ggplot2)
h1 <- ggplot(cars, aes(x = speed, y = dist)) +
  stat_density_2d(aes(colour = ..level..), size = 1.2) +
  theme_minimal()
## STEP 2: PICK A BETTER COLOR SCALE
h2 <- h1 + scale_colour_distiller(direction = 1, name = 'density', 
                                  breaks = seq(0.0002,0.0014,0.0002), 
                                  labels = format(seq(0.0002,0.0014,0.0002),
                                                  scientific = F))
## STEP 3: REWRITE AXES LABELS
h3 <- h2 + xlab('speed (mph)') + ylab('distance (ft)')
## STEP 4: GROW AXES BIGGER
h4 <- h3 + scale_y_continuous(breaks = seq(0,130,10), 
                         labels = seq(0,130,10),
                         minor_breaks = 0) +
  scale_x_continuous(breaks = seq(4,26,2),
                     labels = seq(4,26,2),
                     minor_breaks = 0)
## STEP 5: MOVE LEGENDS AND RESIZE TEXTS IN GENERAL
h5 <- h4 +  theme(legend.position = c(.2,.75),
  legend.background = element_rect(color = "black", 
                                   size = .2, 
                                   linetype = "solid"),
        legend.text = element_text(size = 13),
        legend.title = element_text(size = 14),
        axis.text = element_text(size = 15),
        axis.title = element_text(size = 18))
## STEP 6: AVOID CONFUSING LEGENDS 
h5 + guides(colour = guide_legend(title.vjust = .1))
