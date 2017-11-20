## STEP 1: INTUITIVE AND COMPLETE AXES LABELS
h1 <- core_plot + xlab('petal length (centimeters)') + 
  ylab(' petal width (centimeters)')
## STEP 2: TRY BETTER COLORS AND SHAPES
h2 <- h1 +
  scale_colour_manual(values = c('setosa' = 'magenta4', 
                                 'versicolor' = 'darkorange4',
                                 'virginica' = 'steelblue4'), 
                      name = 'Iris species') +
  scale_fill_manual(values = c('setosa' = 'magenta', 
                               'versicolor' = 'darkorange',
                               'virginica' = 'steelblue'), 
                    name = 'Iris species') +
  scale_shape_manual(values = c('setosa' = 21, 
                                'versicolor' = 22, 
                                'virginica' = 24),
                     name = 'Iris species')
## STEP 3: GROW AXES
h3 <- h2 + 
  scale_x_continuous(labels = 1:7, breaks = 1:7, minor_breaks = 0) +
  scale_y_continuous(labels = sprintf('%.2f',seq(0,2.5,.25)), 
                     breaks = seq(0,2.5,.25),
                     minor_breaks = 0)
## STEO 4: RESIZE TEXTS AND RELOCATE LEGENDS
h4 <- h3 +
  theme(legend.justification = c('left', 'top'), 
        legend.position = c(.65,.25),
        legend.background = element_rect(color = "black", 
                                         size = 1, 
                                         linetype = "solid"),
        legend.text = element_text(size = 13), 
        legend.title = element_text(size = 13),
        axis.text = element_text(size = 15), 
        axis.title = element_text(size = 15))
h4
