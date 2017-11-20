## STEP 1: CREATE MAIN PLOT AND EXTRACT LEGEND
library(ggplot2)
main <- ggplot(iris, aes(x = Petal.Length, y = Petal.Width)) + 
  geom_point(alpha = .5 , aes(shape = Species, colour = Species))
leg <- g_legend(main)
## STEP 2: CREAT TOP MARGINAL HISTOGRAM
top <- ggplot(iris) + 
  geom_histogram(alpha = .3, aes( x = Petal.Length, fill = Species)) +
  guides(fill = FALSE) + xlab('')
## STEP 3: CREATE LEFT MARGINAL HISTOGRAM
right <- ggplot(iris) + 
  geom_histogram(alpha = .3, aes( x = Petal.Width, fill = Species)) +
  coord_flip() + guides(fill = FALSE) + xlab('')
## STEP 4: JOIN THEM ALL USING grid.arrange()
library(gridExtra)
grid.arrange(top, leg, main + theme(legend.position = 'none'), 
             right, ncol=2, nrow=2, widths=c(4, 1), heights=c(1, 4))