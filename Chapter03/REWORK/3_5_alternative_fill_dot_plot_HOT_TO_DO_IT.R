## STEP 1: PICK COLORS TO USE
color1 <- 'deepskyblue2'
color2 <- 'darkred'
## STEP 2: CREATE A VECTOR OF COLORS
library(car)
color_fill <- ifelse(Salaries$sex == 'Male',color1,color2)
color_fill <- color_fill[with(Salaries,order(rank,salary))]
## STEP 3: FIT color_fill TO THE fill PARAMETER
library(ggplot2)
dot1 <- ggplot(Salaries, aes( x = rank, y = salary))
dot1 + geom_dotplot(binaxis = 'y', dotsize = .32, 
                    stackdir = 'center', colour = color_fill, 
                    fill = color_fill)