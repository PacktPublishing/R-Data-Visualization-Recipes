library(ggplot2)
ggplot(data = cars, aes(x = speed, y = dist)) +
  stat_bin_2d(aes(fill = ..count..), 
              binwidth = c(5,15),
              colour = 'green',
              size = 1.05) +
  stat_bin_2d(geom = 'text', aes(label = ..count..), 
              binwidth = c(5,15), colour = 'white',
              size = 16)
  