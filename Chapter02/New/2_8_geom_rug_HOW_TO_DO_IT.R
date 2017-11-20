## STEP 1: GROWING RUGS WITH ggplot2
set.seed(50) ; library(ggplot2)
rug <- ggplot(iris,
              aes(x = Petal.Length, 
                  y = Petal.Width, 
                  colour = Species))
rug <- rug +
  geom_jitter(aes( shape = Species), alpha = .4) +
  geom_rug(position = 'jitter' , show.legend = F, alpha = .4)
rug
## STEP 2: COERCING INTO plotly
plotly::ggplotly(rug)