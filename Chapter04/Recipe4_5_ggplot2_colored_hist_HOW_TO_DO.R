## REQUIRE simulations DATA FRAME FROM RECIPE 3.4
simulations$Play <- 'Yes!'
simulations$Play[ simulations$x <= 75*1.2] <- 'No!'
gg2_game <- ggplot(simulations, aes(x = x, fill = Play))
gg2_game + geom_histogram(binwidth = 40, alpha = .5, colour = 'black') +
  geom_vline(aes(xintercept = 75*1.2), linetype = 'dashed', size = 1)