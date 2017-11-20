## STEP 1: FiveThirTyEigth THEME
library(ggthemes)
bubble +
  theme_fivethirtyeight()
## STEP 2> Stata THEME
bubble + theme_stata() + 
  scale_colour_stata(guide = F)
## STEP 3: Pander THEME
bubble + theme_pander() + 
  scale_color_pander(guide = F)