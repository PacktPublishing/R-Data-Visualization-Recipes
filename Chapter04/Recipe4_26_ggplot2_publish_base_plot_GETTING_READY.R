library(ggplot2)
hq_1 <- ggplot(data = iris, aes( x = Petal.Length, fill = Species)) +
  geom_density(alpha = .5, size = 1) + theme_classic()