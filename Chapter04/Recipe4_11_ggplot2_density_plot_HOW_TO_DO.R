library(ggplot2)
gg2_petal <- ggplot(data = iris, aes( x = Petal.Length, fill = Species))
gg2_petal + geom_density(alpha = .5) + xlim(.75,7.5)