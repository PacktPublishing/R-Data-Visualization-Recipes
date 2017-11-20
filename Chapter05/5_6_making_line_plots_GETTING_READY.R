if(!require(Zelig)){install.packages('Zelig')}
library(Zelig)
data(macro)
macro <- subset(macro, country %in% c('Finland','West Germany'))