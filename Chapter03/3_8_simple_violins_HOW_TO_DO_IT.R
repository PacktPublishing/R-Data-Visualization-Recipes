## STEP 1: DRAW BASIC AESTHETICS MAPPING
library(ggplot2)
base <-ggplot(car::Salaries, 
              aes(x = rank, y = salary))
## STEP 2: DRAW A SIMPLE VIOLIN PLOT
base + geom_violin()
## STEP 3: ADD A BOXP TO IT
base + geom_violin(fill = 'steelblue1') + 
  geom_boxplot(outlier.shape = NA, width = .1)