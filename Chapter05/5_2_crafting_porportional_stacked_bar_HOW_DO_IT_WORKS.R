library(ggplot2)                                          # Loading package
gg2_sal <- ggplot( data = car::Salaries, aes(x = rank))   # Setting data and some aesthethics
gg2_sal + geom_bar(position = 'fill',                     # position = 'fill' sets bars proportional
                   aes(fill = sex)) +                     # fill is the last aesthethic to set up
  scale_y_continuous(labels = scales::percent_format())   # using scales to set percentage format easily