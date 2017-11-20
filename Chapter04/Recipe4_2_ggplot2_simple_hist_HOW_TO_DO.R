library(ggplot2) ; library(HistData)
gg2_Mich <- ggplot(Michelson, aes(x = velocity + 299000))
gg2_Mich + geom_histogram()