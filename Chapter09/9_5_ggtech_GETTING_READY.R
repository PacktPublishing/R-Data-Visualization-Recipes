if(!require(extrafont)){ install.packages('extrafont')}
extrafont::loadfonts()
if(!require(devtools)){ install.packages('devtools')}
if(!require(ggtech)){ 
  library(devtools)
  install_github("ricardo-bion/ggtech", dependencies=TRUE)}