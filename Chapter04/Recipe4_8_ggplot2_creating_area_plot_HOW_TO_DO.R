library(ggplot2)
gg2_game <- ggplot(data = simulations, aes(x = x , fill = Play))
gg2_game + geom_area(stat = 'bin', color = 'black') +
  geom_vline( aes( xintercept = 75*1.2), linetype = 'dashed', size = 1)