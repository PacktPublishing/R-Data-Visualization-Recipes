## ggplot2

library(ggplot2)
ggplot(data = macro, aes(x = year, y = trade, colour = country)) + 
  geom_line()


library(ggvis)
ggvis(data = macro %>% droplevels(), x = ~year, y = ~trade, stroke = ~country) %>%
  layer_lines()


library(plotly)
plot_ly(data = macro[macro$country == 'Finland',], x = ~year, y = ~trade, type = 'scatter', mode = 'lines', name = 'Finland') %>%
  add_trace(data = macro[macro$country == 'West Germany',], name = 'West Germany')


