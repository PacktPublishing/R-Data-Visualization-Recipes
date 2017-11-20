library(ggvis)
simulations %>% group_by(Play) %>% compute_bin(~x) %>% 
  ggvis(~x_, ~count_, fill = ~Play) %>% layer_ribbons(y2 = ~0)
