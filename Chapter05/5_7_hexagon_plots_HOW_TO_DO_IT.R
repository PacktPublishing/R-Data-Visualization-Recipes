## STEP 1: DRAW AND STORE A HEXAGON PLOT WITH ggplot2
library(ggplot2)
ggplot(NOxEmissions, aes(x = LNOx, y = sqrtWS)) + geom_hex()
## STEP 2: COERCE IT WITH plotly
plotly::ggplotly()