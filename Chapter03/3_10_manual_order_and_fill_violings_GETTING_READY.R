## STEP 1: LOOK FOR gridExtra PACKAGE
if( !require(gridExtra)){ install.packages('gridExtra')}
if( !require(dplyr)){ install.packages('dplyr')}
## STEP 2: FORGE A FICTIONAL DATA FRAME
set.seed(10)
y1 <- rnorm(1000, mean = 2)
y2 <- rnorm(400, mean = -1.5)
y3 <- rpois(1000, lambda = 4) 
y4 <- rt(200, df = 500) + .75
y5 <- c(rnorm(500, mean = 1.5, sd = .7), rnorm(500, mean = -0.5, sd = .7))
y <- c(y1,y2,y3,y4,y5)
x <- c( rep('x1', length(y1)), rep('x2', length(y2)), rep('x3', length(y3)),
        rep('x4', length(y4)),rep('x5', length(y5)))
fiction <- data.frame( x = x, y = y)