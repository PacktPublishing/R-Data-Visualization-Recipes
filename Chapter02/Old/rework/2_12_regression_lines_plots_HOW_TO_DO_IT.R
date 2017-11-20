## STEP 1: DRAW REGRESSIONS USING ggplot2
library(ggplot2)
scatter <- ggplot(data = iris, 
                  aes(x = Petal.Length, y = Petal.Width)) + 
  geom_point(alpha = .5, aes(colour = Species, shape = Species))
scatter + 
  geom_smooth(method = 'lm', se = F, show.legend = F, aes(group = Species))
## STEP 2: REGRESSION LINES USING ggvis
library(ggvis)
ggvis( iris, x = ~Petal.Length, y = ~Petal.Width, opacity := .5) %>%
  layer_points( shape = ~Species, fill = ~Species) %>% group_by(Species) %>%
  layer_model_predictions( model = 'lm', stroke = ~Species)
## STEP 3: REGRESSION LINES USING plotly
library(plotly)
plot_ly(iris, x = ~Petal.Length, y = ~Petal.Width, 
        showlegend = F, alpha = .5, color = ~Species) %>% 
  add_markers(showlegend = T, symbol = ~Species) %>%
  add_lines(data = iris %>% filter(Species == 'setosa'), 
            y = ~fitted(lm( Petal.Width ~ Petal.Length))) %>%
  add_lines(data = iris %>% filter(Species == 'versicolor'),
            y = ~fitted(lm( Petal.Width ~ Petal.Length))) %>%
  add_lines(data = iris %>% filter(Species == 'virginica'),
            y = ~fitted(lm( Petal.Width ~ Petal.Length)))