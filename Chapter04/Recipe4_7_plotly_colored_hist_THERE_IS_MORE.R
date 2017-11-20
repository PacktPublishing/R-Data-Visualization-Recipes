## REQUIRE simulations data frame
simulations$Play <- 'Yes!'
simulations$Play[ simulations$x <= 75*1.2] <- 'No!'
library(plotly)
pl_game <- plot_ly(simulations, x = ~x, type = 'histogram', color = ~Play, 
                   autobinx = F, xbins = list(size = 40, start = -2000, end = 2000))
pl_game