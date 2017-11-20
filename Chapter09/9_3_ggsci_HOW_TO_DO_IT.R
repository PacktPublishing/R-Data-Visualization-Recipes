## STEP 1: USE USCS Genome Browser COLOR SCALE
library(ggsci)
bubble + 
  theme_bw() + 
  scale_color_ucscgb(guide = F)
## STEP 1: USE RIcky and Morty COLOR SCALE
bubble +
  theme_bw() +
  scale_color_rickandmorty(guide = F)