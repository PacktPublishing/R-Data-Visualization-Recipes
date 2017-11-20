library(plotly)
marg_plot <- subplot(
  plot_ly(data = iris, x = ~Petal.Length, type = 'histogram',
          color = ~Species, alpha =.5),
  plotly_empty(),
  plot_ly(data = iris, x = ~Petal.Length, y = ~Petal.Width, type = 'scatter',
          mode = 'markers', symbol = ~Species, color = ~Species, alpha = .5),
  plot_ly(data = iris, y = ~Petal.Width, type = 'histogram', 
          color = ~Species, alpha = .5),
  nrows = 2, heights = c(.2, .8), widths = c(.8,.2), margin = 0,
  shareX = TRUE, shareY = TRUE
)
layout(marg_plot, showlegend = F, barmode = 'overlay')