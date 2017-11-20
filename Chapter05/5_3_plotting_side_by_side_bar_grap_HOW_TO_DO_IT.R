## SIDE-BY-SIDE BAR PLOT USING ggplot2

# Factoring sex
sal <- car::Salaries                                        # Stoirng car::Salaries into global environment
sal$sex <- factor(sal$sex, levels = c('Male','Female'))     # re-sorting levels from sex factor
# Plotting
library(ggplot2)                                            # Loading ggplot2
gg2_sal <- ggplot( data = sal, aes( x = rank))              # mapping base coordinates
gg2_sal + geom_bar(position = 'dodge', aes( fill = sex))    # plotting bars side-by-side


## SIDE-BY-SIDE BAR PLOT USING plotly

# Spliting data frame and counting base
sal_male <- plyr::count(car::Salaries$rank[car::Salaries$sex == 'Male'])               # Male data frame
sal_fem <- plyr::count(car::Salaries$rank[car::Salaries$sex == 'Female'])              # Female data frame
# Plotting
library(plotly)                                                                        # Loading plotly
pt_sal <- plot_ly(data = sal_male, x = ~x, y = ~freq ,type = 'bar', name = 'Male')     # Crafting bars for male variable
pt_sal %>% add_trace(data = sal_fem, name = 'Female')                                  # Crafting bars for fem. variable