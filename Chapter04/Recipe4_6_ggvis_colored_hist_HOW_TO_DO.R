## REQUIRE simulations data frame
simulations$Play <- 'Yes!'
simulations$Play[ simulations$x <= 75*1.2] <- 'No!'
library(ggvis)
ggv_game <- ggvis(data = simulations, x = ~x, fill = ~Play)
ggv_game %>% group_by(Play) %>% layer_histograms(width = 40, opacity := .4)