## STEP 1: STORE DATA SETS INTO DIFFERENT OBJECTS
library(car)
dt1 <- Migration[1:10,]
dt2 <- Salaries
## STEP 2: CALL geom_lollipop() TO DRAW A LOLLIPOP PLOT
library(ggalt)
ggplot(data = dt1, 
       aes(y=reorder(source, pops66), 
           x=pops66)) +
  geom_lollipop(point.colour = 'navyblue',
                point.size = 4,
                horizontal = T) +
  theme_classic()
## STEP 3: USE geom_bkde() TO DRAW ALTERNATIVE 1 DIMENSION DENSITY PLOT
ggplot(data = dt2, 
       aes(x = salary, 
           fill = discipline)) + 
  geom_bkde(alpha = .2) + theme_classic()
## STEP 4: USE geom_bkde2D() TO DRAW ALTERNATIVE 2 DIMENSIONS DENSITY PLOT
ggplot(data = dt2, 
       aes(x = yrs.since.phd,
           y = yrs.service)) +
  stat_bkde2d(aes(fill = ..level..),
              geom = 'polygon')