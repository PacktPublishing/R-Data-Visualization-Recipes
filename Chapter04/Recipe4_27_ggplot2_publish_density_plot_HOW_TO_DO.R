hq_2 <- hq_1 + xlab('Petal Lenght (centimeters)') + ylab('Density') +
  scale_fill_manual(labels = c('iris setosa','iris versicolor','iris virginica'), 
                    values = c('coral','deepskyblue','springgreen'), name = 'Species of Iris') +
  scale_y_continuous(labels = sprintf('%1.1f', seq(0,3,.2)), 
                     breaks = seq(0,3,.2)) +
  scale_x_continuous(labels = sprintf('%1.0f', seq(0,8,1)), 
                     breaks = seq(0,8,1),
                     limits = c(0,8))


hq_3 <- hq_2 + theme(legend.justification = c('left', 'top'), legend.position = c(.65,.9), 
                     legend.background = element_rect(color = "black", size = 1, linetype = "solid"),
                     legend.text = element_text(size = 13),
                     legend.title = element_text(size = 13),
                     axis.text = element_text(size = 15),
                     axis.title = element_text(size = 15))
hq_3