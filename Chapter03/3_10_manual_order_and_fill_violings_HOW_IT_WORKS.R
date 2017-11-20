## STEP 1: CREATE A SIMPLE VIOLIN PLOT
library(ggplot2)
p1 <- ggplot(data = fiction, aes(x = x, y = y)) + 
  geom_violin() + 
  theme_minimal() +
  ggtitle('Not sorted/colored')
## STEP 2: CREATE COLOR VECTOR AND REORDER DATA SET
col <- c('darksalmon',rep('gray',3),'royalblue3')
library(dplyr)
fiction2 <- fiction %>% mutate(x = reorder(x, y, median))
## STEP 3: DRAW A COLORED VIOLIN PLOT WITH BINS SORTED
p2 <- ggplot(data = fiction2,
             aes(x = x, y = y)) + 
  geom_violin(aes(fill = x), show.legend = F) +
  scale_fill_manual(values = col) +
  theme_minimal() +
  ggtitle('Sorted/colored')
## STEP 4: PLOT BOTH p1 AND p2 SIDE TO SIDE
gridExtra::grid.arrange(p1,p2, ncol = 2)