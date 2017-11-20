library(ggplot2)
core_plot <- ggplot( data = iris, aes(x = Petal.Length, y = Petal.Width, 
                                      colour = Species, shape = Species, fill = Species)) +
  geom_point(alpha = .5, stroke = 1.5) +
  geom_smooth(method = 'lm', se = F, show.legend = F) +
  theme_minimal()
core_plot 