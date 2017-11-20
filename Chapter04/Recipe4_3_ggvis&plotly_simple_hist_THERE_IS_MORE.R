library(HistData)
library(ggvis)
ggv_Mich <- ggvis(Michelson, x = ~velocity + 299000)
ggv_Mich %>% layer_histograms()
library(plotly)
pl_Mich <- plot_ly(Michelson, x = ~velocity + 299000, type = 'histogram')
pl_Mich