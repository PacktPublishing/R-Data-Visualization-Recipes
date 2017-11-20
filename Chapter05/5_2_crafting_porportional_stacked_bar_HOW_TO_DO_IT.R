## PROPORTIONAL STACKED BAR WITH ggplot2

library(ggplot2)                                          # Loading package
gg2_sal <- ggplot( data = car::Salaries, aes(x = rank))   # Setting data and some aesthethics
gg2_sal + geom_bar(position = 'fill',                     # position = 'fill' sets bars proportional
                   aes(fill = sex))                       # fill is the last aesthethic to set up


## PROPORTIONAL STACKED BAR WITH ggvis

library(ggvis);library(plyr)                                    # Loading ggvis
car::Salaries %>% group_by(sex) %>% compute_count(~rank) %>%    # computing counts
  plyr::ddply(.(x_),transform,prop=count_/sum(count_)) %>%      # calculating proportions
  ggvis(x = ~x_, y = ~prop) %>% layer_bars(fill = ~sex)         # Plotting stacked bars


## PROPORTIONAL STACKED BAR WITH plotly

# computing datasets using ggvis and plyr
sal_prop <- car::Salaries %>% group_by(sex) %>% compute_count(~rank) %>%        #computing counts             
  plyr::ddply(.(x_),transform,prop=count_/sum(count_))                          # creating proportions
sal_prop_m <- sal_prop[sal_prop$sex == 'Male',]                                 # separeted data set for male porportions
sal_prop_f <- sal_prop[sal_prop$sex == 'Female',]                               # separated data set for female porportions
# ploting
library(plotly)
plot_ly(data = sal_prop_m, x = ~x_, y = ~prop, type = 'bar', name = 'Male') %>% # asking for bar for males
  add_trace(data = sal_prop_f, name = 'Female') %>%                             # demanding bars for females
  layout(barmode = 'stack')                                                     # asking for them to be stacked
