## STEP 1: QUANTILE REGRESSION LINES WITH ggplot2
library(ggplot2)
ggplot( diamonds, aes( carat, price)) + 
  geom_point(shape = '.') +
  geom_quantile(quantiles = c(.2, .4, .6, .8), 
                colour = 'blue', size = 1) +
  ylim(0, max(diamonds$price))
## STEP 2: FIT QUANTILES
library(quantreg)
q20 <- fitted(rq( price ~ carat, data = diamonds, tau = .2))
q40 <- fitted(rq( price ~ carat, data = diamonds, tau = .4))
q60 <- fitted(rq( price ~ carat, data = diamonds, tau = .6))
q80 <- fitted(rq( price ~ carat, data = diamonds, tau = .8))
## STEP 3: PLOTTING THEM USING plotly
library(plotly)
c = I('black')
plot_ly(ggplot2::diamonds, x = ~carat, y = ~price, type = 'scatter',
        mode = 'markers', marker = list(size = .8)) %>%
  add_lines(y = ~q20, color = c, marker = NULL) %>%
  add_lines(y = ~q40, color = c, marker = NULL) %>%
  add_lines(y = ~q60, color = c, marker = NULL) %>%
  add_lines(y = ~q80, color = c, marker = NULL) %>%
  layout(yaxis = list(range = c(0,20000)), showlegend = F)