library(ggplot2)
sca5 <- ggplot(diamods, aes( x = carat, y = price))
sca5 + geom_hex()