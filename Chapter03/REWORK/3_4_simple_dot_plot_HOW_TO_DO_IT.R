## STEP 1: DRAW A SIMPLE BOX PLOT
library(ggplot2)
box1 <- ggplot(car::Salaries, aes( x = rank, y = salary))
box1 + geom_dotplot(binaxis = 'y',
                    dotsize = .3, stackdir = 'center')
## STEP 2: COLOR IT USING fill ARGUMENT
box1 + geom_dotplot(binaxis = 'y', dotsize = .3, 
                    stackdir = 'center', aes(fill = sex))