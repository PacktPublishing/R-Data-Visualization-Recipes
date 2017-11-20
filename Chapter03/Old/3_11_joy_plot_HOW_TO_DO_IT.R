library(ggplot2); library(ggjoy)
ggplot(data = fiction %>% mutate(x = reorder(x, -y, median)), 
       aes(x = y, y = x)) +
  geom_joy(scale = .8, fill = 'steelblue1')
