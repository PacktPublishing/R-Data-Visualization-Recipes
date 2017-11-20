library(plotly) ; library(ggvis)
simulations %>% group_by(Play) %>% compute_bin(~x) %>% 
  plot_ly(x = ~x_, y = ~count_, type = 'scatter', mode = 'lines', fill = 'tozeroy', color = ~Play) 
