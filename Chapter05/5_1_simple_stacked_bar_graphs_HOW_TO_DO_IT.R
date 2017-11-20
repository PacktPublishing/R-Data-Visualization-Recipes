## DRAWING WITH ggplot2
# simple plot
library(ggplot2)                                                       # Loading ggplot2
gg2_sal <- ggplot( data = car::Salaries, aes(x = rank))                # mapping base aesthetic
gg2_sal + geom_bar(aes(fill = sex))                                    # ploting bars
# reversing categories
gg2_sal + geom_bar(aes(fill = sex),                                    # fill argument makes the stack happen
                    position = position_stack(reverse = T))            # reverse function does reverse the stacks


## DRAWING WITH ggvis
library(ggvis)                                                         # loading ggvis
ggv_sal <- ggvis(data = car::Salaries, x = ~rank)                      # mapping base aesthetics
ggv_sal %>% group_by(sex) %>% layer_bars(fill = ~sex)                  # plotting stacked bars


## DRAWIING WITH plotly
# split data and compute counts
library(car)                                                           # loading car package 
sal_male <- plyr::count(Salaries$rank[Salaries$sex == 'Male'])         # data set for male
sal_fem <- plyr::count(Salaries$rank[Salaries$sex == 'Female'])        # data set for female
# now to the plot
library(plotly)
pt_sal <- plot_ly(data = sal_male, x = ~x, y = ~freq ,type = 'bar', name = 'Male')  # plotting bars for males
pt_sal %>% add_trace(data = sal_fem, name = 'Female') %>% layout(barmode = 'stack') # plotting bars for females


