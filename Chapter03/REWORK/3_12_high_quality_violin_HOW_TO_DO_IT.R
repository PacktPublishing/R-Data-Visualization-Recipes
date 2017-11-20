## STEP 1: DRAWING BASE PLOT
library(ggplot2) ; library(car)
hq_1 <- ggplot(Salaries, aes(x = rank, y = salary)) +
  geom_violin( fill = 'wheat2', colour = 'coral1',
               size = 1.2) +
  stat_summary( geom = 'errorbar', fun.y = mean,
                aes(ymin = ..y.., ymax = ..y.. , colour = sex), 
                width = .7, size = 1.5) +
  theme_minimal()
## STEP 2: CORRECT AXES TITLES
hq_2 <- hq_1 + xlab('') +
  ylab('9 Months Salary (US$ 1,000.00)')
## STEP 3: GROW MORE BREAKS AND REWORK AXES LABELS
hq_3 <- hq_2 +
  scale_y_continuous(breaks = seq(50000,225000,25000),
                     labels = seq(50,225,25),
                     minor_breaks = 0) +
  scale_x_discrete(labels = c('Assistant\nProfessor',
                              'Associated\nProfessor',
                              'Professor'))
## STEP 4: REWORK BAR COLORS
hq_4 <- hq_3 +
  scale_colour_manual(
    values = c('Female' = 'red', 
               'Male' = 'navyblue'),
    name = 'Mean Salary')
## STEP 5: RESIZE TEXTS AND REPOSITION LEGENDS
hq_5 <- hq_4 +
  theme(legend.justification = c('left', 'top'), 
        legend.position = c(.05,.95),
        legend.background = element_rect(color = "black", size = 1, 
                                         linetype = "solid"),
        legend.text = element_text(size = 14, face = 'bold'),
        legend.title = element_text(size = 14, face = 'bold'),
        axis.text = element_text(size = 15, face = 'bold'),
        axis.title = element_text(size = 13, face = 'bold'))
hq_5