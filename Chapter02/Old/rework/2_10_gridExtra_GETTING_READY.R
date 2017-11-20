## INSTALL gridExtra
if( !require(gridExtra)){ install.packages('gridExtra')}
## CREATE A LEGEND EXTRACTOR FUNCTION
g_legend <- function(p){
 tmp <- ggplot_gtable(ggplot_build(p))
 leg <- which(sapply(tmp$grobs, function(x) x$name) == 'guide-box')
 legend <- tmp$grobs[[leg]]
 return(legend)}