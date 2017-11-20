palette <- data.frame(x = rep(seq(1,5,1),5))
palette$y <- c(rep(5,5),rep(4,5),rep(3,5),rep(2,5),rep(1,5))
library(ggplot2)
ggplot(data = palette,aes(x,y)) +
  geom_point(shape = seq(1,25,1), size = 10, fill ='white') +
  scale_size(range = c(2, 10)) +
  geom_text(nudge_y = .3, label = seq(1,25,1))